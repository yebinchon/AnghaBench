
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef size_t mrb_int ;


 scalar_t__ UNLINK (char*) ;
 int mrb_ensure_string_type (int *,int ) ;
 int mrb_fixnum_value (size_t) ;
 int mrb_get_args (int *,char*,int **,size_t*) ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (char const*,int) ;
 char* mrb_string_value_cstr (int *,int *) ;
 int mrb_sys_fail (int *,char const*) ;

__attribute__((used)) static mrb_value
mrb_file_s_unlink(mrb_state *mrb, mrb_value obj)
{
  mrb_value *argv;
  mrb_value pathv;
  mrb_int argc, i;
  char *path;

  mrb_get_args(mrb, "*", &argv, &argc);
  for (i = 0; i < argc; i++) {
    const char *utf8_path;
    pathv = mrb_ensure_string_type(mrb, argv[i]);
    utf8_path = mrb_string_value_cstr(mrb, &pathv);
    path = mrb_locale_from_utf8(utf8_path, -1);
    if (UNLINK(path) < 0) {
      mrb_locale_free(path);
      mrb_sys_fail(mrb, utf8_path);
    }
    mrb_locale_free(path);
  }
  return mrb_fixnum_value(argc);
}
