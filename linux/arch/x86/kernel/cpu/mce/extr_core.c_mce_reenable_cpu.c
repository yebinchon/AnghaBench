
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mce_bank {int ctl; scalar_t__ init; } ;
struct TYPE_2__ {int (* ctl ) (int) ;} ;


 int cmci_reenable () ;
 int cpu_info ;
 int cpuhp_tasks_frozen ;
 int mce_available (int ) ;
 int mce_banks_array ;
 int mce_num_banks ;
 TYPE_1__ msr_ops ;
 int raw_cpu_ptr (int *) ;
 int stub1 (int) ;
 struct mce_bank* this_cpu_ptr (int ) ;
 int this_cpu_read (int ) ;
 int wrmsrl (int ,int ) ;

__attribute__((used)) static void mce_reenable_cpu(void)
{
 struct mce_bank *mce_banks = this_cpu_ptr(mce_banks_array);
 int i;

 if (!mce_available(raw_cpu_ptr(&cpu_info)))
  return;

 if (!cpuhp_tasks_frozen)
  cmci_reenable();
 for (i = 0; i < this_cpu_read(mce_num_banks); i++) {
  struct mce_bank *b = &mce_banks[i];

  if (b->init)
   wrmsrl(msr_ops.ctl(i), b->ctl);
 }
}
