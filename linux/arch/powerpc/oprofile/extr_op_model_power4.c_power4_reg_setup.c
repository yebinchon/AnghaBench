
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct op_system_config {scalar_t__ enable_user; scalar_t__ enable_kernel; int mmcra; int mmcr1; int mmcr0; } ;
struct op_counter_config {scalar_t__ count; } ;
struct TYPE_2__ {int num_pmcs; } ;


 int MMCR0_KERNEL_DISABLE ;
 int MMCR0_PROBLEM_DISABLE ;
 int PVR_970 ;
 int PVR_970FX ;
 int PVR_970GX ;
 int PVR_970MP ;
 int PVR_POWER4 ;
 int PVR_POWER4p ;
 int PVR_POWER5 ;
 int PVR_POWER5p ;
 int PVR_POWER7p ;
 scalar_t__ cntr_marked_events ;
 TYPE_1__* cur_cpu_spec ;
 int mmcr0_val ;
 int mmcr1_val ;
 int mmcra_val ;
 scalar_t__ power7_marked_instr_event (int ) ;
 scalar_t__ pvr_version_is (int ) ;
 scalar_t__* reset_value ;
 int use_slot_nums ;

__attribute__((used)) static int power4_reg_setup(struct op_counter_config *ctr,
        struct op_system_config *sys,
        int num_ctrs)
{
 int i;






 mmcr0_val = sys->mmcr0;
 mmcr1_val = sys->mmcr1;
 mmcra_val = sys->mmcra;
 if (pvr_version_is(PVR_POWER7p))
  cntr_marked_events = power7_marked_instr_event(mmcr1_val);
 else
  cntr_marked_events = 0;




 for (i = 0; i < cur_cpu_spec->num_pmcs; ++i)
  reset_value[i] = 0x80000000UL - ctr[i].count;


 if (sys->enable_kernel)
  mmcr0_val &= ~MMCR0_KERNEL_DISABLE;
 else
  mmcr0_val |= MMCR0_KERNEL_DISABLE;

 if (sys->enable_user)
  mmcr0_val &= ~MMCR0_PROBLEM_DISABLE;
 else
  mmcr0_val |= MMCR0_PROBLEM_DISABLE;

 if (pvr_version_is(PVR_POWER4) || pvr_version_is(PVR_POWER4p) ||
     pvr_version_is(PVR_970) || pvr_version_is(PVR_970FX) ||
     pvr_version_is(PVR_970MP) || pvr_version_is(PVR_970GX) ||
     pvr_version_is(PVR_POWER5) || pvr_version_is(PVR_POWER5p))
  use_slot_nums = 1;

 return 0;
}
