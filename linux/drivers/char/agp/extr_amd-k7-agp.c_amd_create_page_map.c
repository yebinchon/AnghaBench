
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amd_page_map {unsigned long* real; unsigned long* remapped; } ;
struct TYPE_2__ {int scratch_page; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PAGE_SIZE ;
 scalar_t__ __get_free_page (int ) ;
 TYPE_1__* agp_bridge ;
 int readl (unsigned long*) ;
 int set_memory_uc (unsigned long,int) ;
 int writel (int ,unsigned long*) ;

__attribute__((used)) static int amd_create_page_map(struct amd_page_map *page_map)
{
 int i;

 page_map->real = (unsigned long *) __get_free_page(GFP_KERNEL);
 if (page_map->real == ((void*)0))
  return -ENOMEM;

 set_memory_uc((unsigned long)page_map->real, 1);
 page_map->remapped = page_map->real;

 for (i = 0; i < PAGE_SIZE / sizeof(unsigned long); i++) {
  writel(agp_bridge->scratch_page, page_map->remapped+i);
  readl(page_map->remapped+i);
 }

 return 0;
}
