
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ version; int dtr; int dor; scalar_t__ reset; } ;


 TYPE_1__* FDCS ;
 scalar_t__ FDC_82072A ;
 int FD_DOR ;
 int FD_RESET_DELAY ;
 int FD_STATUS ;
 unsigned long claim_dma_lock () ;
 int do_floppy ;
 int fd_disable_dma () ;
 int fd_outb (int,int ) ;
 int release_dma_lock (unsigned long) ;
 int reset_fdc_info (int ) ;
 int reset_interrupt ;
 int udelay (int ) ;

__attribute__((used)) static void reset_fdc(void)
{
 unsigned long flags;

 do_floppy = reset_interrupt;
 FDCS->reset = 0;
 reset_fdc_info(0);




 flags = claim_dma_lock();
 fd_disable_dma();
 release_dma_lock(flags);

 if (FDCS->version >= FDC_82072A)
  fd_outb(0x80 | (FDCS->dtr & 3), FD_STATUS);
 else {
  fd_outb(FDCS->dor & ~0x04, FD_DOR);
  udelay(FD_RESET_DELAY);
  fd_outb(FDCS->dor, FD_DOR);
 }
}
