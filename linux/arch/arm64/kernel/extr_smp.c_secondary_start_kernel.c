
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct mm_struct {int dummy; } ;
struct TYPE_5__ {int (* cpu_postboot ) () ;} ;
struct TYPE_4__ {struct mm_struct* active_mm; } ;


 int CPUHP_AP_ONLINE_IDLE ;
 int CPU_BOOT_SUCCESS ;
 int DAIF_PROCCTX ;
 int MPIDR_HWID_BITMASK ;
 int check_local_cpu_capabilities () ;
 int complete (int *) ;
 TYPE_3__** cpu_ops ;
 int cpu_running ;
 int cpu_startup_entry (int ) ;
 int cpu_uninstall_idmap () ;
 int cpuinfo_store_cpu () ;
 TYPE_1__* current ;
 int init_gic_priority_masking () ;
 struct mm_struct init_mm ;
 int local_daif_restore (int ) ;
 int mmgrab (struct mm_struct*) ;
 int notify_cpu_starting (unsigned int) ;
 int numa_add_cpu (unsigned int) ;
 int per_cpu_offset (unsigned int) ;
 int pr_info (char*,unsigned int,unsigned long,int ) ;
 int preempt_disable () ;
 int read_cpuid_id () ;
 int read_cpuid_mpidr () ;
 int set_cpu_online (unsigned int,int) ;
 int set_my_cpu_offset (int ) ;
 int store_cpu_topology (unsigned int) ;
 int stub1 () ;
 scalar_t__ system_uses_irq_prio_masking () ;
 unsigned int task_cpu (TYPE_1__*) ;
 int trace_hardirqs_off () ;
 int update_cpu_boot_status (int ) ;

void secondary_start_kernel(void)
{
 u64 mpidr = read_cpuid_mpidr() & MPIDR_HWID_BITMASK;
 struct mm_struct *mm = &init_mm;
 unsigned int cpu;

 cpu = task_cpu(current);
 set_my_cpu_offset(per_cpu_offset(cpu));





 mmgrab(mm);
 current->active_mm = mm;





 cpu_uninstall_idmap();

 if (system_uses_irq_prio_masking())
  init_gic_priority_masking();

 preempt_disable();
 trace_hardirqs_off();






 check_local_cpu_capabilities();

 if (cpu_ops[cpu]->cpu_postboot)
  cpu_ops[cpu]->cpu_postboot();




 cpuinfo_store_cpu();




 notify_cpu_starting(cpu);

 store_cpu_topology(cpu);
 numa_add_cpu(cpu);






 pr_info("CPU%u: Booted secondary processor 0x%010lx [0x%08x]\n",
      cpu, (unsigned long)mpidr,
      read_cpuid_id());
 update_cpu_boot_status(CPU_BOOT_SUCCESS);
 set_cpu_online(cpu, 1);
 complete(&cpu_running);

 local_daif_restore(DAIF_PROCCTX);




 cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
}
