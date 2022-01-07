
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DMA_CTRL_STATUS ;
 int DMA_CTRL_STATUS_IN_PROGRESS ;
 scalar_t__ SATA_DMA_REGS_BASE ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline int dma_busy(void)
{
 return readl(SATA_DMA_REGS_BASE + DMA_CTRL_STATUS)
  & DMA_CTRL_STATUS_IN_PROGRESS;
}
