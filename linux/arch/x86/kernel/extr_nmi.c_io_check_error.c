
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int NMI_IO_CHECK ;
 unsigned char NMI_REASON_CLEAR_IOCHK ;
 unsigned char NMI_REASON_CLEAR_MASK ;
 int NMI_REASON_PORT ;
 scalar_t__ nmi_handle (int ,struct pt_regs*) ;
 int nmi_panic (struct pt_regs*,char*) ;
 int outb (unsigned char,int ) ;
 scalar_t__ panic_on_io_nmi ;
 int pr_emerg (char*,unsigned char,int ) ;
 int show_regs (struct pt_regs*) ;
 int smp_processor_id () ;
 int touch_nmi_watchdog () ;
 int udelay (int) ;

__attribute__((used)) static void
io_check_error(unsigned char reason, struct pt_regs *regs)
{
 unsigned long i;


 if (nmi_handle(NMI_IO_CHECK, regs))
  return;

 pr_emerg(
 "NMI: IOCK error (debug interrupt?) for reason %02x on CPU %d.\n",
   reason, smp_processor_id());
 show_regs(regs);

 if (panic_on_io_nmi) {
  nmi_panic(regs, "NMI IOCK error: Not continuing");






  return;
 }


 reason = (reason & NMI_REASON_CLEAR_MASK) | NMI_REASON_CLEAR_IOCHK;
 outb(reason, NMI_REASON_PORT);

 i = 20000;
 while (--i) {
  touch_nmi_watchdog();
  udelay(100);
 }

 reason &= ~NMI_REASON_CLEAR_IOCHK;
 outb(reason, NMI_REASON_PORT);
}
