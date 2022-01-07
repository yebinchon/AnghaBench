
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cpufreq_policy {int dummy; } ;
typedef int ssize_t ;
struct TYPE_4__ {int frequency; } ;
struct TYPE_3__ {size_t nominal; } ;


 TYPE_2__* powernv_freqs ;
 TYPE_1__ powernv_pstate_info ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t cpuinfo_nominal_freq_show(struct cpufreq_policy *policy,
     char *buf)
{
 return sprintf(buf, "%u\n",
  powernv_freqs[powernv_pstate_info.nominal].frequency);
}
