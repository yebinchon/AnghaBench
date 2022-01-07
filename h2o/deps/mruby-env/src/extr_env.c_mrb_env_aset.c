
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int E_RUNTIME_ERROR ;
 int MRB_TT_STRING ;
 int mrb_convert_type (int *,int ,int ,char*,char*) ;
 int mrb_get_args (int *,char*,int *,int *) ;
 scalar_t__ mrb_nil_p (int ) ;
 int mrb_raise (int *,int ,char*) ;
 char* mrb_string_value_cstr (int *,int *) ;
 scalar_t__ setenv (char const*,char const*,int) ;
 scalar_t__ unsetenv (char const*) ;

__attribute__((used)) static mrb_value
mrb_env_aset(mrb_state *mrb, mrb_value self)
{
  mrb_value name, value;
  const char *cname, *cvalue;

  mrb_get_args(mrb, "So", &name, &value);
  cname = mrb_string_value_cstr(mrb, &name);

  if (mrb_nil_p(value)) {
    if (unsetenv(cname) != 0) {
      mrb_raise(mrb, E_RUNTIME_ERROR, "can't delete environment variable");
    }
  } else {
    mrb_convert_type(mrb, value, MRB_TT_STRING, "String", "to_str");
    cvalue = mrb_string_value_cstr(mrb, &value);
    if (setenv(cname, cvalue, 1) != 0) {
      mrb_raise(mrb, E_RUNTIME_ERROR, "can't change environment variable");
    }
  }
  return value;
}
