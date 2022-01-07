
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ JAZZ_R4030_CHNL_COUNT ;
 int printk (char*,int,unsigned int) ;
 int r4030_write_reg32 (scalar_t__,int) ;
 scalar_t__ vdma_debug ;

void vdma_set_count(int channel, int count)
{
 if (vdma_debug)
  printk("vdma_set_count: channel %d, count %08x\n", channel,
         (unsigned) count);

 r4030_write_reg32(JAZZ_R4030_CHNL_COUNT + (channel << 5), count);
}
