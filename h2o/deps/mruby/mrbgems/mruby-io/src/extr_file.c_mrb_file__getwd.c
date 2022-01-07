
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int * GETCWD (char*,int) ;
 int MAXPATHLEN ;
 int mrb_str_new_cstr (int *,char*) ;
 int mrb_sys_fail (int *,char*) ;
 int mrb_utf8_free (char*) ;
 char* mrb_utf8_from_locale (char*,int) ;

mrb_value
mrb_file__getwd(mrb_state *mrb, mrb_value klass)
{
  mrb_value path;
  char buf[MAXPATHLEN], *utf8;

  if (GETCWD(buf, MAXPATHLEN) == ((void*)0)) {
    mrb_sys_fail(mrb, "getcwd(2)");
  }
  utf8 = mrb_utf8_from_locale(buf, -1);
  path = mrb_str_new_cstr(mrb, utf8);
  mrb_utf8_free(utf8);
  return path;
}
