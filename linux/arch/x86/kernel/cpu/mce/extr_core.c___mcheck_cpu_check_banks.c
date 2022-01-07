
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mce_bank {int init; } ;
struct TYPE_2__ {int (* ctl ) (int) ;} ;


 int mce_banks_array ;
 int mce_num_banks ;
 TYPE_1__ msr_ops ;
 int rdmsrl (int ,int ) ;
 int stub1 (int) ;
 struct mce_bank* this_cpu_ptr (int ) ;
 int this_cpu_read (int ) ;

__attribute__((used)) static void __mcheck_cpu_check_banks(void)
{
 struct mce_bank *mce_banks = this_cpu_ptr(mce_banks_array);
 u64 msrval;
 int i;

 for (i = 0; i < this_cpu_read(mce_num_banks); i++) {
  struct mce_bank *b = &mce_banks[i];

  if (!b->init)
   continue;

  rdmsrl(msr_ops.ctl(i), msrval);
  b->init = !!msrval;
 }
}
