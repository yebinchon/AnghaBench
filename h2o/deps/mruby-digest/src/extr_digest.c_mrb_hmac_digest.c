
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_hmac {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;


 scalar_t__ DATA_PTR (int ) ;
 int lib_hmac_digest (int *,struct mrb_hmac*) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
mrb_hmac_digest(mrb_state *mrb, mrb_value self)
{
  struct mrb_hmac *hmac;

  hmac = (struct mrb_hmac *)DATA_PTR(self);
  if (!hmac) return mrb_nil_value();
  return lib_hmac_digest(mrb, hmac);
}
