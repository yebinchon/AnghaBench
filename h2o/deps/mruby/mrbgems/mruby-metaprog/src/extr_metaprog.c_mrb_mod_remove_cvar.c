
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_value ;
typedef int mrb_sym ;
typedef int mrb_state ;


 int check_cv_name_sym (int *,int ) ;
 scalar_t__ mrb_cv_defined (int *,int ,int ) ;
 int mrb_get_args (int *,char*,int *) ;
 int mrb_iv_remove (int *,int ,int ) ;
 int mrb_name_error (int *,int ,char*,int ,int ) ;
 int mrb_nil_value () ;
 int mrb_sym2str (int *,int ) ;
 int mrb_undef_p (int ) ;

__attribute__((used)) static mrb_value
mrb_mod_remove_cvar(mrb_state *mrb, mrb_value mod)
{
  mrb_value val;
  mrb_sym id;

  mrb_get_args(mrb, "n", &id);
  check_cv_name_sym(mrb, id);

  val = mrb_iv_remove(mrb, mod, id);
  if (!mrb_undef_p(val)) return val;

  if (mrb_cv_defined(mrb, mod, id)) {
    mrb_name_error(mrb, id, "cannot remove %S for %S",
                   mrb_sym2str(mrb, id), mod);
  }

  mrb_name_error(mrb, id, "class variable %S not defined for %S",
                 mrb_sym2str(mrb, id), mod);


 return mrb_nil_value();
}
