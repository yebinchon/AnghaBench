
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;
struct ccu_nkm {int mux; int common; } ;


 int ccu_mux_helper_determine_rate (int *,int *,struct clk_rate_request*,int ,struct ccu_nkm*) ;
 int ccu_nkm_round_rate ;
 struct ccu_nkm* hw_to_ccu_nkm (struct clk_hw*) ;

__attribute__((used)) static int ccu_nkm_determine_rate(struct clk_hw *hw,
      struct clk_rate_request *req)
{
 struct ccu_nkm *nkm = hw_to_ccu_nkm(hw);

 return ccu_mux_helper_determine_rate(&nkm->common, &nkm->mux,
          req, ccu_nkm_round_rate, nkm);
}
