
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int ifccr ;
 int ltq_cgu_r32 (int ) ;
 int ltq_cgu_w32 (int,int ) ;
 int pcicr ;

__attribute__((used)) static int pci_ext_enable(struct clk *clk)
{
 ltq_cgu_w32(ltq_cgu_r32(ifccr) & ~(1 << 16), ifccr);
 ltq_cgu_w32((1 << 30), pcicr);
 return 0;
}
