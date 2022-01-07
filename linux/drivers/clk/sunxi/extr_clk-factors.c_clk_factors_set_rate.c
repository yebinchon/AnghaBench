
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct factors_request {unsigned long rate; unsigned long parent_rate; int p; int m; int k; int n; } ;
struct clk_hw {int dummy; } ;
struct clk_factors_config {int pwidth; int pshift; int mwidth; int mshift; int kwidth; int kshift; int nwidth; int nshift; } ;
struct clk_factors {scalar_t__ lock; int reg; int (* get_factors ) (struct factors_request*) ;struct clk_factors_config* config; } ;


 int FACTOR_SET (int ,int ,int ,int ) ;
 int __delay (unsigned long) ;
 int readl (int ) ;
 int spin_lock_irqsave (scalar_t__,unsigned long) ;
 int spin_unlock_irqrestore (scalar_t__,unsigned long) ;
 int stub1 (struct factors_request*) ;
 struct clk_factors* to_clk_factors (struct clk_hw*) ;
 int writel (int ,int ) ;

__attribute__((used)) static int clk_factors_set_rate(struct clk_hw *hw, unsigned long rate,
    unsigned long parent_rate)
{
 struct factors_request req = {
  .rate = rate,
  .parent_rate = parent_rate,
 };
 u32 reg;
 struct clk_factors *factors = to_clk_factors(hw);
 const struct clk_factors_config *config = factors->config;
 unsigned long flags = 0;

 factors->get_factors(&req);

 if (factors->lock)
  spin_lock_irqsave(factors->lock, flags);


 reg = readl(factors->reg);


 reg = FACTOR_SET(config->nshift, config->nwidth, reg, req.n);
 reg = FACTOR_SET(config->kshift, config->kwidth, reg, req.k);
 reg = FACTOR_SET(config->mshift, config->mwidth, reg, req.m);
 reg = FACTOR_SET(config->pshift, config->pwidth, reg, req.p);


 writel(reg, factors->reg);


 __delay((rate >> 20) * 500 / 2);

 if (factors->lock)
  spin_unlock_irqrestore(factors->lock, flags);

 return 0;
}
