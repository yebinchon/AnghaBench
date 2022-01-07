
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tegra_dfll {int lut_safe; int cg; } ;
struct dfll_rate_req {int lut_index; int mult_bits; int scale_bits; } ;


 int DFLL_FREQ_REQ ;
 int DFLL_FREQ_REQ_FORCE_ENABLE ;
 int DFLL_FREQ_REQ_FORCE_MASK ;
 int DFLL_FREQ_REQ_FORCE_SHIFT ;
 int DFLL_FREQ_REQ_FREQ_VALID ;
 int DFLL_FREQ_REQ_MULT_SHIFT ;
 int DFLL_FREQ_REQ_SCALE_SHIFT ;
 int FORCE_MAX ;
 int FORCE_MIN ;
 int clamp (int,int ,int ) ;
 int dfll_wmb (struct tegra_dfll*) ;
 int dfll_writel (struct tegra_dfll*,int,int ) ;

__attribute__((used)) static void dfll_set_frequency_request(struct tegra_dfll *td,
           struct dfll_rate_req *req)
{
 u32 val = 0;
 int force_val;
 int coef = 128; ;

 force_val = (req->lut_index - td->lut_safe) * coef / td->cg;
 force_val = clamp(force_val, FORCE_MIN, FORCE_MAX);

 val |= req->mult_bits << DFLL_FREQ_REQ_MULT_SHIFT;
 val |= req->scale_bits << DFLL_FREQ_REQ_SCALE_SHIFT;
 val |= ((u32)force_val << DFLL_FREQ_REQ_FORCE_SHIFT) &
  DFLL_FREQ_REQ_FORCE_MASK;
 val |= DFLL_FREQ_REQ_FREQ_VALID | DFLL_FREQ_REQ_FORCE_ENABLE;

 dfll_writel(td, val, DFLL_FREQ_REQ);
 dfll_wmb(td);
}
