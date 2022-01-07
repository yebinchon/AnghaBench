
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sksg_dma_address; int * sksg_list; } ;
struct skd_special_context {TYPE_1__ req; scalar_t__ mb_dma_address; int * msg_buf; scalar_t__ db_dma_address; int * data_buf; } ;
struct skd_device {int msgbuf_cache; int databuf_cache; struct skd_special_context internal_skspcl; } ;


 int DMA_BIDIRECTIONAL ;
 int DMA_TO_DEVICE ;
 int skd_free_dma (struct skd_device*,int ,int *,scalar_t__,int ) ;
 int skd_free_sg_list (struct skd_device*,int *,scalar_t__) ;

__attribute__((used)) static void skd_free_sksb(struct skd_device *skdev)
{
 struct skd_special_context *skspcl = &skdev->internal_skspcl;

 skd_free_dma(skdev, skdev->databuf_cache, skspcl->data_buf,
       skspcl->db_dma_address, DMA_BIDIRECTIONAL);

 skspcl->data_buf = ((void*)0);
 skspcl->db_dma_address = 0;

 skd_free_dma(skdev, skdev->msgbuf_cache, skspcl->msg_buf,
       skspcl->mb_dma_address, DMA_TO_DEVICE);

 skspcl->msg_buf = ((void*)0);
 skspcl->mb_dma_address = 0;

 skd_free_sg_list(skdev, skspcl->req.sksg_list,
    skspcl->req.sksg_dma_address);

 skspcl->req.sksg_list = ((void*)0);
 skspcl->req.sksg_dma_address = 0;
}
