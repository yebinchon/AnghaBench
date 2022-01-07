
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;
struct ccu_mp {int mux; int common; } ;


 int ccu_mp_round_rate ;
 int ccu_mux_helper_determine_rate (int *,int *,struct clk_rate_request*,int ,struct ccu_mp*) ;
 struct ccu_mp* hw_to_ccu_mp (struct clk_hw*) ;

__attribute__((used)) static int ccu_mp_determine_rate(struct clk_hw *hw,
     struct clk_rate_request *req)
{
 struct ccu_mp *cmp = hw_to_ccu_mp(hw);

 return ccu_mux_helper_determine_rate(&cmp->common, &cmp->mux,
          req, ccu_mp_round_rate, cmp);
}
