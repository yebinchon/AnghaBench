
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct s3c_ide_info {scalar_t__ ide_addr; int clk; } ;
struct ata_timing {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {int pio_mode; } ;
struct TYPE_2__ {struct s3c_ide_info* private_data; } ;


 scalar_t__ S3C_ATA_CFG ;
 int S3C_ATA_CFG_IORDYEN ;
 scalar_t__ S3C_ATA_PIO_TIME ;
 scalar_t__ ata_pio_need_iordy (struct ata_device*) ;
 int ata_timing_compute (struct ata_device*,int ,struct ata_timing*,int,int ) ;
 unsigned long clk_get_rate (int ) ;
 int pata_s3c_setup_timing (struct s3c_ide_info*,struct ata_timing*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pata_s3c_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 struct s3c_ide_info *info = ap->host->private_data;
 struct ata_timing timing;
 int cycle_time;
 ulong ata_cfg = readl(info->ide_addr + S3C_ATA_CFG);
 ulong piotime;


 if (ata_pio_need_iordy(adev))
  ata_cfg |= S3C_ATA_CFG_IORDYEN;
 else
  ata_cfg &= ~S3C_ATA_CFG_IORDYEN;

 cycle_time = (int)(1000000000UL / clk_get_rate(info->clk));

 ata_timing_compute(adev, adev->pio_mode, &timing,
     cycle_time * 1000, 0);

 piotime = pata_s3c_setup_timing(info, &timing);

 writel(ata_cfg, info->ide_addr + S3C_ATA_CFG);
 writel(piotime, info->ide_addr + S3C_ATA_PIO_TIME);
}
