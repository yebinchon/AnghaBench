
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* parent; } ;
struct virtio_device {TYPE_2__ dev; } ;
struct port_buffer {int sgpages; size_t size; scalar_t__ offset; scalar_t__ len; int * buf; int * dev; int dma; } ;
struct TYPE_3__ {int * parent; } ;


 int GFP_KERNEL ;
 int * dma_alloc_coherent (int *,size_t,int *,int ) ;
 int get_device (int *) ;
 scalar_t__ is_rproc_serial (struct virtio_device*) ;
 int kfree (struct port_buffer*) ;
 void* kmalloc (size_t,int ) ;
 int reclaim_dma_bufs () ;
 int sg ;
 size_t struct_size (struct port_buffer*,int ,int) ;

__attribute__((used)) static struct port_buffer *alloc_buf(struct virtio_device *vdev, size_t buf_size,
         int pages)
{
 struct port_buffer *buf;

 reclaim_dma_bufs();





 buf = kmalloc(struct_size(buf, sg, pages), GFP_KERNEL);
 if (!buf)
  goto fail;

 buf->sgpages = pages;
 if (pages > 0) {
  buf->dev = ((void*)0);
  buf->buf = ((void*)0);
  return buf;
 }

 if (is_rproc_serial(vdev)) {






  if (!vdev->dev.parent || !vdev->dev.parent->parent)
   goto free_buf;
  buf->dev = vdev->dev.parent->parent;


  get_device(buf->dev);
  buf->buf = dma_alloc_coherent(buf->dev, buf_size, &buf->dma,
           GFP_KERNEL);
 } else {
  buf->dev = ((void*)0);
  buf->buf = kmalloc(buf_size, GFP_KERNEL);
 }

 if (!buf->buf)
  goto free_buf;
 buf->len = 0;
 buf->offset = 0;
 buf->size = buf_size;
 return buf;

free_buf:
 kfree(buf);
fail:
 return ((void*)0);
}
