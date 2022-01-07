
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_pe {int state; } ;


 int EEH_PE_RECOVERING ;
 int eeh_clear_pe_frozen_state (struct eeh_pe*,int) ;
 int eeh_dev_restore_state ;
 int eeh_dev_save_state ;
 int eeh_pe_dev_traverse (struct eeh_pe*,int ,int *) ;
 int eeh_pe_reset_full (struct eeh_pe*,int) ;
 int eeh_pe_state_clear (struct eeh_pe*,int,int) ;
 int eeh_pe_state_mark (struct eeh_pe*,int) ;

int eeh_pe_reset_and_recover(struct eeh_pe *pe)
{
 int ret;


 if (pe->state & EEH_PE_RECOVERING)
  return 0;


 eeh_pe_state_mark(pe, EEH_PE_RECOVERING);


 eeh_pe_dev_traverse(pe, eeh_dev_save_state, ((void*)0));


 ret = eeh_pe_reset_full(pe, 1);
 if (ret) {
  eeh_pe_state_clear(pe, EEH_PE_RECOVERING, 1);
  return ret;
 }


 ret = eeh_clear_pe_frozen_state(pe, 1);
 if (ret) {
  eeh_pe_state_clear(pe, EEH_PE_RECOVERING, 1);
  return ret;
 }


 eeh_pe_dev_traverse(pe, eeh_dev_restore_state, ((void*)0));


 eeh_pe_state_clear(pe, EEH_PE_RECOVERING, 1);

 return 0;
}
