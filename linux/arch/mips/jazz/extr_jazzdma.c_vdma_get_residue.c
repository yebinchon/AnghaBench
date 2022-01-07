
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ JAZZ_R4030_CHNL_COUNT ;
 int printk (char*,int,int) ;
 int r4030_read_reg32 (scalar_t__) ;
 scalar_t__ vdma_debug ;

int vdma_get_residue(int channel)
{
 int residual;

 residual = r4030_read_reg32(JAZZ_R4030_CHNL_COUNT + (channel << 5));

 if (vdma_debug)
  printk("vdma_get_residual: channel %d: residual=%d\n",
         channel, residual);

 return residual;
}
