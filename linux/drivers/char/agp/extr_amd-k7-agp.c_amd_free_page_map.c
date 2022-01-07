
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_page_map {scalar_t__ real; } ;


 int free_page (unsigned long) ;
 int set_memory_wb (unsigned long,int) ;

__attribute__((used)) static void amd_free_page_map(struct amd_page_map *page_map)
{
 set_memory_wb((unsigned long)page_map->real, 1);
 free_page((unsigned long) page_map->real);
}
