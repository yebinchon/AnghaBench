
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct xilly_channel {int rd_host_buf_idx; int num_rd_buffers; int rd_host_buf_pos; int log2_element_size; int* rd_leftovers; int rd_full; int rd_fpga_buf_idx; int chan_num; TYPE_3__* endpoint; int rd_mutex; int rd_wait; int rd_spinlock; int rd_buf_size; TYPE_2__** rd_buffers; int rd_ref_count; } ;
struct TYPE_6__ {scalar_t__ fatal_error; int dev; int register_mutex; scalar_t__ registers; TYPE_1__* ephw; } ;
struct TYPE_5__ {unsigned char* addr; int dma_addr; } ;
struct TYPE_4__ {int (* hw_sync_sgl_for_device ) (TYPE_3__*,int ,int ,int ) ;} ;


 int DMA_TO_DEVICE ;
 int EINTR ;
 int EIO ;
 int ETIMEDOUT ;
 int dev_warn (int ,char*) ;
 scalar_t__ fpga_buf_ctrl_reg ;
 scalar_t__ fpga_buf_offset_reg ;
 int iowrite32 (int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (TYPE_3__*,int ,int ,int ) ;
 int wait_event_interruptible (int ,int) ;
 scalar_t__ wait_event_interruptible_timeout (int ,int,long) ;

__attribute__((used)) static int xillybus_myflush(struct xilly_channel *channel, long timeout)
{
 int rc;
 unsigned long flags;

 int end_offset_plus1;
 int bufidx, bufidx_minus1;
 int i;
 int empty;
 int new_rd_host_buf_pos;

 if (channel->endpoint->fatal_error)
  return -EIO;
 rc = mutex_lock_interruptible(&channel->rd_mutex);
 if (rc)
  return rc;







 if (!channel->rd_ref_count)
  goto done;

 bufidx = channel->rd_host_buf_idx;

 bufidx_minus1 = (bufidx == 0) ?
  channel->num_rd_buffers - 1 :
  bufidx - 1;

 end_offset_plus1 = channel->rd_host_buf_pos >>
  channel->log2_element_size;

 new_rd_host_buf_pos = channel->rd_host_buf_pos -
  (end_offset_plus1 << channel->log2_element_size);


 if (end_offset_plus1) {
  unsigned char *tail = channel->rd_buffers[bufidx]->addr +
   (end_offset_plus1 << channel->log2_element_size);


  for (i = 0; i < new_rd_host_buf_pos; i++)
   channel->rd_leftovers[i] = *tail++;

  spin_lock_irqsave(&channel->rd_spinlock, flags);



  if ((timeout < 0) &&
      (channel->rd_full ||
       (bufidx_minus1 != channel->rd_fpga_buf_idx))) {
   spin_unlock_irqrestore(&channel->rd_spinlock, flags);





   goto done;
  }


  channel->rd_leftovers[3] = (new_rd_host_buf_pos != 0);



  if (bufidx == channel->rd_fpga_buf_idx)
   channel->rd_full = 1;
  spin_unlock_irqrestore(&channel->rd_spinlock, flags);

  if (bufidx >= (channel->num_rd_buffers - 1))
   channel->rd_host_buf_idx = 0;
  else
   channel->rd_host_buf_idx++;

  channel->endpoint->ephw->hw_sync_sgl_for_device(
   channel->endpoint,
   channel->rd_buffers[bufidx]->dma_addr,
   channel->rd_buf_size,
   DMA_TO_DEVICE);

  mutex_lock(&channel->endpoint->register_mutex);

  iowrite32(end_offset_plus1 - 1,
     channel->endpoint->registers + fpga_buf_offset_reg);

  iowrite32((channel->chan_num << 1) |
     (2 << 24) |
     (bufidx << 12),
     channel->endpoint->registers + fpga_buf_ctrl_reg);

  mutex_unlock(&channel->endpoint->register_mutex);
 } else if (bufidx == 0) {
  bufidx = channel->num_rd_buffers - 1;
 } else {
  bufidx--;
 }

 channel->rd_host_buf_pos = new_rd_host_buf_pos;

 if (timeout < 0)
  goto done;
 while (1) {
  spin_lock_irqsave(&channel->rd_spinlock, flags);

  if (bufidx != channel->rd_fpga_buf_idx)
   channel->rd_full = 1;




  empty = !channel->rd_full;

  spin_unlock_irqrestore(&channel->rd_spinlock, flags);

  if (empty)
   break;






  if (timeout == 0)
   wait_event_interruptible(channel->rd_wait,
       (!channel->rd_full));

  else if (wait_event_interruptible_timeout(
     channel->rd_wait,
     (!channel->rd_full),
     timeout) == 0) {
   dev_warn(channel->endpoint->dev,
     "Timed out while flushing. Output data may be lost.\n");

   rc = -ETIMEDOUT;
   break;
  }

  if (channel->rd_full) {
   rc = -EINTR;
   break;
  }
 }

done:
 mutex_unlock(&channel->rd_mutex);

 if (channel->endpoint->fatal_error)
  return -EIO;

 return rc;
}
