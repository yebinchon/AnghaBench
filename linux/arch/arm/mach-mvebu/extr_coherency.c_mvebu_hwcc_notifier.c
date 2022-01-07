
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;


 unsigned long BUS_NOTIFY_ADD_DEVICE ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int arm_coherent_dma_ops ;
 int set_dma_ops (struct device*,int *) ;

__attribute__((used)) static int mvebu_hwcc_notifier(struct notifier_block *nb,
          unsigned long event, void *__dev)
{
 struct device *dev = __dev;

 if (event != BUS_NOTIFY_ADD_DEVICE)
  return NOTIFY_DONE;
 set_dma_ops(dev, &arm_coherent_dma_ops);

 return NOTIFY_OK;
}
