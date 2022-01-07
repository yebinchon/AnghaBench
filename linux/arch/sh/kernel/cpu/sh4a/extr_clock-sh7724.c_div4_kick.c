
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int FRQCRA ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;

__attribute__((used)) static void div4_kick(struct clk *clk)
{
 unsigned long value;


 value = __raw_readl(FRQCRA);
 value |= (1 << 31);
 __raw_writel(value, FRQCRA);
}
