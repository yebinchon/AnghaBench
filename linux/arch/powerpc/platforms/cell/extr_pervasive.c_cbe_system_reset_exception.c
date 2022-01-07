
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; } ;




 int SRR1_WAKEMASK ;



 int cbe_sysreset_hack () ;
 int cbe_system_error_exception (struct pt_regs*) ;
 int cbe_thermal_exception (struct pt_regs*) ;
 int set_dec (int) ;

__attribute__((used)) static int cbe_system_reset_exception(struct pt_regs *regs)
{
 switch (regs->msr & SRR1_WAKEMASK) {
 case 132:
  set_dec(1);
 case 131:





  break;
 case 130:
  return cbe_sysreset_hack();
 default:

  return 0;
 }

 return 1;
}
