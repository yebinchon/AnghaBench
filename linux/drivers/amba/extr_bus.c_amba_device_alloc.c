
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; void* end; void* start; } ;
struct amba_device {TYPE_1__ res; } ;
typedef void* resource_size_t ;


 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int amba_device_initialize (struct amba_device*,char const*) ;
 struct amba_device* kzalloc (int,int ) ;

struct amba_device *amba_device_alloc(const char *name, resource_size_t base,
 size_t size)
{
 struct amba_device *dev;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (dev) {
  amba_device_initialize(dev, name);
  dev->res.start = base;
  dev->res.end = base + size - 1;
  dev->res.flags = IORESOURCE_MEM;
 }

 return dev;
}
