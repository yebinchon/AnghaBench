
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int ppc_save_regs (struct pt_regs*) ;
 int xmon_core (struct pt_regs*,int ) ;

int xmon(struct pt_regs *excp)
{
 struct pt_regs regs;

 if (excp == ((void*)0)) {
  ppc_save_regs(&regs);
  excp = &regs;
 }

 return xmon_core(excp, 0);
}
