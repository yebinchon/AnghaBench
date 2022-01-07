
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk_pllv1 {scalar_t__ type; } ;


 scalar_t__ IMX_PLLV1_IMX27 ;

__attribute__((used)) static inline bool is_imx27_pllv1(struct clk_pllv1 *pll)
{
 return pll->type == IMX_PLLV1_IMX27;
}
