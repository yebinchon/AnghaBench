
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ATA_PORT_NSECT ;
 int CONFIG_SYS_IDE_MAXDEVICE ;
 int SATA_CONTROL_OFF ;
 int SATA_DRIVE_CONTROL_OFF ;
 scalar_t__ SATA_HOST_REGS_BASE ;
 int SATA_INT_CLR_OFF ;
 int SATA_INT_ENABLE_CLR_OFF ;
 int SATA_SCR_ERROR ;
 int SATA_SCR_STATUS ;
 unsigned long SATA_SCTL_CLR_ERR ;
 int SYS_CTRL_CLK_DMA ;
 int SYS_CTRL_CLK_SATA ;
 int SYS_CTRL_RST_SATA ;
 int SYS_CTRL_RST_SATA_LINK ;
 int SYS_CTRL_RST_SATA_PHY ;
 int SYS_CTRL_RST_SGDMA ;
 int* disk_present ;
 int enable_clock (int ) ;
 int ide_outb (int,int ,int ) ;
 int phy_reset (int) ;
 int printf (char*,int,...) ;
 int reset_block (int ,int) ;
 unsigned long** sata_regs_base ;
 int scr_read (int,int ) ;
 int scr_write (int,int ,int ) ;
 int udelay (int) ;
 int wait_FIS (int) ;
 scalar_t__ wait_not_busy (int,int) ;
 int workaround5458 () ;

int ide_preinit(void)
{
 int num_disks_found = 0;


 int i;
 for (i = 0; i < CONFIG_SYS_IDE_MAXDEVICE; i++) {
  disk_present[i] = 1;
 }


 reset_block(SYS_CTRL_RST_SATA, 1);
 reset_block(SYS_CTRL_RST_SATA_LINK, 1);
 reset_block(SYS_CTRL_RST_SATA_PHY, 1);
 reset_block(SYS_CTRL_RST_SGDMA, 1);


 enable_clock(SYS_CTRL_CLK_SATA);
 enable_clock(SYS_CTRL_CLK_DMA);

 udelay(5000);
 reset_block(SYS_CTRL_RST_SATA_PHY, 0);
 udelay(50);
 reset_block(SYS_CTRL_RST_SATA, 0);
 reset_block(SYS_CTRL_RST_SATA_LINK, 0);
 udelay(50);
 reset_block(SYS_CTRL_RST_SGDMA, 0);
 udelay(100);

 workaround5458();
 udelay(10000);


 *((unsigned long*) SATA_HOST_REGS_BASE + SATA_INT_ENABLE_CLR_OFF) =
  ~0UL;
 *((unsigned long*) SATA_HOST_REGS_BASE + SATA_INT_CLR_OFF) = ~0UL;

 int device;
 for (device = 0; device < CONFIG_SYS_IDE_MAXDEVICE; device++) {
  int found = 0;
  int retries = 1;


  *(sata_regs_base[device] + SATA_INT_ENABLE_CLR_OFF) = ~0UL;


  *(sata_regs_base[device] + SATA_INT_CLR_OFF) = ~0UL;

  do {

   ide_outb(device, ATA_PORT_NSECT, 0);


   if (!phy_reset(device)) {
    printf("SATA PHY not ready for device %d\n",
     device);
    break;
   }

   if (!wait_FIS(device)) {
    printf("No FIS received from device %d\n",
     device);
   } else {
    if ((scr_read(device, SATA_SCR_STATUS) & 0xf)
     == 0x3) {
     if (wait_not_busy(device, 30)) {
      printf("Timed out of wait for SATA device %d to have BUSY clear\n",
       device);
     } else {
      ++num_disks_found;
      found = 1;
     }
    } else {
     printf("No SATA device %d found, PHY status = 0x%08x\n",
      device,
      scr_read(
       device,
       SATA_SCR_STATUS));
    }
    break;
   }
  } while (retries--);


  disk_present[device] = found;
 }


 for (device = 0; device < CONFIG_SYS_IDE_MAXDEVICE; device++) {
  if (disk_present[device]) {

   *(sata_regs_base[device] + SATA_DRIVE_CONTROL_OFF) =
    0UL;


   scr_write(device, SATA_SCR_ERROR, ~0);


   *(sata_regs_base[device] + SATA_CONTROL_OFF) |=
    SATA_SCTL_CLR_ERR;



   *(sata_regs_base[device] + SATA_INT_CLR_OFF) = ~0UL;
  }
 }

 return !num_disks_found;
}
