
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dma_regs ;
 int out_le32 (scalar_t__,unsigned int) ;

void pasemi_write_dma_reg(unsigned int reg, unsigned int val)
{
 out_le32(dma_regs+reg, val);
}
