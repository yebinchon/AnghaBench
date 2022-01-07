
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {TYPE_1__* dev; int ap; } ;
struct TYPE_2__ {int dma_mode; } ;


 int ata_bmdma_start (struct ata_queued_cmd*) ;
 int triflex_load_timing (int ,TYPE_1__*,int ) ;

__attribute__((used)) static void triflex_bmdma_start(struct ata_queued_cmd *qc)
{
 triflex_load_timing(qc->ap, qc->dev, qc->dev->dma_mode);
 ata_bmdma_start(qc);
}
