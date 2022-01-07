
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int of_node; } ;
struct platform_device {int num_resources; TYPE_2__ dev; TYPE_1__* resource; scalar_t__ id; } ;
typedef int resource_size_t ;
struct TYPE_4__ {int flags; int start; } ;


 int ACE_BUS_WIDTH_16 ;
 int ACE_BUS_WIDTH_8 ;
 int IORESOURCE_IRQ ;
 int IORESOURCE_MEM ;
 int ace_alloc (TYPE_2__*,scalar_t__,int,int,int) ;
 int dev_dbg (TYPE_2__*,char*,struct platform_device*) ;
 scalar_t__ of_find_property (int ,char*,int *) ;
 scalar_t__ of_property_read_u32 (int ,char*,scalar_t__*) ;

__attribute__((used)) static int ace_probe(struct platform_device *dev)
{
 resource_size_t physaddr = 0;
 int bus_width = ACE_BUS_WIDTH_16;
 u32 id = dev->id;
 int irq = 0;
 int i;

 dev_dbg(&dev->dev, "ace_probe(%p)\n", dev);


 if (of_property_read_u32(dev->dev.of_node, "port-number", &id))
  id = 0;
 if (of_find_property(dev->dev.of_node, "8-bit", ((void*)0)))
  bus_width = ACE_BUS_WIDTH_8;

 for (i = 0; i < dev->num_resources; i++) {
  if (dev->resource[i].flags & IORESOURCE_MEM)
   physaddr = dev->resource[i].start;
  if (dev->resource[i].flags & IORESOURCE_IRQ)
   irq = dev->resource[i].start;
 }


 return ace_alloc(&dev->dev, id, physaddr, irq, bus_width);
}
