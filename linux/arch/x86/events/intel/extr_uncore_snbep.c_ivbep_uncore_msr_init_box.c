
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_box {int dummy; } ;


 int IVBEP_PMON_BOX_CTL_INT ;
 unsigned int uncore_msr_box_ctl (struct intel_uncore_box*) ;
 int wrmsrl (unsigned int,int ) ;

__attribute__((used)) static void ivbep_uncore_msr_init_box(struct intel_uncore_box *box)
{
 unsigned msr = uncore_msr_box_ctl(box);
 if (msr)
  wrmsrl(msr, IVBEP_PMON_BOX_CTL_INT);
}
