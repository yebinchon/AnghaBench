
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int msr; int link; int nip; } ;


 int MSR_RI ;


 int SRR1_WAKEMASK ;
 int hard_smp_processor_id () ;
 int restore_astate (int ) ;
 int set_dec (int) ;

__attribute__((used)) static int pasemi_system_reset_exception(struct pt_regs *regs)
{





 if (regs->msr & SRR1_WAKEMASK)
  regs->nip = regs->link;

 switch (regs->msr & SRR1_WAKEMASK) {
 case 129:
  set_dec(1);
 case 128:





  break;
 default:

  return 0;
 }


 restore_astate(hard_smp_processor_id());


 regs->msr |= MSR_RI;
 return 1;
}
