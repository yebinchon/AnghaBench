
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_tree_data {struct device* dev; int modpath; int index; } ;
struct device {int * bus; } ;


 scalar_t__ check_dev (struct device*) ;
 scalar_t__ dev_is_pci (struct device*) ;
 scalar_t__ match_parisc_device (struct device*,int ,int ) ;
 scalar_t__ match_pci_device (struct device*,int ,int ) ;
 int parisc_bus_type ;
 struct device* parse_tree_node (struct device*,int ,int ) ;

__attribute__((used)) static int check_parent(struct device * dev, void * data)
{
 struct parse_tree_data * d = data;

 if (check_dev(dev)) {
  if (dev->bus == &parisc_bus_type) {
   if (match_parisc_device(dev, d->index, d->modpath))
    d->dev = dev;
  } else if (dev_is_pci(dev)) {
   if (match_pci_device(dev, d->index, d->modpath))
    d->dev = dev;
  } else if (dev->bus == ((void*)0)) {

   struct device *new = parse_tree_node(dev, d->index, d->modpath);
   if (new)
    d->dev = new;
  }
 }
 return d->dev != ((void*)0);
}
