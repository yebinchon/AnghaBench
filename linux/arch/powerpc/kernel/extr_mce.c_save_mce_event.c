
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct pt_regs {int msr; int * gpr; } ;
struct mce_error_info {int ignore_event; int error_class; int sync_error; int severity; int initiator; } ;
struct TYPE_16__ {int effective_address_provided; int physical_address_provided; int ignore_event; scalar_t__ physical_address; scalar_t__ effective_address; } ;
struct TYPE_15__ {int effective_address_provided; scalar_t__ effective_address; } ;
struct TYPE_14__ {int effective_address_provided; scalar_t__ effective_address; } ;
struct TYPE_13__ {int effective_address_provided; scalar_t__ effective_address; } ;
struct TYPE_12__ {int effective_address_provided; scalar_t__ effective_address; } ;
struct TYPE_11__ {int effective_address_provided; scalar_t__ effective_address; } ;
struct TYPE_10__ {int effective_address_provided; scalar_t__ effective_address; } ;
struct TYPE_17__ {TYPE_7__ ue_error; TYPE_6__ link_error; TYPE_5__ ra_error; TYPE_4__ user_error; TYPE_3__ erat_error; TYPE_2__ slb_error; TYPE_1__ tlb_error; } ;
struct machine_check_event {int srr1; int in_use; scalar_t__ error_type; TYPE_8__ u; int error_class; int sync_error; int severity; int initiator; int disposition; int cpu; int gpr3; scalar_t__ srr0; int version; } ;
struct TYPE_18__ {int paca_index; } ;


 int MAX_MC_EVT ;
 int MCE_DISPOSITION_NOT_RECOVERED ;
 int MCE_DISPOSITION_RECOVERED ;
 scalar_t__ MCE_ERROR_TYPE_ERAT ;
 scalar_t__ MCE_ERROR_TYPE_LINK ;
 scalar_t__ MCE_ERROR_TYPE_RA ;
 scalar_t__ MCE_ERROR_TYPE_SLB ;
 scalar_t__ MCE_ERROR_TYPE_TLB ;
 scalar_t__ MCE_ERROR_TYPE_UE ;
 scalar_t__ MCE_ERROR_TYPE_USER ;
 int MCE_V1 ;
 int MSR_RI ;
 scalar_t__ ULONG_MAX ;
 int __this_cpu_inc_return (int ) ;
 TYPE_9__* get_paca () ;
 int machine_check_ue_event (struct machine_check_event*) ;
 int * mce_event ;
 int mce_nest_count ;
 int mce_set_error_info (struct machine_check_event*,struct mce_error_info*) ;
 struct machine_check_event* this_cpu_ptr (int *) ;

void save_mce_event(struct pt_regs *regs, long handled,
      struct mce_error_info *mce_err,
      uint64_t nip, uint64_t addr, uint64_t phys_addr)
{
 int index = __this_cpu_inc_return(mce_nest_count) - 1;
 struct machine_check_event *mce = this_cpu_ptr(&mce_event[index]);






 if (index >= MAX_MC_EVT)
  return;


 mce->version = MCE_V1;
 mce->srr0 = nip;
 mce->srr1 = regs->msr;
 mce->gpr3 = regs->gpr[3];
 mce->in_use = 1;
 mce->cpu = get_paca()->paca_index;


 if (handled && (regs->msr & MSR_RI))
  mce->disposition = MCE_DISPOSITION_RECOVERED;
 else
  mce->disposition = MCE_DISPOSITION_NOT_RECOVERED;

 mce->initiator = mce_err->initiator;
 mce->severity = mce_err->severity;
 mce->sync_error = mce_err->sync_error;
 mce->error_class = mce_err->error_class;




 mce_set_error_info(mce, mce_err);

 if (!addr)
  return;

 if (mce->error_type == MCE_ERROR_TYPE_TLB) {
  mce->u.tlb_error.effective_address_provided = 1;
  mce->u.tlb_error.effective_address = addr;
 } else if (mce->error_type == MCE_ERROR_TYPE_SLB) {
  mce->u.slb_error.effective_address_provided = 1;
  mce->u.slb_error.effective_address = addr;
 } else if (mce->error_type == MCE_ERROR_TYPE_ERAT) {
  mce->u.erat_error.effective_address_provided = 1;
  mce->u.erat_error.effective_address = addr;
 } else if (mce->error_type == MCE_ERROR_TYPE_USER) {
  mce->u.user_error.effective_address_provided = 1;
  mce->u.user_error.effective_address = addr;
 } else if (mce->error_type == MCE_ERROR_TYPE_RA) {
  mce->u.ra_error.effective_address_provided = 1;
  mce->u.ra_error.effective_address = addr;
 } else if (mce->error_type == MCE_ERROR_TYPE_LINK) {
  mce->u.link_error.effective_address_provided = 1;
  mce->u.link_error.effective_address = addr;
 } else if (mce->error_type == MCE_ERROR_TYPE_UE) {
  mce->u.ue_error.effective_address_provided = 1;
  mce->u.ue_error.effective_address = addr;
  if (phys_addr != ULONG_MAX) {
   mce->u.ue_error.physical_address_provided = 1;
   mce->u.ue_error.physical_address = phys_addr;
   mce->u.ue_error.ignore_event = mce_err->ignore_event;
   machine_check_ue_event(mce);
  }
 }
 return;
}
