
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 char* getenv (char const*) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_nil_value () ;
 int mrb_str_new_cstr (int *,char const*) ;
 char* mrb_string_value_cstr (int *,int *) ;

mrb_value
mrb_env_aget(mrb_state *mrb, mrb_value self)
{
  mrb_value key;
  const char *cname, *cvalue;

  mrb_get_args(mrb, "S", &key);
  cname = mrb_string_value_cstr(mrb, &key);
  cvalue = getenv(cname);
  if (cvalue != ((void*)0)) {
    return mrb_str_new_cstr(mrb, cvalue);
  } else {
    return mrb_nil_value();
  }
}
