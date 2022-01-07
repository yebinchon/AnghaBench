
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i; } ;
struct switch_val {TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct TYPE_4__ {int p; } ;
struct ip17xx_state {TYPE_2__ proc_mii; } ;


 struct ip17xx_state* get_state (struct switch_dev*) ;

__attribute__((used)) static int ip17xx_get_phy(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
 struct ip17xx_state *state = get_state(dev);

 val->value.i = state->proc_mii.p;
 return 0;
}
