
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rDspSettings; } ;
typedef TYPE_1__ THINKPAD_BD_DATA ;
typedef int DSP_3780I_CONFIG_SETTINGS ;


 int EIO ;
 int EnableSRAM (TYPE_1__*) ;
 int PRINTK_2 (int ,char*,...) ;
 int TRACE_TP3780I ;
 scalar_t__ dsp3780I_Reset (int *) ;

int tp3780I_ResetDSP(THINKPAD_BD_DATA * pBDData)
{
 int retval = 0;
 DSP_3780I_CONFIG_SETTINGS *pSettings = &pBDData->rDspSettings;

 PRINTK_2(TRACE_TP3780I, "tp3780i::tp3780I_ResetDSP entry pBDData %p\n",
  pBDData);

 if (dsp3780I_Reset(pSettings) == 0) {
  EnableSRAM(pBDData);
 } else {
  retval = -EIO;
 }

 PRINTK_2(TRACE_TP3780I, "tp3780i::tp3780I_ResetDSP exit retval %x\n", retval);

 return retval;
}
