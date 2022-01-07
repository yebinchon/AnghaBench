
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ pdiv; } ;


 scalar_t__ EINVAL ;
 int PLL_QLIN_PDIV_MAX ;
 TYPE_1__* pll_qlin_pdiv_to_hw ;

__attribute__((used)) static u32 pll_qlin_p_to_pdiv(u32 p, u32 *pdiv)
{
 int i;

 if (p) {
  for (i = 0; i <= PLL_QLIN_PDIV_MAX; i++) {
   if (p <= pll_qlin_pdiv_to_hw[i].pdiv) {
    if (pdiv)
     *pdiv = i;
    return pll_qlin_pdiv_to_hw[i].pdiv;
   }
  }
 }

 return -EINVAL;
}
