
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pata_icside_state {int dma; } ;
struct ata_queued_cmd {struct ata_port* ap; } ;
struct ata_port {TYPE_1__* host; } ;
struct TYPE_2__ {struct pata_icside_state* private_data; } ;


 int BUG_ON (int ) ;
 int dma_channel_active (int ) ;
 int enable_dma (int ) ;

__attribute__((used)) static void pata_icside_bmdma_start(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct pata_icside_state *state = ap->host->private_data;

 BUG_ON(dma_channel_active(state->dma));
 enable_dma(state->dma);
}
