
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int FPEXC ;
 int FPSCR ;
 int fmrx (int ) ;
 int pr_err (char*,...) ;
 int vfp_get_float (int) ;

__attribute__((used)) static void vfp_panic(char *reason, u32 inst)
{
 int i;

 pr_err("VFP: Error: %s\n", reason);
 pr_err("VFP: EXC 0x%08x SCR 0x%08x INST 0x%08x\n",
  fmrx(FPEXC), fmrx(FPSCR), inst);
 for (i = 0; i < 32; i += 2)
  pr_err("VFP: s%2u: 0x%08x s%2u: 0x%08x\n",
         i, vfp_get_float(i), i+1, vfp_get_float(i+1));
}
