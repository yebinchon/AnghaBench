
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_regs {int nip; int msr; } ;
struct mce_ierror_table {int dummy; } ;
struct mce_error_info {scalar_t__ error_type; int member_0; } ;
struct mce_derror_table {int dummy; } ;


 scalar_t__ MCE_ERROR_TYPE_UE ;
 scalar_t__ SRR1_MC_LOADSTORE (int ) ;
 int ULONG_MAX ;
 long mce_handle_derror (struct pt_regs*,struct mce_derror_table const*,struct mce_error_info*,int *,int *) ;
 long mce_handle_ierror (struct pt_regs*,struct mce_ierror_table const*,struct mce_error_info*,int *,int *) ;
 long mce_handle_ue_error (struct pt_regs*,struct mce_error_info*) ;
 int save_mce_event (struct pt_regs*,long,struct mce_error_info*,int ,int ,int ) ;

__attribute__((used)) static long mce_handle_error(struct pt_regs *regs,
  const struct mce_derror_table dtable[],
  const struct mce_ierror_table itable[])
{
 struct mce_error_info mce_err = { 0 };
 uint64_t addr, phys_addr = ULONG_MAX;
 uint64_t srr1 = regs->msr;
 long handled;

 if (SRR1_MC_LOADSTORE(srr1))
  handled = mce_handle_derror(regs, dtable, &mce_err, &addr,
    &phys_addr);
 else
  handled = mce_handle_ierror(regs, itable, &mce_err, &addr,
    &phys_addr);

 if (!handled && mce_err.error_type == MCE_ERROR_TYPE_UE)
  handled = mce_handle_ue_error(regs, &mce_err);

 save_mce_event(regs, handled, &mce_err, regs->nip, addr, phys_addr);

 return handled;
}
