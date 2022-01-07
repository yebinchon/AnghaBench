
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int PLL_ODIV_MAX ;
 int PLL_ODIV_MIN ;
 int clamp_val (int,int ,int ) ;

__attribute__((used)) static inline u32 spll_odiv_to_divider(u32 odiv)
{
 odiv = clamp_val(odiv, PLL_ODIV_MIN, PLL_ODIV_MAX);

 return 1 << odiv;
}
