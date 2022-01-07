
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int JAZZ_R4030_CHNL_ENABLE ;
 int JAZZ_R4030_CHNL_MODE ;

 int R4030_CHNL_WRITE ;
 int R4030_MODE_ATIME_120 ;
 int R4030_MODE_ATIME_80 ;
 int R4030_MODE_INTR_EN ;
 int R4030_MODE_WIDTH_16 ;
 int R4030_MODE_WIDTH_8 ;
 int printk (char*,...) ;
 int r4030_read_reg32 (int ) ;
 int r4030_write_reg32 (int ,int) ;
 scalar_t__ vdma_debug ;

void vdma_set_mode(int channel, int mode)
{
 if (vdma_debug)
  printk("vdma_set_mode: channel %d, mode 0x%x\n", channel,
         mode);

 switch (channel) {
 case 128:
  r4030_write_reg32(JAZZ_R4030_CHNL_MODE + (channel << 5),


      R4030_MODE_INTR_EN |
      R4030_MODE_WIDTH_16 |
      R4030_MODE_ATIME_80);
  break;

 case 129:
  r4030_write_reg32(JAZZ_R4030_CHNL_MODE + (channel << 5),


      R4030_MODE_INTR_EN |
      R4030_MODE_WIDTH_8 |
      R4030_MODE_ATIME_120);
  break;

 case 131:
 case 130:
  printk("VDMA: Audio DMA not supported yet.\n");
  break;

 default:
  printk
      ("VDMA: vdma_set_mode() called with unsupported channel %d!\n",
       channel);
 }

 switch (mode) {
 case 133:
  r4030_write_reg32(JAZZ_R4030_CHNL_ENABLE + (channel << 5),
      r4030_read_reg32(JAZZ_R4030_CHNL_ENABLE +
         (channel << 5)) &
      ~R4030_CHNL_WRITE);
  break;

 case 132:
  r4030_write_reg32(JAZZ_R4030_CHNL_ENABLE + (channel << 5),
      r4030_read_reg32(JAZZ_R4030_CHNL_ENABLE +
         (channel << 5)) |
      R4030_CHNL_WRITE);
  break;

 default:
  printk
      ("VDMA: vdma_set_mode() called with unknown dma mode 0x%x\n",
       mode);
 }
}
