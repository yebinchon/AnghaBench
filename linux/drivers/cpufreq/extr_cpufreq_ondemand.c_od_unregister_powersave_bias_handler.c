
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int powersave_bias_target; } ;


 int generic_powersave_bias_target ;
 TYPE_1__ od_ops ;
 int od_set_powersave_bias (int ) ;

void od_unregister_powersave_bias_handler(void)
{
 od_ops.powersave_bias_target = generic_powersave_bias_target;
 od_set_powersave_bias(0);
}
