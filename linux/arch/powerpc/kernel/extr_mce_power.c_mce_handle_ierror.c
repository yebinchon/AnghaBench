
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct pt_regs {int msr; int nip; } ;
struct mce_ierror_table {int srr1_mask; int srr1_value; int error_type; int sync_error; scalar_t__ nip_valid; int initiator; int severity; int error_subtype; int error_class; } ;
struct TYPE_4__ {int link_error_type; int ra_error_type; int user_error_type; int tlb_error_type; int erat_error_type; int slb_error_type; int ue_error_type; } ;
struct mce_error_info {int error_type; int sync_error; int initiator; int severity; int error_class; TYPE_1__ u; } ;
struct TYPE_6__ {scalar_t__ in_mce; } ;
struct TYPE_5__ {int in_mce; int mce_faulty_slbs; } ;


 scalar_t__ MAX_MCE_DEPTH ;
 int MCE_ECLASS_UNKNOWN ;






 int MCE_ERROR_TYPE_UNKNOWN ;

 int MCE_FLUSH_ERAT ;
 int MCE_FLUSH_SLB ;
 int MCE_FLUSH_TLB ;
 int MCE_INITIATOR_CPU ;
 int MCE_SEV_SEVERE ;
 unsigned long PAGE_SHIFT ;
 unsigned long ULONG_MAX ;
 unsigned long addr_to_pfn (struct pt_regs*,int) ;
 TYPE_3__* get_paca () ;
 TYPE_2__* local_paca ;
 int mce_flush (int ) ;
 int slb_save_contents (int ) ;

__attribute__((used)) static int mce_handle_ierror(struct pt_regs *regs,
  const struct mce_ierror_table table[],
  struct mce_error_info *mce_err, uint64_t *addr,
  uint64_t *phys_addr)
{
 uint64_t srr1 = regs->msr;
 int handled = 0;
 int i;

 *addr = 0;

 for (i = 0; table[i].srr1_mask; i++) {
  if ((srr1 & table[i].srr1_mask) != table[i].srr1_value)
   continue;


  switch (table[i].error_type) {
  case 131:
   if (local_paca->in_mce == 1)
    slb_save_contents(local_paca->mce_faulty_slbs);
   handled = mce_flush(MCE_FLUSH_SLB);
   break;
  case 134:
   handled = mce_flush(MCE_FLUSH_ERAT);
   break;
  case 130:
   handled = mce_flush(MCE_FLUSH_TLB);
   break;
  }


  mce_err->error_type = table[i].error_type;
  mce_err->error_class = table[i].error_class;
  switch (table[i].error_type) {
  case 129:
   mce_err->u.ue_error_type = table[i].error_subtype;
   break;
  case 131:
   mce_err->u.slb_error_type = table[i].error_subtype;
   break;
  case 134:
   mce_err->u.erat_error_type = table[i].error_subtype;
   break;
  case 130:
   mce_err->u.tlb_error_type = table[i].error_subtype;
   break;
  case 128:
   mce_err->u.user_error_type = table[i].error_subtype;
   break;
  case 132:
   mce_err->u.ra_error_type = table[i].error_subtype;
   break;
  case 133:
   mce_err->u.link_error_type = table[i].error_subtype;
   break;
  }
  mce_err->sync_error = table[i].sync_error;
  mce_err->severity = table[i].severity;
  mce_err->initiator = table[i].initiator;
  if (table[i].nip_valid) {
   *addr = regs->nip;
   if (mce_err->sync_error &&
    table[i].error_type == 129) {
    unsigned long pfn;

    if (get_paca()->in_mce < MAX_MCE_DEPTH) {
     pfn = addr_to_pfn(regs, regs->nip);
     if (pfn != ULONG_MAX) {
      *phys_addr =
       (pfn << PAGE_SHIFT);
     }
    }
   }
  }
  return handled;
 }

 mce_err->error_type = MCE_ERROR_TYPE_UNKNOWN;
 mce_err->error_class = MCE_ECLASS_UNKNOWN;
 mce_err->severity = MCE_SEV_SEVERE;
 mce_err->initiator = MCE_INITIATOR_CPU;
 mce_err->sync_error = 1;

 return 0;
}
