
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 int RSTRING_LEN (int ) ;
 char* RSTRING_PTR (int ) ;
 int mrb_intern_str (int *,int ) ;
 int mrb_name_error (int *,int ,char*,int ) ;

__attribute__((used)) static void
check_cv_name_str(mrb_state *mrb, mrb_value str)
{
  const char *s = RSTRING_PTR(str);
  mrb_int len = RSTRING_LEN(str);

  if (len < 3 || !(s[0] == '@' && s[1] == '@')) {
    mrb_name_error(mrb, mrb_intern_str(mrb, str), "'%S' is not allowed as a class variable name", str);
  }
}
