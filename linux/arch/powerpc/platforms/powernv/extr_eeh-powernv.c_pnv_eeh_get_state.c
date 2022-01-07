
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_pe {int type; } ;


 int EEH_PE_PHB ;
 int EEH_STATE_UNAVAILABLE ;
 int pnv_eeh_get_pe_state (struct eeh_pe*) ;
 int pnv_eeh_get_phb_state (struct eeh_pe*) ;

__attribute__((used)) static int pnv_eeh_get_state(struct eeh_pe *pe, int *delay)
{
 int ret;

 if (pe->type & EEH_PE_PHB)
  ret = pnv_eeh_get_phb_state(pe);
 else
  ret = pnv_eeh_get_pe_state(pe);

 if (!delay)
  return ret;






 *delay = 0;
 if (ret & EEH_STATE_UNAVAILABLE)
  *delay = 1000;

 return ret;
}
