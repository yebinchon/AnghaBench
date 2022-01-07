
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active; } ;
typedef TYPE_1__ dma_t ;


 TYPE_1__* dma_channel (unsigned int) ;

int dma_channel_active(unsigned int chan)
{
 dma_t *dma = dma_channel(chan);
 return dma->active;
}
