
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk {int parent; } ;


 int EP93XX_SYSCON_PWRCNT ;
 int EP93XX_SYSCON_PWRCNT_UARTBAUD ;
 int __raw_readl (int ) ;
 unsigned long clk_get_rate (int ) ;

__attribute__((used)) static unsigned long get_uart_rate(struct clk *clk)
{
 unsigned long rate = clk_get_rate(clk->parent);
 u32 value;

 value = __raw_readl(EP93XX_SYSCON_PWRCNT);
 if (value & EP93XX_SYSCON_PWRCNT_UARTBAUD)
  return rate;
 else
  return rate / 2;
}
