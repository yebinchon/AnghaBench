
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_uart {TYPE_1__* serdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int dev_dbg (struct device*,char*) ;
 int pm_runtime_enable (struct device*) ;

__attribute__((used)) static int nokia_open(struct hci_uart *hu)
{
 struct device *dev = &hu->serdev->dev;

 dev_dbg(dev, "protocol open");

 pm_runtime_enable(dev);

 return 0;
}
