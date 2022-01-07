
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct skd_device {scalar_t__ cq_dma_address; int * skcomp_table; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int SKD_SKCOMP_SIZE ;
 int dma_free_coherent (int *,int ,int *,scalar_t__) ;

__attribute__((used)) static void skd_free_skcomp(struct skd_device *skdev)
{
 if (skdev->skcomp_table)
  dma_free_coherent(&skdev->pdev->dev, SKD_SKCOMP_SIZE,
      skdev->skcomp_table, skdev->cq_dma_address);

 skdev->skcomp_table = ((void*)0);
 skdev->cq_dma_address = 0;
}
