
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rb153_cf_info {int irq; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct rb153_cf_info* private_data; } ;


 int IRQ_TYPE_LEVEL_HIGH ;
 int RB153_CF_IO_DELAY ;
 int ata_sff_dma_pause (struct ata_port*) ;
 int irq_set_irq_type (int ,int ) ;
 int ndelay (int ) ;

__attribute__((used)) static inline void rb153_pata_finish_io(struct ata_port *ap)
{
 struct rb153_cf_info *info = ap->host->private_data;



 ata_sff_dma_pause(ap);
 ndelay(RB153_CF_IO_DELAY);

 irq_set_irq_type(info->irq, IRQ_TYPE_LEVEL_HIGH);
}
