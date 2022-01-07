
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned short usDspBaseIO; } ;
struct TYPE_5__ {int ClockControl; int SoftReset; int ConfigMode; scalar_t__ Reserved; } ;
typedef TYPE_1__ DSP_ISA_SLAVE_CONTROL ;
typedef TYPE_2__ DSP_3780I_CONFIG_SETTINGS ;


 int DSP_IsaSlaveControl ;
 int MKWORD (TYPE_1__) ;
 int OutWordDsp (int ,int ) ;
 int PRINTK_1 (int ,char*) ;
 int TRACE_3780I ;
 int dsp_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;

int dsp3780I_DisableDSP(DSP_3780I_CONFIG_SETTINGS * pSettings)
{
 unsigned long flags;
 unsigned short usDspBaseIO = pSettings->usDspBaseIO;
 DSP_ISA_SLAVE_CONTROL rSlaveControl;


 PRINTK_1(TRACE_3780I, "3780i::dsp3780i_DisableDSP entry\n");

 rSlaveControl.ClockControl = 0;
 rSlaveControl.SoftReset = 1;
 rSlaveControl.ConfigMode = 0;
 rSlaveControl.Reserved = 0;
 spin_lock_irqsave(&dsp_lock, flags);
 OutWordDsp(DSP_IsaSlaveControl, MKWORD(rSlaveControl));

 udelay(5);

 rSlaveControl.ClockControl = 1;
 OutWordDsp(DSP_IsaSlaveControl, MKWORD(rSlaveControl));
 spin_unlock_irqrestore(&dsp_lock, flags);

 udelay(5);


 PRINTK_1(TRACE_3780I, "3780i::dsp3780i_DisableDSP exit\n");

 return 0;
}
