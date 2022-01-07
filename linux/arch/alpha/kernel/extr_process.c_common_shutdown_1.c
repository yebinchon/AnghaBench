
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct percpu_struct {unsigned long flags; } ;
struct halt_info {scalar_t__ mode; int restart_cmd; } ;
struct TYPE_4__ {int (* kill_arch ) (scalar_t__) ;} ;
struct TYPE_3__ {int processor_size; scalar_t__ processor_offset; } ;


 scalar_t__ LINUX_REBOOT_CMD_RESTART ;
 scalar_t__ MAX_NR_CONSOLES ;
 TYPE_2__ alpha_mv ;
 scalar_t__ alpha_using_srm ;
 int barrier () ;
 int boot_cpuid ;
 int console_lock () ;
 int console_unlock () ;
 int cpu_present_mask ;
 scalar_t__ cpumask_weight (int ) ;
 int do_take_over_console (int *,int ,scalar_t__,int) ;
 int dummy_con ;
 int halt () ;
 TYPE_1__* hwrpb ;
 scalar_t__ in_interrupt () ;
 int irq_exit () ;
 int local_irq_disable () ;
 int pci_restore_srm_config () ;
 int set_cpu_possible (int,int) ;
 int set_cpu_present (int,int) ;
 int set_hae (int ) ;
 int smp_processor_id () ;
 int srm_hae ;
 int srm_paging_stop () ;
 int stub1 (scalar_t__) ;

__attribute__((used)) static void
common_shutdown_1(void *generic_ptr)
{
 struct halt_info *how = (struct halt_info *)generic_ptr;
 struct percpu_struct *cpup;
 unsigned long *pflags, flags;
 int cpuid = smp_processor_id();


 local_irq_disable();

 cpup = (struct percpu_struct *)
   ((unsigned long)hwrpb + hwrpb->processor_offset
    + hwrpb->processor_size * cpuid);
 pflags = &cpup->flags;
 flags = *pflags;


 flags &= ~0x00ff0001UL;
 if (how->mode == LINUX_REBOOT_CMD_RESTART) {
  if (!how->restart_cmd) {
   flags |= 0x00020000UL;
  } else {
   flags |= 0x00030000UL;
  }
 } else {
  flags |= 0x00040000UL;
 }
 *pflags = flags;
 if (alpha_using_srm) {
  pci_restore_srm_config();
  set_hae(srm_hae);
 }

 if (alpha_mv.kill_arch)
  alpha_mv.kill_arch(how->mode);

 if (! alpha_using_srm && how->mode != LINUX_REBOOT_CMD_RESTART) {



  return;
 }

 if (alpha_using_srm)
  srm_paging_stop();

 halt();
}
