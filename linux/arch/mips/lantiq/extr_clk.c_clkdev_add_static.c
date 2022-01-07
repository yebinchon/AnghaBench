
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long rate; } ;


 TYPE_1__* cpu_clk_generic ;

void clkdev_add_static(unsigned long cpu, unsigned long fpi,
   unsigned long io, unsigned long ppe)
{
 cpu_clk_generic[0].rate = cpu;
 cpu_clk_generic[1].rate = fpi;
 cpu_clk_generic[2].rate = io;
 cpu_clk_generic[3].rate = ppe;
}
