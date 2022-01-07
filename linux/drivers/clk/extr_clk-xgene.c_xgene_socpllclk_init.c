
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_node {int dummy; } ;


 int PLL_TYPE_SOC ;
 int xgene_pllclk_init (struct device_node*,int ) ;

__attribute__((used)) static void xgene_socpllclk_init(struct device_node *np)
{
 xgene_pllclk_init(np, PLL_TYPE_SOC);
}
