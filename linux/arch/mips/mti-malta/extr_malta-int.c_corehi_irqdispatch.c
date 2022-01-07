
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int cp0_badvaddr; int cp0_cause; int cp0_status; int cp0_epc; } ;


 unsigned int BONITO_INTEDGE ;
 unsigned int BONITO_INTEN ;
 unsigned int BONITO_INTISR ;
 unsigned int BONITO_INTPOL ;
 unsigned int BONITO_INTSTEER ;
 unsigned int BONITO_PCIBADADDR ;
 unsigned int BONITO_PCICMD ;
 unsigned int BONITO_PCIMSTAT ;
 int GT_CPUERR_ADDRHI_OFS ;
 int GT_CPUERR_ADDRLO_OFS ;
 int GT_INTRCAUSE_OFS ;
 unsigned int GT_READ (int ) ;






 int die (char*,struct pt_regs*) ;
 struct pt_regs* get_irq_regs () ;
 int ll_msc_irq () ;
 int mips_revision_sconid ;
 int pr_emerg (char*,...) ;

__attribute__((used)) static void corehi_irqdispatch(void)
{
 unsigned int intedge, intsteer, pcicmd, pcibadaddr;
 unsigned int pcimstat, intisr, inten, intpol;
 unsigned int intrcause, datalo, datahi;
 struct pt_regs *regs = get_irq_regs();

 pr_emerg("CoreHI interrupt, shouldn't happen, we die here!\n");
 pr_emerg("epc	 : %08lx\nStatus: %08lx\n"
   "Cause : %08lx\nbadVaddr : %08lx\n",
   regs->cp0_epc, regs->cp0_status,
   regs->cp0_cause, regs->cp0_badvaddr);






 switch (mips_revision_sconid) {
 case 130:
 case 131:
 case 129:
 case 128:
  ll_msc_irq();
  break;
 case 132:
  intrcause = GT_READ(GT_INTRCAUSE_OFS);
  datalo = GT_READ(GT_CPUERR_ADDRLO_OFS);
  datahi = GT_READ(GT_CPUERR_ADDRHI_OFS);
  pr_emerg("GT_INTRCAUSE = %08x\n", intrcause);
  pr_emerg("GT_CPUERR_ADDR = %02x%08x\n",
    datahi, datalo);
  break;
 case 133:
  pcibadaddr = BONITO_PCIBADADDR;
  pcimstat = BONITO_PCIMSTAT;
  intisr = BONITO_INTISR;
  inten = BONITO_INTEN;
  intpol = BONITO_INTPOL;
  intedge = BONITO_INTEDGE;
  intsteer = BONITO_INTSTEER;
  pcicmd = BONITO_PCICMD;
  pr_emerg("BONITO_INTISR = %08x\n", intisr);
  pr_emerg("BONITO_INTEN = %08x\n", inten);
  pr_emerg("BONITO_INTPOL = %08x\n", intpol);
  pr_emerg("BONITO_INTEDGE = %08x\n", intedge);
  pr_emerg("BONITO_INTSTEER = %08x\n", intsteer);
  pr_emerg("BONITO_PCICMD = %08x\n", pcicmd);
  pr_emerg("BONITO_PCIBADADDR = %08x\n", pcibadaddr);
  pr_emerg("BONITO_PCIMSTAT = %08x\n", pcimstat);
  break;
 }

 die("CoreHi interrupt", regs);
}
