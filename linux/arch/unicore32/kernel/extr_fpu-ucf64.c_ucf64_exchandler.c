
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt_regs {int dummy; } ;


 int F64_EXCEPTION_ERROR ;
 int FPSCR ;
 int FPSCR_CMPINSTR_BIT ;
 int FPSCR_CON ;
 int FPSCR_HIC ;
 int FPSCR_HIS ;
 int FPSCR_IOC ;
 int FPSCR_IOS ;
 int FPSCR_IXC ;
 int FPSCR_IXS ;
 int FPSCR_OFC ;
 int FPSCR_OFS ;
 int FPSCR_TRAP ;
 int FPSCR_UFC ;
 int FPSCR_UFS ;
 int cff (int ) ;
 int ctf (int ,int) ;
 int pr_debug (char*,...) ;
 int ucf64_raise_sigfpe (struct pt_regs*) ;

void ucf64_exchandler(u32 inst, u32 fpexc, struct pt_regs *regs)
{
 u32 tmp = fpexc;
 u32 exc = F64_EXCEPTION_ERROR & fpexc;

 pr_debug("UniCore-F64: instruction %08x fpscr %08x\n",
   inst, fpexc);

 if (exc & FPSCR_CMPINSTR_BIT) {
  if (exc & FPSCR_CON)
   tmp |= FPSCR_CON;
  else
   tmp &= ~(FPSCR_CON);
  exc &= ~(FPSCR_CMPINSTR_BIT | FPSCR_CON);
 } else {
  pr_debug("UniCore-F64 Error: unhandled exceptions\n");
  pr_debug("UniCore-F64 FPSCR 0x%08x INST 0x%08x\n",
    cff(FPSCR), inst);

  ucf64_raise_sigfpe(regs);
  return;
 }






 tmp &= ~(FPSCR_TRAP | FPSCR_IOS | FPSCR_OFS | FPSCR_UFS |
   FPSCR_IXS | FPSCR_HIS | FPSCR_IOC | FPSCR_OFC |
   FPSCR_UFC | FPSCR_IXC | FPSCR_HIC);

 tmp |= exc;
 ctf(FPSCR, tmp);
}
