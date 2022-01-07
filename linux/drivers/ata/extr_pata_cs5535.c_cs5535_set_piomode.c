
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ata_port {int dummy; } ;
struct ata_device {int pio_mode; int devno; } ;


 scalar_t__ ATAC_CH0D0_DMA ;
 scalar_t__ ATAC_CH0D0_PIO ;
 int XFER_PIO_0 ;
 struct ata_device* ata_dev_pair (struct ata_device*) ;
 int min (int,int) ;
 int rdmsr (scalar_t__,int,int) ;
 int wrmsr (scalar_t__,int const,int ) ;

__attribute__((used)) static void cs5535_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 static const u16 pio_timings[5] = {
  0xF7F4, 0xF173, 0x8141, 0x5131, 0x1131
 };
 static const u16 pio_cmd_timings[5] = {
  0xF7F4, 0x53F3, 0x13F1, 0x5131, 0x1131
 };
 u32 reg, dummy;
 struct ata_device *pair = ata_dev_pair(adev);

 int mode = adev->pio_mode - XFER_PIO_0;
 int cmdmode = mode;


 if (pair) {
  int pairmode = pair->pio_mode - XFER_PIO_0;
  cmdmode = min(mode, pairmode);

  if (cmdmode < pairmode)
   wrmsr(ATAC_CH0D0_PIO + 2 * pair->devno,
    pio_cmd_timings[cmdmode] << 16 | pio_timings[pairmode], 0);
 }

 wrmsr(ATAC_CH0D0_PIO + 2 * adev->devno,
  pio_cmd_timings[cmdmode] << 16 | pio_timings[mode], 0);


 rdmsr(ATAC_CH0D0_DMA + 2 * adev->devno, reg, dummy);
 wrmsr(ATAC_CH0D0_DMA + 2 * adev->devno, reg | 0x80000000UL, 0);
}
