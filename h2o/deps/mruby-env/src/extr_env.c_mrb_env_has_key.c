
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int * getenv (char const*) ;
 int mrb_false_value () ;
 int mrb_get_args (int *,char*,int *) ;
 char* mrb_str_to_cstr (int *,int ) ;
 int mrb_true_value () ;

mrb_value
mrb_env_has_key(mrb_state *mrb, mrb_value self)
{
  mrb_value name;
  const char *key;
  mrb_get_args(mrb, "S", &name);
  key = mrb_str_to_cstr(mrb, name);
  if (getenv(key) != ((void*)0)) {
    return mrb_true_value();
  } else {
    return mrb_false_value();
  }
}
