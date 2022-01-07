
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int core_avg_perf; } ;
struct TYPE_3__ {int max_pstate_physical; } ;
struct cpudata {TYPE_2__ sample; TYPE_1__ pstate; } ;
typedef int int32_t ;


 int mul_ext_fp (int ,int ) ;

__attribute__((used)) static inline int32_t get_avg_pstate(struct cpudata *cpu)
{
 return mul_ext_fp(cpu->pstate.max_pstate_physical,
     cpu->sample.core_avg_perf);
}
