
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ dma_regs ;
 unsigned int in_le32 (scalar_t__) ;

unsigned int pasemi_read_dma_reg(unsigned int reg)
{
 return in_le32(dma_regs+reg);
}
