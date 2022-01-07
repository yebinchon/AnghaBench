
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct pcpu {struct lowcore* lowcore; } ;
struct lowcore {int cpu_nr; int alt_stfle_fac_list; int stfle_fac_list; scalar_t__ access_regs_save_area; int cregs_save_area; scalar_t__ avg_steal_timer; scalar_t__ steal_timer; scalar_t__ system_timer; scalar_t__ user_timer; int machine_flags; int kernel_asce; int percpu_offset; scalar_t__ spinlock_index; int spinlock_lockval; } ;
struct TYPE_7__ {int alt_stfle_fac_list; int stfle_fac_list; int machine_flags; int kernel_asce; } ;
struct TYPE_5__ {int cpu_attach_mask; } ;
struct TYPE_6__ {TYPE_1__ context; } ;


 TYPE_4__ S390_lowcore ;
 int __ctl_store (int ,int ,int) ;
 int * __per_cpu_offset ;
 int arch_spin_lock_setup (int) ;
 int arch_spin_lockval (int) ;
 int cpumask_set_cpu (int,int *) ;
 TYPE_2__ init_mm ;
 int memcpy (int ,int ,int) ;
 int * mm_cpumask (TYPE_2__*) ;
 int save_access_regs (unsigned int*) ;

__attribute__((used)) static void pcpu_prepare_secondary(struct pcpu *pcpu, int cpu)
{
 struct lowcore *lc = pcpu->lowcore;

 cpumask_set_cpu(cpu, &init_mm.context.cpu_attach_mask);
 cpumask_set_cpu(cpu, mm_cpumask(&init_mm));
 lc->cpu_nr = cpu;
 lc->spinlock_lockval = arch_spin_lockval(cpu);
 lc->spinlock_index = 0;
 lc->percpu_offset = __per_cpu_offset[cpu];
 lc->kernel_asce = S390_lowcore.kernel_asce;
 lc->machine_flags = S390_lowcore.machine_flags;
 lc->user_timer = lc->system_timer =
  lc->steal_timer = lc->avg_steal_timer = 0;
 __ctl_store(lc->cregs_save_area, 0, 15);
 save_access_regs((unsigned int *) lc->access_regs_save_area);
 memcpy(lc->stfle_fac_list, S390_lowcore.stfle_fac_list,
        sizeof(lc->stfle_fac_list));
 memcpy(lc->alt_stfle_fac_list, S390_lowcore.alt_stfle_fac_list,
        sizeof(lc->alt_stfle_fac_list));
 arch_spin_lock_setup(cpu);
}
