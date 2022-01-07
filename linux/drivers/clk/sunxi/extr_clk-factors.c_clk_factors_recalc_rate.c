
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned long u8 ;
typedef int u32 ;
struct factors_request {unsigned long parent_rate; unsigned long n; unsigned long k; unsigned long m; unsigned long p; int parent_index; unsigned long rate; } ;
struct clk_hw {int dummy; } ;
struct clk_factors_config {scalar_t__ nwidth; scalar_t__ kwidth; scalar_t__ mwidth; scalar_t__ pwidth; unsigned long n_start; int pshift; int mshift; int kshift; int nshift; } ;
struct clk_factors {int (* recalc ) (struct factors_request*) ;TYPE_1__* mux; int reg; struct clk_factors_config* config; } ;
struct TYPE_2__ {int shift; int mask; } ;


 unsigned long FACTOR_GET (int ,scalar_t__,int) ;
 scalar_t__ SUNXI_FACTORS_NOT_APPLICABLE ;
 int readl (int ) ;
 int stub1 (struct factors_request*) ;
 struct clk_factors* to_clk_factors (struct clk_hw*) ;

__attribute__((used)) static unsigned long clk_factors_recalc_rate(struct clk_hw *hw,
          unsigned long parent_rate)
{
 u8 n = 1, k = 0, p = 0, m = 0;
 u32 reg;
 unsigned long rate;
 struct clk_factors *factors = to_clk_factors(hw);
 const struct clk_factors_config *config = factors->config;


 reg = readl(factors->reg);


 if (config->nwidth != SUNXI_FACTORS_NOT_APPLICABLE)
  n = FACTOR_GET(config->nshift, config->nwidth, reg);
 if (config->kwidth != SUNXI_FACTORS_NOT_APPLICABLE)
  k = FACTOR_GET(config->kshift, config->kwidth, reg);
 if (config->mwidth != SUNXI_FACTORS_NOT_APPLICABLE)
  m = FACTOR_GET(config->mshift, config->mwidth, reg);
 if (config->pwidth != SUNXI_FACTORS_NOT_APPLICABLE)
  p = FACTOR_GET(config->pshift, config->pwidth, reg);

 if (factors->recalc) {
  struct factors_request factors_req = {
   .parent_rate = parent_rate,
   .n = n,
   .k = k,
   .m = m,
   .p = p,
  };


  if (factors->mux)
   factors_req.parent_index =
    (reg >> factors->mux->shift) &
    factors->mux->mask;

  factors->recalc(&factors_req);

  return factors_req.rate;
 }


 rate = (parent_rate * (n + config->n_start) * (k + 1) >> p) / (m + 1);

 return rate;
}
