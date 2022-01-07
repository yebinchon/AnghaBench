
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int (* powersave_bias_target ) (struct cpufreq_policy*,unsigned int,unsigned int) ;} ;


 TYPE_1__ od_ops ;
 int od_set_powersave_bias (unsigned int) ;

void od_register_powersave_bias_handler(unsigned int (*f)
  (struct cpufreq_policy *, unsigned int, unsigned int),
  unsigned int powersave_bias)
{
 od_ops.powersave_bias_target = f;
 od_set_powersave_bias(powersave_bias);
}
