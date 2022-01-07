
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_dyn_rcg {int mux_sel_bit; } ;


 int BIT (int ) ;

__attribute__((used)) static int reg_to_bank(struct clk_dyn_rcg *rcg, u32 bank)
{
 bank &= BIT(rcg->mux_sel_bit);
 return !!bank;
}
