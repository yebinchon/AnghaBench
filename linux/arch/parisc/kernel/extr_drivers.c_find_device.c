
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ start; } ;
struct parisc_device {TYPE_1__ hpa; } ;
struct find_data {scalar_t__ hpa; struct parisc_device* dev; } ;
struct device {int dummy; } ;


 scalar_t__ check_dev (struct device*) ;
 struct parisc_device* to_parisc_device (struct device*) ;

__attribute__((used)) static int find_device(struct device * dev, void * data)
{
 struct parisc_device * pdev = to_parisc_device(dev);
 struct find_data * d = (struct find_data*)data;

 if (check_dev(dev)) {
  if (pdev->hpa.start == d->hpa) {
   d->dev = pdev;
   return 1;
  }
 }
 return 0;
}
