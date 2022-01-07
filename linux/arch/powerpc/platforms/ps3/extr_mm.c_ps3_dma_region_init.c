
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ps3_system_bus_device {int dev_type; } ;
struct ps3_dma_region {int page_size; int region_type; unsigned long offset; unsigned long len; int * region_ops; struct ps3_system_bus_device* dev; } ;
typedef enum ps3_dma_region_type { ____Placeholder_ps3_dma_region_type } ps3_dma_region_type ;
typedef enum ps3_dma_page_size { ____Placeholder_ps3_dma_page_size } ps3_dma_page_size ;
struct TYPE_5__ {scalar_t__ offset; } ;
struct TYPE_4__ {unsigned long size; } ;
struct TYPE_6__ {int total; TYPE_2__ r1; TYPE_1__ rm; } ;


 int BUG () ;
 int EINVAL ;


 int USE_DYNAMIC_DMA ;
 unsigned long _ALIGN_UP (int ,int) ;
 int __pa (void*) ;
 TYPE_3__ map ;
 int ps3_dma_ioc0_region_ops ;
 int ps3_dma_sb_region_linear_ops ;
 int ps3_dma_sb_region_ops ;
 unsigned long ps3_mm_phys_to_lpar (int ) ;

int ps3_dma_region_init(struct ps3_system_bus_device *dev,
 struct ps3_dma_region *r, enum ps3_dma_page_size page_size,
 enum ps3_dma_region_type region_type, void *addr, unsigned long len)
{
 unsigned long lpar_addr;

 lpar_addr = addr ? ps3_mm_phys_to_lpar(__pa(addr)) : 0;

 r->dev = dev;
 r->page_size = page_size;
 r->region_type = region_type;
 r->offset = lpar_addr;
 if (r->offset >= map.rm.size)
  r->offset -= map.r1.offset;
 r->len = len ? len : _ALIGN_UP(map.total, 1 << r->page_size);

 switch (dev->dev_type) {
 case 128:
  r->region_ops = (USE_DYNAMIC_DMA)
   ? &ps3_dma_sb_region_ops
   : &ps3_dma_sb_region_linear_ops;
  break;
 case 129:
  r->region_ops = &ps3_dma_ioc0_region_ops;
  break;
 default:
  BUG();
  return -EINVAL;
 }
 return 0;
}
