
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct clk_rate_request {int rate; int min_rate; int max_rate; } ;
struct clk_hw {int dummy; } ;
struct ccu_common {scalar_t__ reg; scalar_t__ base; } ;


 int CCU_MMC_NEW_TIMING_MODE ;
 int ccu_mp_determine_rate (struct clk_hw*,struct clk_rate_request*) ;
 struct ccu_common* hw_to_ccu_common (struct clk_hw*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static int ccu_mp_mmc_determine_rate(struct clk_hw *hw,
         struct clk_rate_request *req)
{
 struct ccu_common *cm = hw_to_ccu_common(hw);
 u32 val = readl(cm->base + cm->reg);
 int ret;


 if (val & CCU_MMC_NEW_TIMING_MODE) {
  req->rate *= 2;
  req->min_rate *= 2;
  req->max_rate *= 2;
 }

 ret = ccu_mp_determine_rate(hw, req);


 if (val & CCU_MMC_NEW_TIMING_MODE) {
  req->rate /= 2;
  req->min_rate /= 2;
  req->max_rate /= 2;
 }

 return ret;
}
