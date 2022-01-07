
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ hw_type; } ;
struct parisc_device {TYPE_1__ id; } ;
struct device {int * bus; } ;


 scalar_t__ HPHW_FAULTY ;
 int parisc_bus_type ;
 struct parisc_device* to_parisc_device (struct device*) ;

__attribute__((used)) static inline int check_dev(struct device *dev)
{
 if (dev->bus == &parisc_bus_type) {
  struct parisc_device *pdev;
  pdev = to_parisc_device(dev);
  return pdev->id.hw_type != HPHW_FAULTY;
 }
 return 1;
}
