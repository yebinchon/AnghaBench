
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_state ;


 int mrb_class (int *,int ) ;
 int mrb_const_get (int *,int ,int ) ;
 int mrb_fixnum (int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_intern_lit (int *,char*) ;
 int mrb_iv_set (int *,int ,int ,int ) ;
 int mrb_nil_p (int ) ;
 int mrb_nil_value () ;
 int mrb_obj_value (int ) ;
 int mrb_str_append (int *,int ,int ) ;
 int mrb_str_cat2 (int *,int ,char*) ;
 int mrb_str_new_cstr (int *,int ) ;
 int strerror (int ) ;

__attribute__((used)) static mrb_value
mrb_exxx_init(mrb_state *mrb, mrb_value self)
{
  mrb_value m, no, str;

  no = mrb_const_get(mrb, mrb_obj_value(mrb_class(mrb, self)), mrb_intern_lit(mrb, "Errno"));
  str = mrb_str_new_cstr(mrb, strerror(mrb_fixnum(no)));

  m = mrb_nil_value();
  mrb_get_args(mrb, "|S", &m);
  if (!mrb_nil_p(m)) {
    mrb_str_cat2(mrb, str, " - ");
    mrb_str_append(mrb, str, m);
  }
  mrb_iv_set(mrb, self, mrb_intern_lit(mrb, "mesg"), str);
  return self;
}
