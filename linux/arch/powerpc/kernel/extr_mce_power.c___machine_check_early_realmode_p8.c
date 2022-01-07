
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 long mce_handle_error (struct pt_regs*,int ,int ) ;
 int mce_p8_derror_table ;
 int mce_p8_ierror_table ;

long __machine_check_early_realmode_p8(struct pt_regs *regs)
{
 return mce_handle_error(regs, mce_p8_derror_table, mce_p8_ierror_table);
}
