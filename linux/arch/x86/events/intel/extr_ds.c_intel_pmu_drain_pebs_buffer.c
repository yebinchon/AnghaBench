
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int (* drain_pebs ) (struct pt_regs*) ;} ;


 int stub1 (struct pt_regs*) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static inline void intel_pmu_drain_pebs_buffer(void)
{
 struct pt_regs regs;

 x86_pmu.drain_pebs(&regs);
}
