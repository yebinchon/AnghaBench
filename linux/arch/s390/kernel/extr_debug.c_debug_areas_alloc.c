
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ************************ debug_entry_t ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int kfree (int ***************************) ;
 void* kmalloc_array (int,int,int ) ;
 int ************************************* kzalloc (int ,int ) ;

__attribute__((used)) static debug_entry_t ***debug_areas_alloc(int pages_per_area, int nr_areas)
{
 debug_entry_t ***areas;
 int i, j;

 areas = kmalloc_array(nr_areas, sizeof(debug_entry_t **), GFP_KERNEL);
 if (!areas)
  goto fail_malloc_areas;
 for (i = 0; i < nr_areas; i++) {
  areas[i] = kmalloc_array(pages_per_area,
      sizeof(debug_entry_t *),
      GFP_KERNEL);
  if (!areas[i])
   goto fail_malloc_areas2;
  for (j = 0; j < pages_per_area; j++) {
   areas[i][j] = kzalloc(PAGE_SIZE, GFP_KERNEL);
   if (!areas[i][j]) {
    for (j--; j >= 0 ; j--)
     kfree(areas[i][j]);
    kfree(areas[i]);
    goto fail_malloc_areas2;
   }
  }
 }
 return areas;

fail_malloc_areas2:
 for (i--; i >= 0; i--) {
  for (j = 0; j < pages_per_area; j++)
   kfree(areas[i][j]);
  kfree(areas[i]);
 }
 kfree(areas);
fail_malloc_areas:
 return ((void*)0);
}
