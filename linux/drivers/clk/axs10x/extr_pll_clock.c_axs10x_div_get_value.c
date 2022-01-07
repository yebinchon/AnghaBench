
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ PLL_REG_GET_BYPASS (int) ;
 int PLL_REG_GET_HIGH (int) ;
 int PLL_REG_GET_LOW (int) ;

__attribute__((used)) static inline u32 axs10x_div_get_value(u32 reg)
{
 if (PLL_REG_GET_BYPASS(reg))
  return 1;

 return PLL_REG_GET_HIGH(reg) + PLL_REG_GET_LOW(reg);
}
