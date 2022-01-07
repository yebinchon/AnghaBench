
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mce_bank {unsigned long long ctl; int init; } ;


 int mce_banks_array ;
 int mce_num_banks ;
 struct mce_bank* this_cpu_ptr (int ) ;
 int this_cpu_read (int ) ;

__attribute__((used)) static void __mcheck_cpu_mce_banks_init(void)
{
 struct mce_bank *mce_banks = this_cpu_ptr(mce_banks_array);
 u8 n_banks = this_cpu_read(mce_num_banks);
 int i;

 for (i = 0; i < n_banks; i++) {
  struct mce_bank *b = &mce_banks[i];






  b->ctl = -1ULL;
  b->init = 1;
 }
}
