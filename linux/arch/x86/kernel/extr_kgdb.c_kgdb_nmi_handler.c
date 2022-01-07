
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int NMI_DONE ;
 int NMI_HANDLED ;


 int __test_and_clear_bit (int,int ) ;
 int atomic_read (int *) ;
 int kgdb_active ;
 int kgdb_nmicallback (int,struct pt_regs*) ;
 int raw_smp_processor_id () ;
 int set_bit (int,int ) ;
 int touch_nmi_watchdog () ;
 int was_in_debug_nmi ;

__attribute__((used)) static int kgdb_nmi_handler(unsigned int cmd, struct pt_regs *regs)
{
 int cpu;

 switch (cmd) {
 case 129:
  if (atomic_read(&kgdb_active) != -1) {

   cpu = raw_smp_processor_id();
   kgdb_nmicallback(cpu, regs);
   set_bit(cpu, was_in_debug_nmi);
   touch_nmi_watchdog();

   return NMI_HANDLED;
  }
  break;

 case 128:
  cpu = raw_smp_processor_id();

  if (__test_and_clear_bit(cpu, was_in_debug_nmi))
   return NMI_HANDLED;

  break;
 default:

  break;
 }
 return NMI_DONE;
}
