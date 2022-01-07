
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_value ;
typedef int mrb_state ;
struct TYPE_4__ {int* beg; int* end; int const num_regs; } ;
typedef int OnigUChar ;
typedef TYPE_1__ OnigRegion ;
typedef int OnigRegex ;


 int E_INDEX_ERROR ;
 int E_REGEXP_ERROR ;
 int RSTRING_LEN (int ) ;
 char const* RSTRING_PTR (int ) ;
 int isdigit (char const) ;
 int mrb_assert (int) ;
 int mrb_hash_get (int *,int ,int ) ;
 scalar_t__ mrb_hash_p (int ) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_str_cat (int *,int ,char const*,int) ;
 int mrb_str_cat_str (int *,int ,int ) ;
 int mrb_str_substr (int *,int ,int,int) ;
 int mrb_str_to_str (int *,int ) ;
 int mrb_string_p (int ) ;
 int onig_name_to_backref_number (int ,int const*,int const*,TYPE_1__*) ;
 int str_substr (int *,int ,int,int) ;

__attribute__((used)) static void
append_replace_str(mrb_state* mrb, mrb_value result, mrb_value replace,
                   mrb_value src, OnigRegex reg, OnigRegion* match)
{
  if (mrb_hash_p(replace)) {
    mrb_value v = mrb_hash_get(mrb, replace, mrb_str_substr(mrb, src, match->beg[0], match->end[0] - match->beg[0]));
    v = mrb_str_to_str(mrb, v);
    mrb_str_cat_str(mrb, result, v);
    return;
  }

  mrb_assert(mrb_string_p(replace));
  char const* ch;
  char const* const end = RSTRING_PTR(replace) + RSTRING_LEN(replace);
  for(ch = RSTRING_PTR(replace); ch < end; ++ch) {
    if (*ch != '\\' || (ch + 1) >= end) {
      mrb_str_cat(mrb, result, ch, 1);
      continue;
    }

    switch(*(++ch)) {
      case 'k': {
        if ((ch + 2) >= end || ch[1] != '<') { goto replace_expr_error; }
        char const* name_beg = ch += 2;
        while (*ch != '>') { if(++ch == end) { goto replace_expr_error; } }
        mrb_assert(ch < end);
        mrb_assert(*ch == '>');
        int const idx = onig_name_to_backref_number(
            reg, (OnigUChar const*)name_beg, (OnigUChar const*)ch, match);
        if (idx < 0) {
          mrb_raisef(mrb, E_INDEX_ERROR, "undefined group name reference: %S",
                     str_substr(mrb, replace, name_beg - RSTRING_PTR(replace), ch - name_beg));
        }
        mrb_str_cat(mrb, result, RSTRING_PTR(src) + match->beg[idx], match->end[idx] - match->beg[idx]);
      } break;

      case '\\':
        mrb_str_cat(mrb, result, ch, 1);
        break;

      default:
        if (isdigit(*ch)) {
          int const idx = *ch - '0';
          if (idx < match->num_regs) {
            mrb_str_cat(mrb, result, RSTRING_PTR(src) + match->beg[idx], match->end[idx] - match->beg[idx]);
          }
        } else {
          char const str[] = { '\\', *ch };
          mrb_str_cat(mrb, result, str, 2);
        }
        break;
    }
  }

  if(ch == end) { return; }

replace_expr_error:
  mrb_raisef(mrb, E_REGEXP_ERROR, "invalid replace expression: %S", replace);
}
