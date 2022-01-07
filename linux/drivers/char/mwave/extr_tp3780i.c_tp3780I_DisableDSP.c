
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int bInterruptClaimed; int usDspIrq; } ;
struct TYPE_5__ {int bDSPEnabled; TYPE_2__ rDspSettings; } ;
typedef TYPE_1__ THINKPAD_BD_DATA ;
typedef TYPE_2__ DSP_3780I_CONFIG_SETTINGS ;


 int PRINTK_2 (int ,char*,...) ;
 int TRACE_TP3780I ;
 int dsp3780I_DisableDSP (TYPE_2__*) ;
 int free_irq (int ,int *) ;
 int smapi_set_DSP_power_state (int) ;

int tp3780I_DisableDSP(THINKPAD_BD_DATA * pBDData)
{
 int retval = 0;
 DSP_3780I_CONFIG_SETTINGS *pSettings = &pBDData->rDspSettings;

 PRINTK_2(TRACE_TP3780I, "tp3780i::tp3780I_DisableDSP entry pBDData %p\n", pBDData);

 if (pBDData->bDSPEnabled) {
  dsp3780I_DisableDSP(&pBDData->rDspSettings);
  if (pSettings->bInterruptClaimed) {
   free_irq(pSettings->usDspIrq, ((void*)0));
   pSettings->bInterruptClaimed = 0;
  }
  smapi_set_DSP_power_state(0);
  pBDData->bDSPEnabled = 0;
 }

 PRINTK_2(TRACE_TP3780I, "tp3780i::tp3780I_DisableDSP exit retval %x\n", retval);

 return retval;
}
