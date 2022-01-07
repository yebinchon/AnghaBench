
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xilly_endpoint_hardware {int dummy; } ;
struct xilly_endpoint {int msg_counter; int register_mutex; int ep_wait; scalar_t__ fatal_error; scalar_t__ failed_messages; struct xilly_endpoint_hardware* ephw; struct device* dev; struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
struct device {int dummy; } ;


 int GFP_KERNEL ;
 struct xilly_endpoint* devm_kzalloc (struct device*,int,int ) ;
 int init_waitqueue_head (int *) ;
 int mutex_init (int *) ;

struct xilly_endpoint *xillybus_init_endpoint(struct pci_dev *pdev,
           struct device *dev,
           struct xilly_endpoint_hardware
           *ephw)
{
 struct xilly_endpoint *endpoint;

 endpoint = devm_kzalloc(dev, sizeof(*endpoint), GFP_KERNEL);
 if (!endpoint)
  return ((void*)0);

 endpoint->pdev = pdev;
 endpoint->dev = dev;
 endpoint->ephw = ephw;
 endpoint->msg_counter = 0x0b;
 endpoint->failed_messages = 0;
 endpoint->fatal_error = 0;

 init_waitqueue_head(&endpoint->ep_wait);
 mutex_init(&endpoint->register_mutex);

 return endpoint;
}
