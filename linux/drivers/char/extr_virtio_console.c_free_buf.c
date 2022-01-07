
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_buffer {unsigned int sgpages; int dev; int dma; struct port_buffer* buf; int size; int list; int * sg; } ;
struct page {int dummy; } ;


 int dma_bufs_lock ;
 int dma_free_coherent (int ,int ,struct port_buffer*,int ) ;
 scalar_t__ is_rproc_enabled ;
 int kfree (struct port_buffer*) ;
 int list_add_tail (int *,int *) ;
 int pending_free_dma_bufs ;
 int put_device (int ) ;
 int put_page (struct page*) ;
 struct page* sg_page (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_buf(struct port_buffer *buf, bool can_sleep)
{
 unsigned int i;

 for (i = 0; i < buf->sgpages; i++) {
  struct page *page = sg_page(&buf->sg[i]);
  if (!page)
   break;
  put_page(page);
 }

 if (!buf->dev) {
  kfree(buf->buf);
 } else if (is_rproc_enabled) {
  unsigned long flags;


  if (!can_sleep) {

   spin_lock_irqsave(&dma_bufs_lock, flags);
   list_add_tail(&buf->list, &pending_free_dma_bufs);
   spin_unlock_irqrestore(&dma_bufs_lock, flags);
   return;
  }
  dma_free_coherent(buf->dev, buf->size, buf->buf, buf->dma);


  put_device(buf->dev);
 }

 kfree(buf);
}
