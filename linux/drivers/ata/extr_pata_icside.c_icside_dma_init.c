
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pata_icside_state {scalar_t__ dma; TYPE_1__* port; } ;
struct pata_icside_info {int mwdma_mask; struct expansion_card* ec; struct pata_icside_state* state; } ;
struct expansion_card {scalar_t__ dma; } ;
struct TYPE_2__ {int* speed; } ;


 int ATA_MAX_DEVICES ;
 int ATA_MWDMA2 ;
 int DRV_NAME ;
 scalar_t__ NO_DMA ;
 int request_dma (scalar_t__,int ) ;

__attribute__((used)) static int icside_dma_init(struct pata_icside_info *info)
{
 struct pata_icside_state *state = info->state;
 struct expansion_card *ec = info->ec;
 int i;

 for (i = 0; i < ATA_MAX_DEVICES; i++) {
  state->port[0].speed[i] = 480;
  state->port[1].speed[i] = 480;
 }

 if (ec->dma != NO_DMA && !request_dma(ec->dma, DRV_NAME)) {
  state->dma = ec->dma;
  info->mwdma_mask = ATA_MWDMA2;
 }

 return 0;
}
