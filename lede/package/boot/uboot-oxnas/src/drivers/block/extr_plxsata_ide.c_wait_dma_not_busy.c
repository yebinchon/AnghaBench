
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DMA_CTRL_STATUS ;
 unsigned int DMA_CTRL_STATUS_RESET ;
 int MAX_DMA_ABORT_LOOPS ;
 int MAX_DMA_XFER_LOOPS ;
 scalar_t__ SATA_DMA_CHANNEL ;
 int dma_busy () ;
 int printf (char*) ;
 unsigned int readl (scalar_t__) ;
 int udelay (int) ;
 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static int wait_dma_not_busy(int device)
{
 unsigned int cleanup_required = 0;


 int loops = MAX_DMA_XFER_LOOPS;
 do {
  if (!dma_busy()) {
   break;
  }
  udelay(100);
 } while (--loops);

 if (!loops) {
  printf("wait_dma_not_busy() Timed out of wait for DMA not busy\n");
  cleanup_required = 1;
 }

 if (cleanup_required) {

  unsigned int ctrl_status = readl(
   SATA_DMA_CHANNEL + DMA_CTRL_STATUS);
  ctrl_status |= DMA_CTRL_STATUS_RESET;
  writel(ctrl_status, SATA_DMA_CHANNEL + DMA_CTRL_STATUS);



  loops = MAX_DMA_ABORT_LOOPS;
  do {
   if (!dma_busy()) {
    break;
   }
   udelay(10);
  } while (--loops);

  if (!loops) {
   printf("wait_dma_not_busy() Timed out of wait for DMA channel abort\n");
  } else {

   cleanup_required = 0;
  }


  ctrl_status = readl(SATA_DMA_CHANNEL + DMA_CTRL_STATUS);
  ctrl_status &= ~DMA_CTRL_STATUS_RESET;
  writel(ctrl_status, SATA_DMA_CHANNEL + DMA_CTRL_STATUS);
 }

 return !cleanup_required;
}
