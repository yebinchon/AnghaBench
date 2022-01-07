
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RString {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 scalar_t__ ISALNUM (unsigned char) ;
 scalar_t__ RSTRING_LEN (int ) ;
 scalar_t__ RSTRING_PTR (int ) ;
 int memcpy (scalar_t__,scalar_t__,int) ;
 int mrb_str_cat (int *,int ,char*,int) ;
 int mrb_str_cat_cstr (int *,int ,char const*) ;
 int mrb_str_cat_lit (int *,int ,char*) ;
 int mrb_str_modify (int *,struct RString*) ;
 int mrb_str_new (int *,char*,int) ;
 int mrb_str_new_lit (int *,char*) ;
 struct RString* mrb_str_ptr (int ) ;
 int mrb_str_resize (int *,int ,int) ;

__attribute__((used)) static mrb_value
mrb_str_succ_bang(mrb_state *mrb, mrb_value self)
{
  mrb_value result;
  unsigned char *p, *e, *b, *t;
  const char *prepend;
  struct RString *s = mrb_str_ptr(self);
  mrb_int l;

  if (RSTRING_LEN(self) == 0)
    return self;

  mrb_str_modify(mrb, s);
  l = RSTRING_LEN(self);
  b = p = (unsigned char*) RSTRING_PTR(self);
  t = e = p + l;
  *(e--) = 0;


  while (e >= b) {
    if (ISALNUM(*e))
      break;
    e--;
  }
  if (e < b) {
    e = p + l - 1;
    result = mrb_str_new_lit(mrb, "");
  }
  else {

    b = e;
    while (b > p) {
      if (!ISALNUM(*b) || (ISALNUM(*b) && *b != '9' && *b != 'z' && *b != 'Z'))
        break;
      b--;
    }
    if (!ISALNUM(*b))
      b++;
    result = mrb_str_new(mrb, (char*) p, b - p);
  }

  while (e >= b) {
    if (!ISALNUM(*e)) {
      if (*e == 0xff) {
        mrb_str_cat_lit(mrb, result, "\x01");
        (*e) = 0;
      }
      else
        (*e)++;
      break;
    }
    prepend = ((void*)0);
    if (*e == '9') {
      if (e == b) prepend = "1";
      *e = '0';
    }
    else if (*e == 'z') {
      if (e == b) prepend = "a";
      *e = 'a';
    }
    else if (*e == 'Z') {
      if (e == b) prepend = "A";
      *e = 'A';
    }
    else {
      (*e)++;
      break;
    }
    if (prepend) mrb_str_cat_cstr(mrb, result, prepend);
    e--;
  }
  result = mrb_str_cat(mrb, result, (char*) b, t - b);
  l = RSTRING_LEN(result);
  mrb_str_resize(mrb, self, l);
  memcpy(RSTRING_PTR(self), RSTRING_PTR(result), l);
  return self;
}
