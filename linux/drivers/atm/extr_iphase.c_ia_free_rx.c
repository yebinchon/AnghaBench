
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int start; } ;
struct TYPE_7__ {int rx_dle_dma; TYPE_2__ rx_dle_q; TYPE_1__* pci; int rx_open; } ;
struct TYPE_5__ {int dev; } ;
typedef TYPE_3__ IADEV ;


 int DLE_TOTAL_SIZE ;
 int dma_free_coherent (int *,int ,int ,int ) ;
 int kfree (int ) ;

__attribute__((used)) static void ia_free_rx(IADEV *iadev)
{
 kfree(iadev->rx_open);
 dma_free_coherent(&iadev->pci->dev, DLE_TOTAL_SIZE, iadev->rx_dle_q.start,
     iadev->rx_dle_dma);
}
