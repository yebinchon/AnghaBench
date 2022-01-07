
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
struct TYPE_2__ {int unknown; } ;


 int NMI_UNKNOWN ;
 int __this_cpu_add (int ,int) ;
 int nmi_handle (int ,struct pt_regs*) ;
 int nmi_panic (struct pt_regs*,char*) ;
 TYPE_1__ nmi_stats ;
 scalar_t__ panic_on_unrecovered_nmi ;
 int pr_emerg (char*,...) ;
 int smp_processor_id () ;
 scalar_t__ unknown_nmi_panic ;

__attribute__((used)) static void
unknown_nmi_error(unsigned char reason, struct pt_regs *regs)
{
 int handled;







 handled = nmi_handle(NMI_UNKNOWN, regs);
 if (handled) {
  __this_cpu_add(nmi_stats.unknown, handled);
  return;
 }

 __this_cpu_add(nmi_stats.unknown, 1);

 pr_emerg("Uhhuh. NMI received for unknown reason %02x on CPU %d.\n",
   reason, smp_processor_id());

 pr_emerg("Do you have a strange power saving mode enabled?\n");
 if (unknown_nmi_panic || panic_on_unrecovered_nmi)
  nmi_panic(regs, "NMI: Not continuing");

 pr_emerg("Dazed and confused, but trying to continue\n");
}
