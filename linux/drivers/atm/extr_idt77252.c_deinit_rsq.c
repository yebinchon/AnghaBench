
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int paddr; int base; } ;
struct idt77252_dev {TYPE_2__ rsq; TYPE_1__* pcidev; } ;
struct TYPE_3__ {int dev; } ;


 int RSQSIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;

__attribute__((used)) static void
deinit_rsq(struct idt77252_dev *card)
{
 dma_free_coherent(&card->pcidev->dev, RSQSIZE,
     card->rsq.base, card->rsq.paddr);
}
