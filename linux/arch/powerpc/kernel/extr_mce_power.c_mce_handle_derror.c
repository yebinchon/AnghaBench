
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct pt_regs {int dsisr; int dar; } ;
struct TYPE_4__ {int link_error_type; int ra_error_type; int user_error_type; int tlb_error_type; int erat_error_type; int slb_error_type; int ue_error_type; } ;
struct mce_error_info {int error_type; int sync_error; int initiator; int severity; int error_class; TYPE_1__ u; } ;
struct mce_derror_table {int dsisr_value; int error_type; int sync_error; scalar_t__ dar_valid; int initiator; int severity; int error_subtype; int error_class; } ;
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
 TYPE_3__* get_paca () ;
 TYPE_2__* local_paca ;
 int mce_find_instr_ea_and_phys (struct pt_regs*,int*,int*) ;
 int mce_flush (int ) ;
 int slb_save_contents (int ) ;

__attribute__((used)) static int mce_handle_derror(struct pt_regs *regs,
  const struct mce_derror_table table[],
  struct mce_error_info *mce_err, uint64_t *addr,
  uint64_t *phys_addr)
{
 uint64_t dsisr = regs->dsisr;
 int handled = 0;
 int found = 0;
 int i;

 *addr = 0;

 for (i = 0; table[i].dsisr_value; i++) {
  if (!(dsisr & table[i].dsisr_value))
   continue;


  switch (table[i].error_type) {
  case 131:
   if (local_paca->in_mce == 1)
    slb_save_contents(local_paca->mce_faulty_slbs);
   if (mce_flush(MCE_FLUSH_SLB))
    handled = 1;
   break;
  case 134:
   if (mce_flush(MCE_FLUSH_ERAT))
    handled = 1;
   break;
  case 130:
   if (mce_flush(MCE_FLUSH_TLB))
    handled = 1;
   break;
  }






  if (found)
   continue;


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
  if (table[i].dar_valid)
   *addr = regs->dar;
  else if (mce_err->sync_error &&
    table[i].error_type == 129) {




   if (get_paca()->in_mce < MAX_MCE_DEPTH)
    mce_find_instr_ea_and_phys(regs, addr,
          phys_addr);
  }
  found = 1;
 }

 if (found)
  return handled;

 mce_err->error_type = MCE_ERROR_TYPE_UNKNOWN;
 mce_err->error_class = MCE_ECLASS_UNKNOWN;
 mce_err->severity = MCE_SEV_SEVERE;
 mce_err->initiator = MCE_INITIATOR_CPU;
 mce_err->sync_error = 1;

 return 0;
}
