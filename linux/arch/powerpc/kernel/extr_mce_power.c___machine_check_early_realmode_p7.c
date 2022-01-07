
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dsisr; } ;


 long mce_handle_error (struct pt_regs*,int ,int ) ;
 int mce_p7_derror_table ;
 int mce_p7_ierror_table ;

long __machine_check_early_realmode_p7(struct pt_regs *regs)
{

 regs->dsisr &= 0x0000ffff;

 return mce_handle_error(regs, mce_p7_derror_table, mce_p7_ierror_table);
}
