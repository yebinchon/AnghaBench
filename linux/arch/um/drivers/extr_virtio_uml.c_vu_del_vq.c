
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {struct virtio_uml_vq_info* priv; } ;
struct virtio_uml_vq_info {int kick_fd; int call_fd; } ;


 int VIRTIO_IRQ ;
 int kfree (struct virtio_uml_vq_info*) ;
 int os_close_file (int ) ;
 int um_free_irq (int ,struct virtqueue*) ;
 int vring_del_virtqueue (struct virtqueue*) ;

__attribute__((used)) static void vu_del_vq(struct virtqueue *vq)
{
 struct virtio_uml_vq_info *info = vq->priv;

 um_free_irq(VIRTIO_IRQ, vq);

 os_close_file(info->call_fd);
 os_close_file(info->kick_fd);

 vring_del_virtqueue(vq);
 kfree(info);
}
