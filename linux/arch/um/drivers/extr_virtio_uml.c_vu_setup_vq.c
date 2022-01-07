
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vq_callback_t ;
typedef int u64 ;
struct virtqueue {struct virtio_uml_vq_info* priv; } ;
struct virtio_uml_vq_info {int kick_fd; int call_fd; int name; } ;
struct virtio_uml_device {struct platform_device* pdev; } ;
struct virtio_device {int dummy; } ;
struct platform_device {char* name; int id; } ;


 int ENOMEM ;
 struct virtqueue* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int MAX_SUPPORTED_QUEUE_SIZE ;
 int PAGE_SIZE ;
 int VIRTIO_IRQ ;
 int kfree (struct virtio_uml_vq_info*) ;
 struct virtio_uml_vq_info* kzalloc (int,int ) ;
 int os_close_file (int) ;
 int os_eventfd (int ,int ) ;
 int snprintf (int ,int,char*,char*,int,char const*) ;
 struct virtio_uml_device* to_virtio_uml_device (struct virtio_device*) ;
 int um_free_irq (int ,struct virtqueue*) ;
 int vhost_user_set_vring_addr (struct virtio_uml_device*,unsigned int,int ,int ,int ,int ) ;
 int vhost_user_set_vring_base (struct virtio_uml_device*,unsigned int,int ) ;
 int vhost_user_set_vring_num (struct virtio_uml_device*,unsigned int,int) ;
 int virtqueue_get_avail_addr (struct virtqueue*) ;
 int virtqueue_get_desc_addr (struct virtqueue*) ;
 int virtqueue_get_used_addr (struct virtqueue*) ;
 int virtqueue_get_vring_size (struct virtqueue*) ;
 struct virtqueue* vring_create_virtqueue (unsigned int,int,int ,struct virtio_device*,int,int,int,int ,int *,int ) ;
 int vring_del_virtqueue (struct virtqueue*) ;
 int vu_notify ;
 int vu_setup_vq_call_fd (struct virtio_uml_device*,struct virtqueue*) ;

__attribute__((used)) static struct virtqueue *vu_setup_vq(struct virtio_device *vdev,
         unsigned index, vq_callback_t *callback,
         const char *name, bool ctx)
{
 struct virtio_uml_device *vu_dev = to_virtio_uml_device(vdev);
 struct platform_device *pdev = vu_dev->pdev;
 struct virtio_uml_vq_info *info;
 struct virtqueue *vq;
 int num = MAX_SUPPORTED_QUEUE_SIZE;
 int rc;

 info = kzalloc(sizeof(*info), GFP_KERNEL);
 if (!info) {
  rc = -ENOMEM;
  goto error_kzalloc;
 }
 snprintf(info->name, sizeof(info->name), "%s.%d-%s", pdev->name,
   pdev->id, name);

 vq = vring_create_virtqueue(index, num, PAGE_SIZE, vdev, 1, 1,
        ctx, vu_notify, callback, info->name);
 if (!vq) {
  rc = -ENOMEM;
  goto error_create;
 }
 vq->priv = info;
 num = virtqueue_get_vring_size(vq);

 rc = os_eventfd(0, 0);
 if (rc < 0)
  goto error_kick;
 info->kick_fd = rc;

 rc = vu_setup_vq_call_fd(vu_dev, vq);
 if (rc)
  goto error_call;

 rc = vhost_user_set_vring_num(vu_dev, index, num);
 if (rc)
  goto error_setup;

 rc = vhost_user_set_vring_base(vu_dev, index, 0);
 if (rc)
  goto error_setup;

 rc = vhost_user_set_vring_addr(vu_dev, index,
           virtqueue_get_desc_addr(vq),
           virtqueue_get_used_addr(vq),
           virtqueue_get_avail_addr(vq),
           (u64) -1);
 if (rc)
  goto error_setup;

 return vq;

error_setup:
 um_free_irq(VIRTIO_IRQ, vq);
 os_close_file(info->call_fd);
error_call:
 os_close_file(info->kick_fd);
error_kick:
 vring_del_virtqueue(vq);
error_create:
 kfree(info);
error_kzalloc:
 return ERR_PTR(rc);
}
