
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct agp_memory {int type; int page_count; } ;
struct _parisc_agp_info {int io_pages_per_kpage; int * gatt; } ;
typedef int off_t ;
struct TYPE_5__ {TYPE_1__* driver; int scratch_page; } ;
struct TYPE_4__ {int (* tlb_flush ) (struct agp_memory*) ;scalar_t__ (* agp_type_to_mask_type ) (TYPE_2__*,int) ;} ;


 int EINVAL ;
 TYPE_2__* agp_bridge ;
 struct _parisc_agp_info parisc_agp_info ;
 scalar_t__ stub1 (TYPE_2__*,int) ;
 int stub2 (struct agp_memory*) ;

__attribute__((used)) static int
parisc_agp_remove_memory(struct agp_memory *mem, off_t pg_start, int type)
{
 struct _parisc_agp_info *info = &parisc_agp_info;
 int i, io_pg_start, io_pg_count;

 if (type != mem->type ||
  agp_bridge->driver->agp_type_to_mask_type(agp_bridge, type)) {
  return -EINVAL;
 }

 io_pg_start = info->io_pages_per_kpage * pg_start;
 io_pg_count = info->io_pages_per_kpage * mem->page_count;
 for (i = io_pg_start; i < io_pg_count + io_pg_start; i++) {
  info->gatt[i] = agp_bridge->scratch_page;
 }

 agp_bridge->driver->tlb_flush(mem);
 return 0;
}
