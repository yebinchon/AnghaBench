
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lbr_nr; scalar_t__ lbr_from; } ;


 int wrmsrl (scalar_t__,int ) ;
 TYPE_1__ x86_pmu ;

__attribute__((used)) static void intel_pmu_lbr_reset_32(void)
{
 int i;

 for (i = 0; i < x86_pmu.lbr_nr; i++)
  wrmsrl(x86_pmu.lbr_from + i, 0);
}
