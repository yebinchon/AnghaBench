
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* pMWAVE_DEVICE_DATA ;
typedef int irqreturn_t ;
struct TYPE_9__ {unsigned short usDspBaseIO; } ;
struct TYPE_6__ {TYPE_4__ rDspSettings; } ;
struct TYPE_8__ {TYPE_2__* IPCs; TYPE_1__ rBDData; } ;
struct TYPE_7__ {int usIntCount; int bIsEnabled; int ipc_wait_queue; } ;
typedef TYPE_4__ DSP_3780I_CONFIG_SETTINGS ;


 int IRQ_HANDLED ;
 int PRINTK_1 (int ,char*) ;
 int PRINTK_2 (int ,char*,unsigned short) ;
 int PRINTK_3 (int ,char*,unsigned short,unsigned short) ;
 int TRACE_TP3780I ;
 scalar_t__ dsp3780I_GetIPCSource (unsigned short,unsigned short*) ;
 TYPE_3__ mwave_s_mdd ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static irqreturn_t DspInterrupt(int irq, void *dev_id)
{
 pMWAVE_DEVICE_DATA pDrvData = &mwave_s_mdd;
 DSP_3780I_CONFIG_SETTINGS *pSettings = &pDrvData->rBDData.rDspSettings;
 unsigned short usDspBaseIO = pSettings->usDspBaseIO;
 unsigned short usIPCSource = 0, usIsolationMask, usPCNum;

 PRINTK_3(TRACE_TP3780I,
  "tp3780i::DspInterrupt entry irq %x dev_id %p\n", irq, dev_id);

 if (dsp3780I_GetIPCSource(usDspBaseIO, &usIPCSource) == 0) {
  PRINTK_2(TRACE_TP3780I,
   "tp3780i::DspInterrupt, return from dsp3780i_GetIPCSource, usIPCSource %x\n",
   usIPCSource);
  usIsolationMask = 1;
  for (usPCNum = 1; usPCNum <= 16; usPCNum++) {
   if (usIPCSource & usIsolationMask) {
    usIPCSource &= ~usIsolationMask;
    PRINTK_3(TRACE_TP3780I,
     "tp3780i::DspInterrupt usPCNum %x usIPCSource %x\n",
     usPCNum, usIPCSource);
    if (pDrvData->IPCs[usPCNum - 1].usIntCount == 0) {
     pDrvData->IPCs[usPCNum - 1].usIntCount = 1;
    }
    PRINTK_2(TRACE_TP3780I,
     "tp3780i::DspInterrupt usIntCount %x\n",
     pDrvData->IPCs[usPCNum - 1].usIntCount);
    if (pDrvData->IPCs[usPCNum - 1].bIsEnabled == 1) {
     PRINTK_2(TRACE_TP3780I,
      "tp3780i::DspInterrupt, waking up usPCNum %x\n",
      usPCNum - 1);
     wake_up_interruptible(&pDrvData->IPCs[usPCNum - 1].ipc_wait_queue);
    } else {
     PRINTK_2(TRACE_TP3780I,
      "tp3780i::DspInterrupt, no one waiting for IPC %x\n",
      usPCNum - 1);
    }
   }
   if (usIPCSource == 0)
    break;

   usIsolationMask = usIsolationMask << 1;
  }
 } else {
  PRINTK_1(TRACE_TP3780I,
   "tp3780i::DspInterrupt, return false from dsp3780i_GetIPCSource\n");
 }
 PRINTK_1(TRACE_TP3780I, "tp3780i::DspInterrupt exit\n");
 return IRQ_HANDLED;
}
