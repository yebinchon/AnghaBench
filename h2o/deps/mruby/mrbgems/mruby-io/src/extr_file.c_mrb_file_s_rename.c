
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ CHMOD (char*,int) ;
 scalar_t__ UNLINK (char*) ;
 int mrb_fixnum_value (int ) ;
 int mrb_format (int *,char*,int ,int ) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (int ,int) ;
 int mrb_str_to_cstr (int *,int ) ;
 int mrb_string_value_cstr (int *,int *) ;
 int mrb_sys_fail (int *,int ) ;
 scalar_t__ rename (char*,char*) ;

__attribute__((used)) static mrb_value
mrb_file_s_rename(mrb_state *mrb, mrb_value obj)
{
  mrb_value from, to;
  char *src, *dst;

  mrb_get_args(mrb, "SS", &from, &to);
  src = mrb_locale_from_utf8(mrb_string_value_cstr(mrb, &from), -1);
  dst = mrb_locale_from_utf8(mrb_string_value_cstr(mrb, &to), -1);
  if (rename(src, dst) < 0) {







    mrb_locale_free(src);
    mrb_locale_free(dst);
    mrb_sys_fail(mrb, mrb_str_to_cstr(mrb, mrb_format(mrb, "(%S, %S)", from, to)));
  }
  mrb_locale_free(src);
  mrb_locale_free(dst);
  return mrb_fixnum_value(0);
}
