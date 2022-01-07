
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ext_irq_cfg_reg1 ;
 int ext_irq_cfg_reg2 ;

__attribute__((used)) static inline u32 get_ext_irq_perf_reg(int irq)
{
 if (irq < 4)
  return ext_irq_cfg_reg1;
 return ext_irq_cfg_reg2;
}
