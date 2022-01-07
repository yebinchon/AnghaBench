
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 unsigned char NMI_REASON_CLEAR_MASK ;
 unsigned char NMI_REASON_CLEAR_SERR ;
 int NMI_REASON_PORT ;
 int NMI_SERR ;
 scalar_t__ nmi_handle (int ,struct pt_regs*) ;
 int nmi_panic (struct pt_regs*,char*) ;
 int outb (unsigned char,int ) ;
 scalar_t__ panic_on_unrecovered_nmi ;
 int pr_emerg (char*,...) ;
 int smp_processor_id () ;

__attribute__((used)) static void
pci_serr_error(unsigned char reason, struct pt_regs *regs)
{

 if (nmi_handle(NMI_SERR, regs))
  return;

 pr_emerg("NMI: PCI system error (SERR) for reason %02x on CPU %d.\n",
   reason, smp_processor_id());

 if (panic_on_unrecovered_nmi)
  nmi_panic(regs, "NMI: Not continuing");

 pr_emerg("Dazed and confused, but trying to continue\n");


 reason = (reason & NMI_REASON_CLEAR_MASK) | NMI_REASON_CLEAR_SERR;
 outb(reason, NMI_REASON_PORT);
}
