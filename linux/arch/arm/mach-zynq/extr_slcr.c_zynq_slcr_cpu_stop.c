
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int SLCR_A9_CPU_CLKSTOP ;
 int SLCR_A9_CPU_RST ;
 int SLCR_A9_CPU_RST_CTRL_OFFSET ;
 int zynq_slcr_read (int*,int ) ;
 int zynq_slcr_write (int,int ) ;

void zynq_slcr_cpu_stop(int cpu)
{
 u32 reg;

 zynq_slcr_read(&reg, SLCR_A9_CPU_RST_CTRL_OFFSET);
 reg |= (SLCR_A9_CPU_CLKSTOP | SLCR_A9_CPU_RST) << cpu;
 zynq_slcr_write(reg, SLCR_A9_CPU_RST_CTRL_OFFSET);
}
