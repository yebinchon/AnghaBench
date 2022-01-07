
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int start; } ;
struct amba_device {TYPE_1__ res; } ;


 int release_mem_region (int ,int ) ;
 int resource_size (TYPE_1__*) ;

void amba_release_regions(struct amba_device *dev)
{
 u32 size;

 size = resource_size(&dev->res);
 release_mem_region(dev->res.start, size);
}
