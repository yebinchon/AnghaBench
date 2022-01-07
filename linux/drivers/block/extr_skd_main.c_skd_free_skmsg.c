
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct skd_fitmsg_context {scalar_t__ mb_dma_address; int * msg_buf; } ;
struct skd_device {size_t num_fitmsg_context; struct skd_fitmsg_context* skmsg_table; TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int SKD_N_FITMSG_BYTES ;
 int dma_free_coherent (int *,int ,int *,scalar_t__) ;
 int kfree (struct skd_fitmsg_context*) ;

__attribute__((used)) static void skd_free_skmsg(struct skd_device *skdev)
{
 u32 i;

 if (skdev->skmsg_table == ((void*)0))
  return;

 for (i = 0; i < skdev->num_fitmsg_context; i++) {
  struct skd_fitmsg_context *skmsg;

  skmsg = &skdev->skmsg_table[i];

  if (skmsg->msg_buf != ((void*)0)) {
   dma_free_coherent(&skdev->pdev->dev, SKD_N_FITMSG_BYTES,
       skmsg->msg_buf,
         skmsg->mb_dma_address);
  }
  skmsg->msg_buf = ((void*)0);
  skmsg->mb_dma_address = 0;
 }

 kfree(skdev->skmsg_table);
 skdev->skmsg_table = ((void*)0);
}
