
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct ip17xx_state {int proc_mii; } ;


 int EINVAL ;
 scalar_t__ REG_SUPP (int ) ;
 struct ip17xx_state* get_state (struct switch_dev*) ;
 int setPhy (struct ip17xx_state*,int ,int ) ;

__attribute__((used)) static int ip17xx_set_val(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 struct ip17xx_state *state = get_state(dev);
 int myval, err = -EINVAL;

 myval = val->value.i;
 if (myval <= 0xffff && myval >= 0 && REG_SUPP(state->proc_mii)) {
  err = setPhy(state, state->proc_mii, (u16)myval);
 }
 return err;
}
