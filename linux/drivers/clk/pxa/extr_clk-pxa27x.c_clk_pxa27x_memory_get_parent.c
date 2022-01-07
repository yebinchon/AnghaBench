
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct clk_hw {int dummy; } ;


 int CCCR ;
 int CCCR_A_BIT ;
 int CCCR_CPDIS_BIT ;
 int CCSR ;
 int PXA_MEM_13Mhz ;
 int PXA_MEM_RUN ;
 int PXA_MEM_SYSTEM_BUS ;
 unsigned long readl (int ) ;

__attribute__((used)) static u8 clk_pxa27x_memory_get_parent(struct clk_hw *hw)
{
 unsigned int osc_forced, a;
 unsigned long cccr = readl(CCCR);
 unsigned long ccsr = readl(CCSR);

 osc_forced = ccsr & (1 << CCCR_CPDIS_BIT);
 a = cccr & (1 << CCCR_A_BIT);
 if (osc_forced)
  return PXA_MEM_13Mhz;
 if (a)
  return PXA_MEM_SYSTEM_BUS;
 else
  return PXA_MEM_RUN;
}
