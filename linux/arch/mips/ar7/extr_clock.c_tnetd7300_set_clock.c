
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct tnetd7300_clock {int pll; int ctrl; } ;
struct TYPE_4__ {int rate; } ;
struct TYPE_3__ {int rate; } ;


 int AR7_REF_CLOCK ;
 int AR7_XTAL_CLOCK ;


 int BOOT_PLL_SOURCE_MASK ;


 int MUL_SHIFT ;
 int PLL_STATUS ;
 int PREDIV_SHIFT ;
 TYPE_2__ bus_clk ;
 int calculate (int,int,int*,int*,int*) ;
 TYPE_1__ cpu_clk ;
 int mdelay (int) ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void tnetd7300_set_clock(u32 shift, struct tnetd7300_clock *clock,
 u32 *bootcr, u32 frequency)
{
 int prediv, postdiv, mul;
 int base_clock = bus_clk.rate;

 switch ((*bootcr & (BOOT_PLL_SOURCE_MASK << shift)) >> shift) {
 case 131:
  base_clock = bus_clk.rate;
  break;
 case 129:
  base_clock = AR7_REF_CLOCK;
  break;
 case 128:
  base_clock = AR7_XTAL_CLOCK;
  break;
 case 130:
  base_clock = cpu_clk.rate;
  break;
 }

 calculate(base_clock, frequency, &prediv, &postdiv, &mul);

 writel(((prediv - 1) << PREDIV_SHIFT) | (postdiv - 1), &clock->ctrl);
 mdelay(1);
 writel(4, &clock->pll);
 while (readl(&clock->pll) & PLL_STATUS)
  ;
 writel(((mul - 1) << MUL_SHIFT) | (0xff << 3) | 0x0e, &clock->pll);
 mdelay(75);
}
