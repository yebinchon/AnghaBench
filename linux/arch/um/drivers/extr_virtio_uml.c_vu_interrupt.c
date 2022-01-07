
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct virtqueue {struct virtio_uml_vq_info* priv; } ;
struct virtio_uml_vq_info {int call_fd; } ;
typedef int n ;
typedef int irqreturn_t ;


 int EAGAIN ;
 int EINTR ;
 int IRQ_NONE ;
 int WARN (int,char*,int) ;
 int os_read_file (int ,int *,int) ;
 int vring_interrupt (int,struct virtqueue*) ;

__attribute__((used)) static irqreturn_t vu_interrupt(int irq, void *opaque)
{
 struct virtqueue *vq = opaque;
 struct virtio_uml_vq_info *info = vq->priv;
 uint64_t n;
 int rc;
 irqreturn_t ret = IRQ_NONE;

 do {
  rc = os_read_file(info->call_fd, &n, sizeof(n));
  if (rc == sizeof(n))
   ret |= vring_interrupt(irq, vq);
 } while (rc == sizeof(n) || rc == -EINTR);
 WARN(rc != -EAGAIN, "read returned %d\n", rc);
 return ret;
}
