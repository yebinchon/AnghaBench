
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xilly_channel {scalar_t__ rd_ref_count; int chan_num; scalar_t__ wr_ref_count; int wr_fpga_buf_idx; int wr_eof; int wr_sleepy; int num_wr_buffers; int wr_mutex; TYPE_1__* endpoint; int wr_wait; int wr_spinlock; int rd_mutex; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct xilly_channel* private_data; } ;
struct TYPE_2__ {int dev; scalar_t__ registers; scalar_t__ fatal_error; } ;


 int EINTR ;
 int EIO ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int dev_warn (int ,char*) ;
 scalar_t__ fpga_buf_ctrl_reg ;
 int iowrite32 (int,scalar_t__) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ wait_event_interruptible (int ,int) ;

__attribute__((used)) static int xillybus_release(struct inode *inode, struct file *filp)
{
 unsigned long flags;
 struct xilly_channel *channel = filp->private_data;

 int buf_idx;
 int eof;

 if (channel->endpoint->fatal_error)
  return -EIO;

 if (filp->f_mode & FMODE_WRITE) {
  mutex_lock(&channel->rd_mutex);

  channel->rd_ref_count--;

  if (channel->rd_ref_count == 0) {





   iowrite32((channel->chan_num << 1) |
      (5 << 24),
      channel->endpoint->registers +
      fpga_buf_ctrl_reg);
  }
  mutex_unlock(&channel->rd_mutex);
 }

 if (filp->f_mode & FMODE_READ) {
  mutex_lock(&channel->wr_mutex);

  channel->wr_ref_count--;

  if (channel->wr_ref_count == 0) {
   iowrite32(1 | (channel->chan_num << 1) |
      (5 << 24),
      channel->endpoint->registers +
      fpga_buf_ctrl_reg);
   while (1) {
    spin_lock_irqsave(&channel->wr_spinlock,
        flags);
    buf_idx = channel->wr_fpga_buf_idx;
    eof = channel->wr_eof;
    channel->wr_sleepy = 1;
    spin_unlock_irqrestore(&channel->wr_spinlock,
             flags);







    buf_idx++;
    if (buf_idx == channel->num_wr_buffers)
     buf_idx = 0;

    if (buf_idx == eof)
     break;
    if (wait_event_interruptible(
         channel->wr_wait,
         (!channel->wr_sleepy)))
     msleep(100);

    if (channel->wr_sleepy) {
     mutex_unlock(&channel->wr_mutex);
     dev_warn(channel->endpoint->dev,
       "Hardware failed to respond to close command, therefore left in messy state.\n");
     return -EINTR;
    }
   }
  }

  mutex_unlock(&channel->wr_mutex);
 }

 return 0;
}
