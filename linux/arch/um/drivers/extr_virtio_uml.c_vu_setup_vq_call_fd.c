
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int index; struct virtio_uml_vq_info* priv; } ;
struct virtio_uml_vq_info {int call_fd; int name; } ;
struct virtio_uml_device {int dummy; } ;


 int IRQF_SHARED ;
 int IRQ_READ ;
 int VIRTIO_IRQ ;
 int os_close_file (int) ;
 int os_pipe (int*,int,int) ;
 int um_free_irq (int ,struct virtqueue*) ;
 int um_request_irq (int ,int,int ,int ,int ,int ,struct virtqueue*) ;
 int vhost_user_set_vring_call (struct virtio_uml_device*,int ,int) ;
 int vu_interrupt ;

__attribute__((used)) static int vu_setup_vq_call_fd(struct virtio_uml_device *vu_dev,
          struct virtqueue *vq)
{
 struct virtio_uml_vq_info *info = vq->priv;
 int call_fds[2];
 int rc;


 rc = os_pipe(call_fds, 1, 1);
 if (rc < 0)
  return rc;

 info->call_fd = call_fds[0];
 rc = um_request_irq(VIRTIO_IRQ, info->call_fd, IRQ_READ,
       vu_interrupt, IRQF_SHARED, info->name, vq);
 if (rc)
  goto close_both;

 rc = vhost_user_set_vring_call(vu_dev, vq->index, call_fds[1]);
 if (rc)
  goto release_irq;

 goto out;

release_irq:
 um_free_irq(VIRTIO_IRQ, vq);
close_both:
 os_close_file(call_fds[0]);
out:

 os_close_file(call_fds[1]);

 return rc;
}
