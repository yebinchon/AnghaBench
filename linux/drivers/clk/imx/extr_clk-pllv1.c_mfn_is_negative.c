
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pllv1 {int dummy; } ;


 unsigned int MFN_SIGN ;
 int is_imx1_pllv1 (struct clk_pllv1*) ;
 int is_imx21_pllv1 (struct clk_pllv1*) ;

__attribute__((used)) static inline bool mfn_is_negative(struct clk_pllv1 *pll, unsigned int mfn)
{
 return !is_imx1_pllv1(pll) && !is_imx21_pllv1(pll) && (mfn & MFN_SIGN);
}
