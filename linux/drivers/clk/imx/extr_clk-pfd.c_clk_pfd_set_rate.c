
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct clk_pfd {int idx; scalar_t__ reg; } ;
struct clk_hw {int dummy; } ;


 scalar_t__ CLR ;
 scalar_t__ SET ;
 int do_div (int,unsigned long) ;
 struct clk_pfd* to_clk_pfd (struct clk_hw*) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int clk_pfd_set_rate(struct clk_hw *hw, unsigned long rate,
  unsigned long parent_rate)
{
 struct clk_pfd *pfd = to_clk_pfd(hw);
 u64 tmp = parent_rate;
 u8 frac;

 tmp = tmp * 18 + rate / 2;
 do_div(tmp, rate);
 frac = tmp;
 if (frac < 12)
  frac = 12;
 else if (frac > 35)
  frac = 35;

 writel_relaxed(0x3f << (pfd->idx * 8), pfd->reg + CLR);
 writel_relaxed(frac << (pfd->idx * 8), pfd->reg + SET);

 return 0;
}
