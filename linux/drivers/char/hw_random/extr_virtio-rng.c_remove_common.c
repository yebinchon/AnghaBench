
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtrng_info {int hwrng_removed; int busy; int index; int hwrng; scalar_t__ hwrng_register_done; int have_data; scalar_t__ data_avail; } ;
struct virtio_device {TYPE_1__* config; struct virtrng_info* priv; } ;
struct TYPE_2__ {int (* del_vqs ) (struct virtio_device*) ;int (* reset ) (struct virtio_device*) ;} ;


 int complete (int *) ;
 int hwrng_unregister (int *) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct virtrng_info*) ;
 int rng_index_ida ;
 int stub1 (struct virtio_device*) ;
 int stub2 (struct virtio_device*) ;

__attribute__((used)) static void remove_common(struct virtio_device *vdev)
{
 struct virtrng_info *vi = vdev->priv;

 vi->hwrng_removed = 1;
 vi->data_avail = 0;
 complete(&vi->have_data);
 vdev->config->reset(vdev);
 vi->busy = 0;
 if (vi->hwrng_register_done)
  hwrng_unregister(&vi->hwrng);
 vdev->config->del_vqs(vdev);
 ida_simple_remove(&rng_index_ida, vi->index);
 kfree(vi);
}
