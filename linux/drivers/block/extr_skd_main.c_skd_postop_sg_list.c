
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skd_request_context {int n_sg; int data_dir; int * sg; scalar_t__ sksg_dma_address; TYPE_1__* sksg_list; } ;
struct skd_device {TYPE_2__* pdev; } ;
struct fit_sg_descriptor {int dummy; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ next_desc_ptr; } ;


 int dma_unmap_sg (int *,int *,int,int ) ;

__attribute__((used)) static void skd_postop_sg_list(struct skd_device *skdev,
          struct skd_request_context *skreq)
{




 skreq->sksg_list[skreq->n_sg - 1].next_desc_ptr =
  skreq->sksg_dma_address +
  ((skreq->n_sg) * sizeof(struct fit_sg_descriptor));
 dma_unmap_sg(&skdev->pdev->dev, &skreq->sg[0], skreq->n_sg,
       skreq->data_dir);
}
