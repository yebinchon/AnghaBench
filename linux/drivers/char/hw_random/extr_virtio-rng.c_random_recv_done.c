
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtrng_info {int have_data; int data_avail; int vq; } ;
struct virtqueue {TYPE_1__* vdev; } ;
struct TYPE_2__ {struct virtrng_info* priv; } ;


 int complete (int *) ;
 int virtqueue_get_buf (int ,int *) ;

__attribute__((used)) static void random_recv_done(struct virtqueue *vq)
{
 struct virtrng_info *vi = vq->vdev->priv;


 if (!virtqueue_get_buf(vi->vq, &vi->data_avail))
  return;

 complete(&vi->have_data);
}
