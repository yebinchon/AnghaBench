
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s3c_ide_info {scalar_t__ ide_addr; } ;
struct ata_host {struct s3c_ide_info* private_data; } ;
typedef int irqreturn_t ;


 scalar_t__ S3C_ATA_IRQ ;
 int ata_sff_interrupt (int,void*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t pata_s3c_irq(int irq, void *dev_instance)
{
 struct ata_host *host = dev_instance;
 struct s3c_ide_info *info = host->private_data;
 u32 reg;

 reg = readl(info->ide_addr + S3C_ATA_IRQ);
 writel(reg, info->ide_addr + S3C_ATA_IRQ);

 return ata_sff_interrupt(irq, dev_instance);
}
