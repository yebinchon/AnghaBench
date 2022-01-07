
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c_ide_platdata {int dummy; } ;
struct s3c_ide_info {int cpu_type; scalar_t__ ide_addr; int sfr_addr; } ;


 int BUG () ;
 scalar_t__ S3C_ATA_IRQ ;
 scalar_t__ S3C_ATA_IRQ_MSK ;


 int msleep (int) ;
 int pata_s3c_cfg_mode (int ) ;
 int pata_s3c_enable (scalar_t__,int) ;
 int pata_s3c_set_endian (scalar_t__,int) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void pata_s3c_hwinit(struct s3c_ide_info *info,
    struct s3c_ide_platdata *pdata)
{
 switch (info->cpu_type) {
 case 129:

  pata_s3c_cfg_mode(info->sfr_addr);
  pata_s3c_set_endian(info->ide_addr, 1);
  pata_s3c_enable(info->ide_addr, 1);
  msleep(100);


  writel(0x1f, info->ide_addr + S3C_ATA_IRQ);
  writel(0x1b, info->ide_addr + S3C_ATA_IRQ_MSK);
  break;

 case 128:

  pata_s3c_set_endian(info->ide_addr, 0);
  pata_s3c_enable(info->ide_addr, 1);
  msleep(100);


  writel(0x3f, info->ide_addr + S3C_ATA_IRQ);
  writel(0x3f, info->ide_addr + S3C_ATA_IRQ_MSK);
  break;

 default:
  BUG();
 }
}
