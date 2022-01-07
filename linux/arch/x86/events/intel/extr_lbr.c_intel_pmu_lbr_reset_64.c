
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lbr_format; } ;
struct TYPE_4__ {int lbr_nr; TYPE_1__ intel_cap; scalar_t__ lbr_to; scalar_t__ lbr_from; } ;


 scalar_t__ LBR_FORMAT_INFO ;
 scalar_t__ MSR_LBR_INFO_0 ;
 int wrmsrl (scalar_t__,int ) ;
 TYPE_2__ x86_pmu ;

__attribute__((used)) static void intel_pmu_lbr_reset_64(void)
{
 int i;

 for (i = 0; i < x86_pmu.lbr_nr; i++) {
  wrmsrl(x86_pmu.lbr_from + i, 0);
  wrmsrl(x86_pmu.lbr_to + i, 0);
  if (x86_pmu.intel_cap.lbr_format == LBR_FORMAT_INFO)
   wrmsrl(MSR_LBR_INFO_0 + i, 0);
 }
}
