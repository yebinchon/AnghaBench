
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct clk_pfd {int idx; int reg; } ;
struct clk_hw {int dummy; } ;


 int do_div (int,int) ;
 int readl_relaxed (int ) ;
 struct clk_pfd* to_clk_pfd (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_pfd_recalc_rate(struct clk_hw *hw,
      unsigned long parent_rate)
{
 struct clk_pfd *pfd = to_clk_pfd(hw);
 u64 tmp = parent_rate;
 u8 frac = (readl_relaxed(pfd->reg) >> (pfd->idx * 8)) & 0x3f;

 tmp *= 18;
 do_div(tmp, frac);

 return tmp;
}
