
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ata_port {int dummy; } ;


 int ATA_DMA_ERR ;
 int ata_bmdma_status (struct ata_port*) ;

__attribute__((used)) static u8 piix_vmw_bmdma_status(struct ata_port *ap)
{
 return ata_bmdma_status(ap) & ~ATA_DMA_ERR;
}
