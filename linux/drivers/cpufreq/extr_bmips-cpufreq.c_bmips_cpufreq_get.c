
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uint32_t ;
struct TYPE_2__ {int bmips_type; int clk_mult; } ;




 unsigned int BMIPS5_CLK_DIV_MASK ;
 unsigned int BMIPS5_CLK_DIV_SHIFT ;
 int htp_freq_to_cpu_freq (int ) ;
 TYPE_1__* priv ;
 unsigned int read_c0_brcm_mode () ;

__attribute__((used)) static unsigned int bmips_cpufreq_get(unsigned int cpu)
{
 unsigned int div;
 uint32_t mode;

 switch (priv->bmips_type) {
 case 128:
 case 129:
  mode = read_c0_brcm_mode();
  div = ((mode >> BMIPS5_CLK_DIV_SHIFT) & BMIPS5_CLK_DIV_MASK);
  break;
 default:
  div = 0;
 }

 return htp_freq_to_cpu_freq(priv->clk_mult) / (1 << div);
}
