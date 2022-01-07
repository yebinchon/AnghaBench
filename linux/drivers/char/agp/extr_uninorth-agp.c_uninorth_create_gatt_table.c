
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct agp_bridge_data {int aperture_size_idx; int* gatt_table; int gatt_bus_addr; int * gatt_table_real; void* current_size; TYPE_1__* driver; } ;
struct TYPE_8__ {int size; int page_order; int num_entries; } ;
struct TYPE_7__ {int scratch_page_page; } ;
struct TYPE_6__ {struct page** pages_arr; } ;
struct TYPE_5__ {scalar_t__ size_type; int num_aperture_sizes; } ;


 void* A_IDX32 (struct agp_bridge_data*) ;
 TYPE_4__* A_SIZE_32 (void*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ LVL2_APER_SIZE ;
 int PAGE_KERNEL_NCG ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 int SetPageReserved (struct page*) ;
 scalar_t__ __get_free_pages (int ,int) ;
 TYPE_3__* agp_bridge ;
 int cpu_to_le32 (int) ;
 int flush_dcache_range (unsigned long,unsigned long) ;
 int free_pages (unsigned long,int) ;
 scalar_t__ is_u3 ;
 int kfree (struct page**) ;
 struct page** kmalloc_array (int,int,int ) ;
 int page_to_phys (int ) ;
 int scratch_value ;
 TYPE_2__ uninorth_priv ;
 struct page* virt_to_page (char*) ;
 int virt_to_phys (char*) ;
 int* vmap (struct page**,int,int ,int ) ;

__attribute__((used)) static int uninorth_create_gatt_table(struct agp_bridge_data *bridge)
{
 char *table;
 char *table_end;
 int size;
 int page_order;
 int num_entries;
 int i;
 void *temp;
 struct page *page;


 if (bridge->driver->size_type == LVL2_APER_SIZE)
  return -EINVAL;

 table = ((void*)0);
 i = bridge->aperture_size_idx;
 temp = bridge->current_size;
 size = page_order = num_entries = 0;

 do {
  size = A_SIZE_32(temp)->size;
  page_order = A_SIZE_32(temp)->page_order;
  num_entries = A_SIZE_32(temp)->num_entries;

  table = (char *) __get_free_pages(GFP_KERNEL, page_order);

  if (table == ((void*)0)) {
   i++;
   bridge->current_size = A_IDX32(bridge);
  } else {
   bridge->aperture_size_idx = i;
  }
 } while (!table && (i < bridge->driver->num_aperture_sizes));

 if (table == ((void*)0))
  return -ENOMEM;

 uninorth_priv.pages_arr = kmalloc_array(1 << page_order,
      sizeof(struct page *),
      GFP_KERNEL);
 if (uninorth_priv.pages_arr == ((void*)0))
  goto enomem;

 table_end = table + ((PAGE_SIZE * (1 << page_order)) - 1);

 for (page = virt_to_page(table), i = 0; page <= virt_to_page(table_end);
      page++, i++) {
  SetPageReserved(page);
  uninorth_priv.pages_arr[i] = page;
 }

 bridge->gatt_table_real = (u32 *) table;

 flush_dcache_range((unsigned long)table,
      (unsigned long)table_end + 1);
 bridge->gatt_table = vmap(uninorth_priv.pages_arr, (1 << page_order), 0, PAGE_KERNEL_NCG);

 if (bridge->gatt_table == ((void*)0))
  goto enomem;

 bridge->gatt_bus_addr = virt_to_phys(table);

 if (is_u3)
  scratch_value = (page_to_phys(agp_bridge->scratch_page_page) >> PAGE_SHIFT) | 0x80000000UL;
 else
  scratch_value = cpu_to_le32((page_to_phys(agp_bridge->scratch_page_page) & 0xFFFFF000UL) |
    0x1UL);
 for (i = 0; i < num_entries; i++)
  bridge->gatt_table[i] = scratch_value;

 return 0;

enomem:
 kfree(uninorth_priv.pages_arr);
 if (table)
  free_pages((unsigned long)table, page_order);
 return -ENOMEM;
}
