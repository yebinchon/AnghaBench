
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CGU_SYS_XRX ;
 int ltq_cgu_r32 (int ) ;
 unsigned int ltq_vr9_cpu_hz () ;

unsigned long ltq_vr9_fpi_hz(void)
{
 unsigned int ocp_sel, cpu_clk;
 unsigned long clk;

 cpu_clk = ltq_vr9_cpu_hz();
 ocp_sel = ltq_cgu_r32(CGU_SYS_XRX) & 0x3;

 switch (ocp_sel) {
 case 0:

  clk = cpu_clk;
  break;
 case 2:

  clk = cpu_clk / 2;
  break;
 case 3:

  clk = (cpu_clk * 2) / 5;
  break;
 case 4:

  clk = cpu_clk / 3;
  break;
 default:
  clk = 0;
  break;
 }

 return clk;
}
