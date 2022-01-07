
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MSR_FSB_FREQ ;
 int MSR_IA32_EBL_CR_POWERON ;
 int pr_debug (char*,int,int) ;
 int pr_err (char*) ;
 int rdmsr (int ,int,int) ;

__attribute__((used)) static unsigned int pentium_core_get_frequency(void)
{
 u32 fsb = 0;
 u32 msr_lo, msr_tmp;
 int ret;

 rdmsr(MSR_FSB_FREQ, msr_lo, msr_tmp);

 switch (msr_lo & 0x07) {
 case 5:
  fsb = 100000;
  break;
 case 1:
  fsb = 133333;
  break;
 case 3:
  fsb = 166667;
  break;
 case 2:
  fsb = 200000;
  break;
 case 0:
  fsb = 266667;
  break;
 case 4:
  fsb = 333333;
  break;
 default:
  pr_err("PCORE - MSR_FSB_FREQ undefined value\n");
 }

 rdmsr(MSR_IA32_EBL_CR_POWERON, msr_lo, msr_tmp);
 pr_debug("PCORE - MSR_IA32_EBL_CR_POWERON: 0x%x 0x%x\n",
   msr_lo, msr_tmp);

 msr_tmp = (msr_lo >> 22) & 0x1f;
 pr_debug("bits 22-26 are 0x%x, speed is %u\n",
   msr_tmp, (msr_tmp * fsb));

 ret = (msr_tmp * fsb);
 return ret;
}
