
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMC_MASK_CLK_FREQ ;

__attribute__((used)) static inline int plt_reg_to_parent(int reg)
{
 switch (reg & PMC_MASK_CLK_FREQ) {
 default:
 case 128:
  return 0;
 case 129:
  return 1;
 }
}
