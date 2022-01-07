
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int FILE_SEPARATOR ;
 int PATH_MAX ;
 int RSTRING_PTR (int ) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (int ,int) ;
 int mrb_str_append (int *,int ,int ) ;
 int mrb_str_buf_new (int *,int ) ;
 int mrb_str_dup (int *,int ) ;
 int mrb_str_new_cstr (int *,int ) ;
 int mrb_str_resize (int *,int ,int ) ;
 int mrb_str_to_cstr (int *,int ) ;
 int mrb_sys_fail (int *,char*) ;
 int * realpath (char*,int ) ;
 int strlen (int ) ;

__attribute__((used)) static mrb_value
mrb_file_realpath(mrb_state *mrb, mrb_value klass)
{
  mrb_value pathname, dir_string, s, result;
  mrb_int argc;
  char *cpath;

  argc = mrb_get_args(mrb, "S|S", &pathname, &dir_string);
  if (argc == 2) {
    s = mrb_str_dup(mrb, dir_string);
    s = mrb_str_append(mrb, s, mrb_str_new_cstr(mrb, FILE_SEPARATOR));
    s = mrb_str_append(mrb, s, pathname);
    pathname = s;
  }
  cpath = mrb_locale_from_utf8(mrb_str_to_cstr(mrb, pathname), -1);
  result = mrb_str_buf_new(mrb, PATH_MAX);
  if (realpath(cpath, RSTRING_PTR(result)) == ((void*)0)) {
    mrb_locale_free(cpath);
    mrb_sys_fail(mrb, cpath);
  }
  mrb_locale_free(cpath);
  mrb_str_resize(mrb, result, strlen(RSTRING_PTR(result)));
  return result;
}
