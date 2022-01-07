
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 char** environ ;
 int mrb_ary_new (int *) ;
 int mrb_ary_push (int *,int ,int ) ;
 int mrb_str_new (int *,char*,int) ;
 char* strchr (char*,char) ;

mrb_value
mrb_env_keys(mrb_state *mrb, mrb_value self)
{
  int i;
  mrb_value ary;

  ary = mrb_ary_new(mrb);
  for (i = 0; environ[i] != ((void*)0); i++) {
    char *str = strchr(environ[i], '=');
    if (str != ((void*)0)) {
      int len = str - environ[i];
      mrb_ary_push(mrb, ary, mrb_str_new(mrb, environ[i], len));
    }
  }

  return ary;
}
