
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_extra_reg {int ref; } ;
struct intel_uncore_box {struct intel_uncore_extra_reg* shared_regs; } ;


 int EXTRA_REG_NHMEX_M_ZDP_CTL_FVC ;
 int atomic_dec (int *) ;
 int atomic_sub (int,int *) ;

__attribute__((used)) static void nhmex_mbox_put_shared_reg(struct intel_uncore_box *box, int idx)
{
 struct intel_uncore_extra_reg *er;

 if (idx < EXTRA_REG_NHMEX_M_ZDP_CTL_FVC) {
  er = &box->shared_regs[idx];
  atomic_dec(&er->ref);
  return;
 }

 idx -= EXTRA_REG_NHMEX_M_ZDP_CTL_FVC;
 er = &box->shared_regs[EXTRA_REG_NHMEX_M_ZDP_CTL_FVC];
 atomic_sub(1 << (idx * 8), &er->ref);
}
