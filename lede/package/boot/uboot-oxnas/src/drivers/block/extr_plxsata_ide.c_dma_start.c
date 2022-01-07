
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DMA_CTRL_STATUS ;
 scalar_t__ SATA_DMA_REGS_BASE ;
 unsigned int encode_start (unsigned int) ;
 unsigned int readl (scalar_t__) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static void dma_start(void)
{
 unsigned int reg;
 reg = readl(SATA_DMA_REGS_BASE + DMA_CTRL_STATUS);
 reg = encode_start(reg);
 writel(reg, SATA_DMA_REGS_BASE + DMA_CTRL_STATUS);
}
