
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrb_hmac {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int mrb_int ;


 scalar_t__ DATA_PTR (int ) ;
 int lib_hmac_update (int *,struct mrb_hmac*,unsigned char*,int ) ;
 int mrb_get_args (int *,char*,char**,int *) ;
 int mrb_nil_value () ;

__attribute__((used)) static mrb_value
mrb_hmac_update(mrb_state *mrb, mrb_value self)
{
  struct mrb_hmac *hmac;
  mrb_int len;
  char *str;

  hmac = (struct mrb_hmac *)DATA_PTR(self);
  if (!hmac) return mrb_nil_value();
  mrb_get_args(mrb, "s", &str, &len);
  lib_hmac_update(mrb, hmac, (unsigned char *)str, len);
  return self;
}
