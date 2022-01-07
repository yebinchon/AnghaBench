
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; } ;


 int FRQCR ;
 int __raw_readw (int ) ;
 int * pfc_divisors ;

__attribute__((used)) static void master_clk_init(struct clk *clk)
{
 clk->rate *= pfc_divisors[__raw_readw(FRQCR) & 0x0003];
}
