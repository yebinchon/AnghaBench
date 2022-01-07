
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int L2ARRSTAT0 ;
 int L2ARRSTAT1 ;
 int L2ARRSTAT2 ;
 int L2CPUSTAT ;
 int L2INT ;
 int L2LOG0 ;
 int L2LOG1 ;
 int L2LOG2 ;
 int L2LOG3 ;
 int L2LOG4 ;
 int L2LOG5 ;
 int L2MCK ;
 int L2PLBSTAT0 ;
 int L2PLBSTAT1 ;
 int L2RACSTAT0 ;
 int L2WACSTAT0 ;
 int L2WACSTAT1 ;
 int L2WACSTAT2 ;
 int L2WDFSTAT ;
 int mfl2 (int ) ;
 int pr_err (char*,...) ;

__attribute__((used)) static void l2regs(void)
{
 pr_err("L2 Controller:\n");
 pr_err("MCK:      0x%08x\n", mfl2(L2MCK));
 pr_err("INT:      0x%08x\n", mfl2(L2INT));
 pr_err("PLBSTAT0: 0x%08x\n", mfl2(L2PLBSTAT0));
 pr_err("PLBSTAT1: 0x%08x\n", mfl2(L2PLBSTAT1));
 pr_err("ARRSTAT0: 0x%08x\n", mfl2(L2ARRSTAT0));
 pr_err("ARRSTAT1: 0x%08x\n", mfl2(L2ARRSTAT1));
 pr_err("ARRSTAT2: 0x%08x\n", mfl2(L2ARRSTAT2));
 pr_err("CPUSTAT:  0x%08x\n", mfl2(L2CPUSTAT));
 pr_err("RACSTAT0: 0x%08x\n", mfl2(L2RACSTAT0));
 pr_err("WACSTAT0: 0x%08x\n", mfl2(L2WACSTAT0));
 pr_err("WACSTAT1: 0x%08x\n", mfl2(L2WACSTAT1));
 pr_err("WACSTAT2: 0x%08x\n", mfl2(L2WACSTAT2));
 pr_err("WDFSTAT:  0x%08x\n", mfl2(L2WDFSTAT));
 pr_err("LOG0:     0x%08x\n", mfl2(L2LOG0));
 pr_err("LOG1:     0x%08x\n", mfl2(L2LOG1));
 pr_err("LOG2:     0x%08x\n", mfl2(L2LOG2));
 pr_err("LOG3:     0x%08x\n", mfl2(L2LOG3));
 pr_err("LOG4:     0x%08x\n", mfl2(L2LOG4));
 pr_err("LOG5:     0x%08x\n", mfl2(L2LOG5));
}
