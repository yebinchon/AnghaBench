
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_rate_request {int dummy; } ;
struct clk_hw {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int pxa27x_freqs ;
 int pxa2xx_determine_rate (struct clk_rate_request*,int ,int ) ;

__attribute__((used)) static int clk_pxa27x_cpll_determine_rate(struct clk_hw *hw,
       struct clk_rate_request *req)
{
 return pxa2xx_determine_rate(req, pxa27x_freqs,
         ARRAY_SIZE(pxa27x_freqs));
}
