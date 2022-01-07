
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pata_pxa_data {int dma_chan; int dma_done; } ;
struct ata_queued_cmd {TYPE_1__* ap; } ;
struct TYPE_2__ {struct pata_pxa_data* private_data; } ;


 int dma_async_issue_pending (int ) ;
 int init_completion (int *) ;

__attribute__((used)) static void pxa_bmdma_start(struct ata_queued_cmd *qc)
{
 struct pata_pxa_data *pd = qc->ap->private_data;
 init_completion(&pd->dma_done);
 dma_async_issue_pending(pd->dma_chan);
}
