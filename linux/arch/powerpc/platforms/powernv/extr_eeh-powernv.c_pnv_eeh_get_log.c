
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_pe {int data; int phb; } ;


 int EEH_EARLY_DUMP_LOG ;
 int eeh_has_flag (int ) ;
 int pnv_pci_dump_phb_diag_data (int ,int ) ;

__attribute__((used)) static int pnv_eeh_get_log(struct eeh_pe *pe, int severity,
      char *drv_log, unsigned long len)
{
 if (!eeh_has_flag(EEH_EARLY_DUMP_LOG))
  pnv_pci_dump_phb_diag_data(pe->phb, pe->data);

 return 0;
}
