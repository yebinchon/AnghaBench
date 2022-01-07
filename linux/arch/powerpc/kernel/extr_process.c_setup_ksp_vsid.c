
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long ksp_vsid; } ;
struct task_struct {TYPE_1__ thread; } ;
struct TYPE_4__ {unsigned long sllp; } ;


 int MMU_FTR_1T_SEGMENT ;
 int MMU_SEGSIZE_1T ;
 int MMU_SEGSIZE_256M ;
 unsigned long SLB_VSID_KERNEL ;
 unsigned long SLB_VSID_SHIFT ;
 unsigned long SLB_VSID_SHIFT_1T ;
 unsigned long get_kernel_vsid (unsigned long,int ) ;
 scalar_t__ mmu_has_feature (int ) ;
 size_t mmu_linear_psize ;
 TYPE_2__* mmu_psize_defs ;
 scalar_t__ radix_enabled () ;

__attribute__((used)) static void setup_ksp_vsid(struct task_struct *p, unsigned long sp)
{
}
