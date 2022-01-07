
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xilly_channel {int log2_element_size; int chan_num; scalar_t__* rd_leftovers; int wr_mutex; int rd_mutex; TYPE_1__* endpoint; } ;
struct file {int f_pos; struct xilly_channel* private_data; } ;
typedef int loff_t ;
struct TYPE_2__ {int register_mutex; scalar_t__ registers; scalar_t__ fatal_error; } ;


 int EINVAL ;
 int EIO ;



 scalar_t__ fpga_buf_ctrl_reg ;
 scalar_t__ fpga_buf_offset_reg ;
 int iowrite32 (int,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static loff_t xillybus_llseek(struct file *filp, loff_t offset, int whence)
{
 struct xilly_channel *channel = filp->private_data;
 loff_t pos = filp->f_pos;
 int rc = 0;
 if (channel->endpoint->fatal_error)
  return -EIO;

 mutex_lock(&channel->wr_mutex);
 mutex_lock(&channel->rd_mutex);

 switch (whence) {
 case 128:
  pos = offset;
  break;
 case 130:
  pos += offset;
  break;
 case 129:
  pos = offset;
  break;
 default:
  rc = -EINVAL;
  goto end;
 }


 if (pos & ((1 << channel->log2_element_size) - 1)) {
  rc = -EINVAL;
  goto end;
 }

 mutex_lock(&channel->endpoint->register_mutex);

 iowrite32(pos >> channel->log2_element_size,
    channel->endpoint->registers + fpga_buf_offset_reg);

 iowrite32((channel->chan_num << 1) |
    (6 << 24),
    channel->endpoint->registers + fpga_buf_ctrl_reg);

 mutex_unlock(&channel->endpoint->register_mutex);

end:
 mutex_unlock(&channel->rd_mutex);
 mutex_unlock(&channel->wr_mutex);

 if (rc)
  return rc;

 filp->f_pos = pos;
 channel->rd_leftovers[3] = 0;

 return pos;
}
