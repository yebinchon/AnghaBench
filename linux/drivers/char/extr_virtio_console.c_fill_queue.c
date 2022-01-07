
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int vdev; } ;
struct port_buffer {int dummy; } ;
typedef int spinlock_t ;


 int PAGE_SIZE ;
 int add_inbuf (struct virtqueue*,struct port_buffer*) ;
 struct port_buffer* alloc_buf (int ,int ,int ) ;
 int free_buf (struct port_buffer*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static unsigned int fill_queue(struct virtqueue *vq, spinlock_t *lock)
{
 struct port_buffer *buf;
 unsigned int nr_added_bufs;
 int ret;

 nr_added_bufs = 0;
 do {
  buf = alloc_buf(vq->vdev, PAGE_SIZE, 0);
  if (!buf)
   break;

  spin_lock_irq(lock);
  ret = add_inbuf(vq, buf);
  if (ret < 0) {
   spin_unlock_irq(lock);
   free_buf(buf, 1);
   break;
  }
  nr_added_bufs++;
  spin_unlock_irq(lock);
 } while (ret > 0);

 return nr_added_bufs;
}
