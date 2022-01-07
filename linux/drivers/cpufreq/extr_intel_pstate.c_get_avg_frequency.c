
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int core_avg_perf; } ;
struct cpudata {TYPE_1__ sample; } ;
typedef int int32_t ;


 int cpu_khz ;
 int mul_ext_fp (int ,int ) ;

__attribute__((used)) static inline int32_t get_avg_frequency(struct cpudata *cpu)
{
 return mul_ext_fp(cpu->sample.core_avg_perf, cpu_khz);
}
