
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ps3_dma_region {TYPE_1__* region_ops; } ;
struct TYPE_2__ {int (* create ) (struct ps3_dma_region*) ;} ;


 int BUG_ON (int) ;
 int stub1 (struct ps3_dma_region*) ;

int ps3_dma_region_create(struct ps3_dma_region *r)
{
 BUG_ON(!r);
 BUG_ON(!r->region_ops);
 BUG_ON(!r->region_ops->create);
 return r->region_ops->create(r);
}
