
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_taskfile {int command; } ;
struct TYPE_2__ {scalar_t__ bmdma_addr; int command_addr; } ;
struct ata_port {TYPE_1__ ioaddr; int print_id; } ;


 scalar_t__ ATA_DMA_CMD ;
 int DPRINTK (char*,int ,int ) ;
 int ioread8 (scalar_t__) ;
 int iowrite8 (int ,int ) ;

__attribute__((used)) static void sil680_sff_exec_command(struct ata_port *ap,
        const struct ata_taskfile *tf)
{
 DPRINTK("ata%u: cmd 0x%X\n", ap->print_id, tf->command);
 iowrite8(tf->command, ap->ioaddr.command_addr);
 ioread8(ap->ioaddr.bmdma_addr + ATA_DMA_CMD);
}
