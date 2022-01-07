
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mce_bank {int ctl; int init; } ;
struct TYPE_2__ {int (* status ) (int) ;int (* ctl ) (int) ;} ;


 int mce_banks_array ;
 int mce_num_banks ;
 TYPE_1__ msr_ops ;
 int stub1 (int) ;
 int stub2 (int) ;
 struct mce_bank* this_cpu_ptr (int ) ;
 int this_cpu_read (int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void __mcheck_cpu_init_clear_banks(void)
{
 struct mce_bank *mce_banks = this_cpu_ptr(mce_banks_array);
 int i;

 for (i = 0; i < this_cpu_read(mce_num_banks); i++) {
  struct mce_bank *b = &mce_banks[i];

  if (!b->init)
   continue;
  wrmsrl(msr_ops.ctl(i), b->ctl);
  wrmsrl(msr_ops.status(i), 0);
 }
}
