
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FPEXC ;
 int FPEXC_EN ;
 int fmrx (int ) ;
 int pr_crit (char*) ;

void vfp_kmode_exception(void)
{
 if (fmrx(FPEXC) & FPEXC_EN)
  pr_crit("BUG: unsupported FP instruction in kernel mode\n");
 else
  pr_crit("BUG: FP instruction issued in kernel mode with FP unit disabled\n");
}
