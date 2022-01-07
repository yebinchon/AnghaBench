
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dsisr; int msr; } ;


 scalar_t__ SRR1_MC_LOADSTORE (int ) ;
 long mce_handle_error (struct pt_regs*,int ,int ) ;
 int mce_p9_derror_table ;
 int mce_p9_ierror_table ;

long __machine_check_early_realmode_p9(struct pt_regs *regs)
{
 if (SRR1_MC_LOADSTORE(regs->msr) && regs->dsisr == 0x02000000)
  return 1;

 return mce_handle_error(regs, mce_p9_derror_table, mce_p9_ierror_table);
}
