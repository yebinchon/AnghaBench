
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vma_to_fileoffset_map {struct vma_to_fileoffset_map* next; } ;


 int kfree (struct vma_to_fileoffset_map*) ;

void vma_map_free(struct vma_to_fileoffset_map *map)
{
 while (map) {
  struct vma_to_fileoffset_map *next = map->next;
  kfree(map);
  map = next;
 }
}
