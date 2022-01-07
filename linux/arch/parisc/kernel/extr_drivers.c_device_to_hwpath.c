
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parisc_device {int hw_path; } ;
struct hardware_path {int mod; } ;
struct device {struct device* parent; int * bus; } ;


 scalar_t__ dev_is_pci (struct device*) ;
 int get_node_path (struct device*,struct hardware_path*) ;
 int parisc_bus_type ;
 struct parisc_device* to_parisc_device (struct device*) ;

void device_to_hwpath(struct device *dev, struct hardware_path *path)
{
 struct parisc_device *padev;
 if (dev->bus == &parisc_bus_type) {
  padev = to_parisc_device(dev);
  get_node_path(dev->parent, path);
  path->mod = padev->hw_path;
 } else if (dev_is_pci(dev)) {
  get_node_path(dev, path);
 }
}
