
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xilly_endpoint {int idtlen; int dma_using_dac; int dev; int ep_wait; scalar_t__ registers; } ;


 int ENODEV ;
 int XILLY_TIMEOUT ;
 int dev_err (int ,char*) ;
 scalar_t__ fpga_dma_control_reg ;
 int iowrite32 (int ,scalar_t__) ;
 long wait_event_interruptible_timeout (int ,int,int ) ;

__attribute__((used)) static int xilly_quiesce(struct xilly_endpoint *endpoint)
{
 long t;

 endpoint->idtlen = -1;

 iowrite32((u32) (endpoint->dma_using_dac & 0x0001),
    endpoint->registers + fpga_dma_control_reg);

 t = wait_event_interruptible_timeout(endpoint->ep_wait,
          (endpoint->idtlen >= 0),
          XILLY_TIMEOUT);
 if (t <= 0) {
  dev_err(endpoint->dev,
   "Failed to quiesce the device on exit.\n");
  return -ENODEV;
 }
 return 0;
}
