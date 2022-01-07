
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int udelay_val; } ;


 unsigned long CPUFREQ_POSTCHANGE ;
 TYPE_1__ current_cpu_data ;
 int loops_per_jiffy ;

__attribute__((used)) static int loongson2_cpu_freq_notifier(struct notifier_block *nb,
     unsigned long val, void *data)
{
 if (val == CPUFREQ_POSTCHANGE)
  current_cpu_data.udelay_val = loops_per_jiffy;

 return 0;
}
