
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xilly_endpoint {scalar_t__ idtlen; int dev; TYPE_1__* ephw; scalar_t__ fatal_error; scalar_t__ registers; struct xilly_channel** channels; } ;
struct xilly_channel {int wr_sleepy; TYPE_2__** wr_buffers; int wr_buf_size; int endpoint; int wr_wait; } ;
struct TYPE_4__ {scalar_t__ end_offset; unsigned char* addr; int dma_addr; } ;
struct TYPE_3__ {int (* hw_sync_sgl_for_cpu ) (int ,int ,int ,int ) ;} ;


 int DMA_FROM_DEVICE ;
 int EIO ;
 int ENODEV ;
 int XILLY_TIMEOUT ;
 scalar_t__ crc32_le (int ,unsigned char*,scalar_t__) ;
 int dev_err (int ,char*,...) ;
 scalar_t__ fpga_buf_ctrl_reg ;
 int iowrite32 (int,scalar_t__) ;
 int stub1 (int ,int ,int ,int ) ;
 long wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int xilly_obtain_idt(struct xilly_endpoint *endpoint)
{
 struct xilly_channel *channel;
 unsigned char *version;
 long t;

 channel = endpoint->channels[1];

 channel->wr_sleepy = 1;

 iowrite32(1 |
    (3 << 24),
    endpoint->registers + fpga_buf_ctrl_reg);

 t = wait_event_interruptible_timeout(channel->wr_wait,
          (!channel->wr_sleepy),
          XILLY_TIMEOUT);

 if (t <= 0) {
  dev_err(endpoint->dev, "Failed to obtain IDT. Aborting.\n");

  if (endpoint->fatal_error)
   return -EIO;

  return -ENODEV;
 }

 endpoint->ephw->hw_sync_sgl_for_cpu(
  channel->endpoint,
  channel->wr_buffers[0]->dma_addr,
  channel->wr_buf_size,
  DMA_FROM_DEVICE);

 if (channel->wr_buffers[0]->end_offset != endpoint->idtlen) {
  dev_err(endpoint->dev,
   "IDT length mismatch (%d != %d). Aborting.\n",
   channel->wr_buffers[0]->end_offset, endpoint->idtlen);
  return -ENODEV;
 }

 if (crc32_le(~0, channel->wr_buffers[0]->addr,
       endpoint->idtlen+1) != 0) {
  dev_err(endpoint->dev, "IDT failed CRC check. Aborting.\n");
  return -ENODEV;
 }

 version = channel->wr_buffers[0]->addr;


 if (*version > 0x82) {
  dev_err(endpoint->dev,
   "No support for IDT version 0x%02x. Maybe the xillybus driver needs an upgrade. Aborting.\n",
   *version);
  return -ENODEV;
 }

 return 0;
}
