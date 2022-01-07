
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eeh_pe {int config_addr; int addr; TYPE_1__* phb; } ;
struct TYPE_2__ {int buid; } ;


 int BUID_HI (int ) ;
 int BUID_LO (int ) ;
 int EEH_PE_RST_HOLD_TIME ;
 int EEH_PE_RST_SETTLE_TIME ;
 int EEH_RESET_FUNDAMENTAL ;
 int EEH_RESET_HOT ;
 int ibm_set_slot_reset ;
 int msleep (int ) ;
 int rtas_call (int ,int,int,int *,int,int ,int ,int) ;

__attribute__((used)) static int pseries_eeh_reset(struct eeh_pe *pe, int option)
{
 int config_addr;
 int ret;


 config_addr = pe->config_addr;
 if (pe->addr)
  config_addr = pe->addr;


 ret = rtas_call(ibm_set_slot_reset, 4, 1, ((void*)0),
   config_addr, BUID_HI(pe->phb->buid),
   BUID_LO(pe->phb->buid), option);


 if (option == EEH_RESET_FUNDAMENTAL &&
     ret == -8) {
  option = EEH_RESET_HOT;
  ret = rtas_call(ibm_set_slot_reset, 4, 1, ((void*)0),
    config_addr, BUID_HI(pe->phb->buid),
    BUID_LO(pe->phb->buid), option);
 }


 if (option == EEH_RESET_FUNDAMENTAL ||
     option == EEH_RESET_HOT)
  msleep(EEH_PE_RST_HOLD_TIME);
 else
  msleep(EEH_PE_RST_SETTLE_TIME);

 return ret;
}
