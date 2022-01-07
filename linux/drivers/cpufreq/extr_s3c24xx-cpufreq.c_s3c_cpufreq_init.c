
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int transition_latency; } ;
struct cpufreq_policy {int freq_table; TYPE_1__ cpuinfo; int clk; } ;
struct TYPE_6__ {TYPE_2__* info; } ;
struct TYPE_5__ {int latency; } ;


 int clk_arm ;
 TYPE_3__ cpu_cur ;
 int ftab ;

__attribute__((used)) static int s3c_cpufreq_init(struct cpufreq_policy *policy)
{
 policy->clk = clk_arm;
 policy->cpuinfo.transition_latency = cpu_cur.info->latency;
 policy->freq_table = ftab;

 return 0;
}
