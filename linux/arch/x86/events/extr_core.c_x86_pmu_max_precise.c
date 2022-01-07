
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pebs_format; } ;
struct TYPE_4__ {scalar_t__ pebs_prec_dist; TYPE_1__ intel_cap; scalar_t__ lbr_nr; int pebs_broken; scalar_t__ pebs_active; } ;


 TYPE_2__ x86_pmu ;

int x86_pmu_max_precise(void)
{
 int precise = 0;


 if (x86_pmu.pebs_active && !x86_pmu.pebs_broken) {
  precise++;


  if (x86_pmu.lbr_nr || x86_pmu.intel_cap.pebs_format >= 2)
   precise++;

  if (x86_pmu.pebs_prec_dist)
   precise++;
 }
 return precise;
}
