
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alchemy_fgcs_clk {int shift; int parent; int isen; int reg; } ;


 unsigned long alchemy_rdsys (int ) ;
 int alchemy_wrsys (unsigned long,int ) ;

__attribute__((used)) static void __alchemy_clk_fgv2_en(struct alchemy_fgcs_clk *c)
{
 unsigned long v = alchemy_rdsys(c->reg);

 v &= ~(3 << c->shift);
 v |= (c->parent & 3) << c->shift;
 alchemy_wrsys(v, c->reg);
 c->isen = 1;
}
