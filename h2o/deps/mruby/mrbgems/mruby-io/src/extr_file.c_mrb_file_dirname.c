
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int _MAX_DIR ;
 int _MAX_DRIVE ;
 int _splitpath (char const*,char*,char*,int *,int *) ;
 char* dirname (char*) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_locale_free (char*) ;
 char* mrb_locale_from_utf8 (int ,int) ;
 int mrb_str_new_cstr (int *,char*) ;
 int mrb_str_to_cstr (int *,int ) ;
 int mrb_sys_fail (int *,char*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 size_t strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static mrb_value
mrb_file_dirname(mrb_state *mrb, mrb_value klass)
{
  char *dname, *path;
  mrb_value s;
  mrb_get_args(mrb, "S", &s);
  path = mrb_locale_from_utf8(mrb_str_to_cstr(mrb, s), -1);

  if ((dname = dirname(path)) == ((void*)0)) {
    mrb_locale_free(path);
    mrb_sys_fail(mrb, "dirname");
  }
  mrb_locale_free(path);
  return mrb_str_new_cstr(mrb, dname);

}
