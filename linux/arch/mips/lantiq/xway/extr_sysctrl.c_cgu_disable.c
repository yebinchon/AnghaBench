
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int bits; } ;


 int ifccr ;
 int ltq_cgu_r32 (int ) ;
 int ltq_cgu_w32 (int,int ) ;

__attribute__((used)) static void cgu_disable(struct clk *clk)
{
 ltq_cgu_w32(ltq_cgu_r32(ifccr) & ~clk->bits, ifccr);
}
