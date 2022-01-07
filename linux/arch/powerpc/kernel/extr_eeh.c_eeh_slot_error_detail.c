
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeh_pe {int type; int state; } ;
struct TYPE_2__ {int (* get_log ) (struct eeh_pe*,int,scalar_t__*,size_t) ;int (* configure_bridge ) (struct eeh_pe*) ;} ;


 int EEH_ENABLE_IO_FOR_LOG ;
 int EEH_LOG_PERM ;
 int EEH_OPT_THAW_MMIO ;
 int EEH_PE_CFG_BLOCKED ;
 int EEH_PE_PHB ;
 int eeh_dump_pe_log ;
 scalar_t__ eeh_has_flag (int ) ;
 TYPE_1__* eeh_ops ;
 int eeh_pci_enable (struct eeh_pe*,int ) ;
 int eeh_pe_restore_bars (struct eeh_pe*) ;
 int eeh_pe_traverse (struct eeh_pe*,int ,size_t*) ;
 scalar_t__* pci_regs_buf ;
 int stub1 (struct eeh_pe*) ;
 int stub2 (struct eeh_pe*,int,scalar_t__*,size_t) ;

void eeh_slot_error_detail(struct eeh_pe *pe, int severity)
{
 size_t loglen = 0;
 if (!(pe->type & EEH_PE_PHB)) {
  if (eeh_has_flag(EEH_ENABLE_IO_FOR_LOG) ||
      severity == EEH_LOG_PERM)
   eeh_pci_enable(pe, EEH_OPT_THAW_MMIO);
  eeh_ops->configure_bridge(pe);
  if (!(pe->state & EEH_PE_CFG_BLOCKED)) {
   eeh_pe_restore_bars(pe);

   pci_regs_buf[0] = 0;
   eeh_pe_traverse(pe, eeh_dump_pe_log, &loglen);
  }
 }

 eeh_ops->get_log(pe, severity, pci_regs_buf, loglen);
}
