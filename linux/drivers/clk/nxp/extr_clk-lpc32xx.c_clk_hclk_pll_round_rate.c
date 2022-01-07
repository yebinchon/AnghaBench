
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct lpc32xx_pll_clk {int m_div; int n_div; int p_div; int mode; } ;
struct clk_hw {int dummy; } ;


 long EINVAL ;
 int PLL_DIRECT ;
 int PLL_NON_INTEGER ;
 int clk_hw_get_name (struct clk_hw*) ;
 int div64_u64 (int,int) ;
 scalar_t__ pll_is_valid (int,int,int,int) ;
 int pr_debug (char*,int ,unsigned long,int,...) ;
 int pr_err (char*,int ,unsigned long) ;
 struct lpc32xx_pll_clk* to_lpc32xx_pll_clk (struct clk_hw*) ;

__attribute__((used)) static long clk_hclk_pll_round_rate(struct clk_hw *hw, unsigned long rate,
        unsigned long *parent_rate)
{
 struct lpc32xx_pll_clk *clk = to_lpc32xx_pll_clk(hw);
 u64 m_i, o = rate, i = *parent_rate, d = (u64)rate << 6;
 u64 m = 0, n = 0, p = 0;
 int p_i, n_i;

 pr_debug("%s: %lu/%lu\n", clk_hw_get_name(hw), *parent_rate, rate);

 if (rate > 266500000)
  return -EINVAL;


 for (p_i = 4; p_i >= 0; p_i--) {
  for (n_i = 4; n_i > 0; n_i--) {
   m_i = div64_u64(o * n_i * (1 << p_i), i);


   if (!(m_i && m_i <= 256
         && pll_is_valid(i, n_i, 1000000, 27000000)
         && pll_is_valid(i * m_i * (1 << p_i), n_i,
           156000000, 320000000)))
    continue;


   if (o * n_i * (1 << p_i) - i * m_i <= d) {
    m = m_i;
    n = n_i;
    p = p_i;
    d = o * n_i * (1 << p_i) - i * m_i;
   }
  }
 }

 if (d == (u64)rate << 6) {
  pr_err("%s: %lu: no valid PLL parameters are found\n",
         clk_hw_get_name(hw), rate);
  return -EINVAL;
 }

 clk->m_div = m;
 clk->n_div = n;
 clk->p_div = p;


 if (!p)
  clk->mode = PLL_DIRECT;
 else
  clk->mode = PLL_NON_INTEGER;

 o = div64_u64(i * m, n * (1 << p));

 if (!d)
  pr_debug("%s: %lu: found exact match: %llu/%llu/%llu\n",
    clk_hw_get_name(hw), rate, m, n, p);
 else
  pr_debug("%s: %lu: found closest: %llu/%llu/%llu - %llu\n",
    clk_hw_get_name(hw), rate, m, n, p, o);

 return o;
}
