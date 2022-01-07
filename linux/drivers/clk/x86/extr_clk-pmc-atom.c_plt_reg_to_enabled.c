
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMC_MASK_CLK_CTL ;

__attribute__((used)) static inline int plt_reg_to_enabled(int reg)
{
 switch (reg & PMC_MASK_CLK_CTL) {
 case 129:
 case 130:
  return 1;
 case 131:
 case 128:
 default:
  return 0;
 }
}
