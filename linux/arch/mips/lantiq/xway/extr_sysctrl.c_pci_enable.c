
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {scalar_t__ rate; } ;


 scalar_t__ CLOCK_33M ;
 int ifccr ;
 unsigned int ltq_cgu_r32 (int ) ;
 int ltq_cgu_w32 (unsigned int,int ) ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int pmu_enable (struct clk*) ;

__attribute__((used)) static int pci_enable(struct clk *clk)
{
 unsigned int val = ltq_cgu_r32(ifccr);

 if (of_machine_is_compatible("lantiq,ar9") ||
   of_machine_is_compatible("lantiq,vr9")) {
  val &= ~0x1f00000;
  if (clk->rate == CLOCK_33M)
   val |= 0xe00000;
  else
   val |= 0x700000;
 } else {
  val &= ~0xf00000;
  if (clk->rate == CLOCK_33M)
   val |= 0x800000;
  else
   val |= 0x400000;
 }
 ltq_cgu_w32(val, ifccr);
 pmu_enable(clk);
 return 0;
}
