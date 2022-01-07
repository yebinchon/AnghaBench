
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dma_pfn_offset; int of_node; } ;


 unsigned long BUS_NOTIFY_ADD_DEVICE ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int dev_err (struct device*,char*,int ) ;
 int keystone_dma_pfn_offset ;

__attribute__((used)) static int keystone_platform_notifier(struct notifier_block *nb,
          unsigned long event, void *data)
{
 struct device *dev = data;

 if (event != BUS_NOTIFY_ADD_DEVICE)
  return NOTIFY_DONE;

 if (!dev)
  return NOTIFY_BAD;

 if (!dev->of_node) {
  dev->dma_pfn_offset = keystone_dma_pfn_offset;
  dev_err(dev, "set dma_pfn_offset%08lx\n",
   dev->dma_pfn_offset);
 }
 return NOTIFY_OK;
}
