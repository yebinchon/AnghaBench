
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsxx_cardinfo {scalar_t__ regmap; } ;


 int DMA_QUEUE_RESET ;
 scalar_t__ RESET ;
 int iowrite32 (int ,scalar_t__) ;

void rsxx_dma_queue_reset(struct rsxx_cardinfo *card)
{

 iowrite32(DMA_QUEUE_RESET, card->regmap + RESET);
}
