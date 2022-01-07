
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int clk; } ;


 TYPE_1__* at93c ;
 int at93c_reg_write (int) ;
 int lasat_ndelay (int) ;

__attribute__((used)) static void at93c_cycle_clk(u32 data)
{
 at93c_reg_write(data | at93c->clk);
 lasat_ndelay(250);
 at93c_reg_write(data & ~at93c->clk);
 lasat_ndelay(250);
}
