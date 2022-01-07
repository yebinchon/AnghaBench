
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int* cpuctl ;
 int pr_err (char*,int) ;

__attribute__((used)) static unsigned int sc520_freq_get_cpu_frequency(unsigned int cpu)
{
 u8 clockspeed_reg = *cpuctl;

 switch (clockspeed_reg & 0x03) {
 default:
  pr_err("error: cpuctl register has unexpected value %02x\n",
         clockspeed_reg);
 case 0x01:
  return 100000;
 case 0x02:
  return 133000;
 }
}
