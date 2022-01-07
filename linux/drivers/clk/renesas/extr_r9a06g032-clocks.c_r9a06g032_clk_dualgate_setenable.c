
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct r9a06g032_clk_dualgate {int * gate; int clocks; int selector; } ;


 size_t clk_rdesc_get (int ,int ) ;
 int r9a06g032_clk_gate_set (int ,int *,int) ;

__attribute__((used)) static int
r9a06g032_clk_dualgate_setenable(struct r9a06g032_clk_dualgate *g, int enable)
{
 u8 sel_bit = clk_rdesc_get(g->clocks, g->selector);


 r9a06g032_clk_gate_set(g->clocks, &g->gate[!sel_bit], 0);
 r9a06g032_clk_gate_set(g->clocks, &g->gate[sel_bit], enable);

 return 0;
}
