
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3_mmio_region {TYPE_1__* mmio_ops; } ;
struct TYPE_2__ {int (* free ) (struct ps3_mmio_region*) ;} ;


 int stub1 (struct ps3_mmio_region*) ;

int ps3_free_mmio_region(struct ps3_mmio_region *r)
{
 return r->mmio_ops->free(r);
}
