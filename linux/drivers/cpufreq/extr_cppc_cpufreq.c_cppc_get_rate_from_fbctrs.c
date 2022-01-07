
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cppc_perf_fb_ctrs {int reference_perf; int delivered; int reference; } ;
struct TYPE_2__ {int desired_perf; } ;
struct cppc_cpudata {TYPE_1__ perf_ctrls; } ;


 int cppc_cpufreq_perf_to_khz (struct cppc_cpudata*,int) ;
 int get_delta (int ,int ) ;

__attribute__((used)) static int cppc_get_rate_from_fbctrs(struct cppc_cpudata *cpu,
         struct cppc_perf_fb_ctrs fb_ctrs_t0,
         struct cppc_perf_fb_ctrs fb_ctrs_t1)
{
 u64 delta_reference, delta_delivered;
 u64 reference_perf, delivered_perf;

 reference_perf = fb_ctrs_t0.reference_perf;

 delta_reference = get_delta(fb_ctrs_t1.reference,
        fb_ctrs_t0.reference);
 delta_delivered = get_delta(fb_ctrs_t1.delivered,
        fb_ctrs_t0.delivered);


 if (delta_reference || delta_delivered)
  delivered_perf = (reference_perf * delta_delivered) /
     delta_reference;
 else
  delivered_perf = cpu->perf_ctrls.desired_perf;

 return cppc_cpufreq_perf_to_khz(cpu, delivered_perf);
}
