
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct mce {int bank; int extcpu; } ;


 int EINVAL ;
 int MCG_BANKCNT_MASK ;
 int MSR_IA32_MCG_CAP ;
 int do_inject () ;
 int i_mce ;
 int pr_err (char*,int,int ) ;
 int rdmsrl_on_cpu (int ,int ,int*) ;
 int setup_inj_struct (int *) ;

__attribute__((used)) static int inj_bank_set(void *data, u64 val)
{
 struct mce *m = (struct mce *)data;
 u8 n_banks;
 u64 cap;


 rdmsrl_on_cpu(m->extcpu, MSR_IA32_MCG_CAP, &cap);
 n_banks = cap & MCG_BANKCNT_MASK;

 if (val >= n_banks) {
  pr_err("MCA bank %llu non-existent on CPU%d\n", val, m->extcpu);
  return -EINVAL;
 }

 m->bank = val;
 do_inject();


 setup_inj_struct(&i_mce);

 return 0;
}
