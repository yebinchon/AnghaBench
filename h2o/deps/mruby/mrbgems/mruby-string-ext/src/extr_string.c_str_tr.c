
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr_pattern {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;
typedef scalar_t__ mrb_bool ;


 int E_ARGUMENT_ERROR ;
 scalar_t__ FALSE ;
 int RSTRING (int ) ;
 size_t RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 int RSTR_SET_LEN (int ,size_t) ;
 struct tr_pattern STATIC_TR_PATTERN ;
 scalar_t__ TRUE ;
 int mrb_fixnum_value (size_t) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_modify (int *,int ) ;
 int mrb_str_ptr (int ) ;
 size_t tr_find_character (struct tr_pattern*,char*,char) ;
 int tr_free_pattern (int *,struct tr_pattern*) ;
 size_t tr_get_character (struct tr_pattern*,char*,size_t) ;
 struct tr_pattern* tr_parse_pattern (int *,struct tr_pattern*,int ,scalar_t__) ;

__attribute__((used)) static mrb_bool
str_tr(mrb_state *mrb, mrb_value str, mrb_value p1, mrb_value p2, mrb_bool squeeze)
{
  struct tr_pattern pat = STATIC_TR_PATTERN;
  struct tr_pattern rep_storage = STATIC_TR_PATTERN;
  char *s;
  mrb_int len;
  mrb_int i;
  mrb_int j;
  mrb_bool flag_changed = FALSE;
  mrb_int lastch = -1;
  struct tr_pattern *rep;

  mrb_str_modify(mrb, mrb_str_ptr(str));
  tr_parse_pattern(mrb, &pat, p1, TRUE);
  rep = tr_parse_pattern(mrb, &rep_storage, p2, FALSE);
  s = RSTRING_PTR(str);
  len = RSTRING_LEN(str);

  for (i=j=0; i<len; i++,j++) {
    mrb_int n = tr_find_character(&pat, RSTRING_PTR(p1), s[i]);

    if (i>j) s[j] = s[i];
    if (n >= 0) {
      flag_changed = TRUE;
      if (rep == ((void*)0)) {
 j--;
      }
      else {
        mrb_int c = tr_get_character(rep, RSTRING_PTR(p2), n);

        if (c < 0 || (squeeze && c == lastch)) {
          j--;
          continue;
        }
        if (c > 0x80) {
          mrb_raisef(mrb, E_ARGUMENT_ERROR, "character (%S) out of range",
                     mrb_fixnum_value((mrb_int)c));
        }
 lastch = c;
 s[i] = (char)c;
      }
    }
  }

  tr_free_pattern(mrb, &pat);
  tr_free_pattern(mrb, rep);

  if (flag_changed) {
    RSTR_SET_LEN(RSTRING(str), j);
    RSTRING_PTR(str)[j] = 0;
  }
  return flag_changed;
}
