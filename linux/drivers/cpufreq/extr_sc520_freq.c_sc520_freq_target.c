
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cpufreq_policy {int dummy; } ;
struct TYPE_2__ {int driver_data; } ;


 int* cpuctl ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 TYPE_1__* sc520_freq_table ;

__attribute__((used)) static int sc520_freq_target(struct cpufreq_policy *policy, unsigned int state)
{

 u8 clockspeed_reg;

 local_irq_disable();

 clockspeed_reg = *cpuctl & ~0x03;
 *cpuctl = clockspeed_reg | sc520_freq_table[state].driver_data;

 local_irq_enable();

 return 0;
}
