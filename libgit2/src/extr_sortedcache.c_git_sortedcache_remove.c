
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int item_path_offset; int free_item_payload; int (* free_item ) (int ,char*) ;int map; int items; } ;
typedef TYPE_1__ git_sortedcache ;


 int GIT_ENOTFOUND ;
 int GIT_ERROR_INVALID ;
 int git_error_set (int ,char*) ;
 int git_strmap_delete (int ,char*) ;
 char* git_vector_get (int *,size_t) ;
 int git_vector_remove (int *,size_t) ;
 int stub1 (int ,char*) ;

int git_sortedcache_remove(git_sortedcache *sc, size_t pos)
{
 char *item;






 if ((item = git_vector_get(&sc->items, pos)) == ((void*)0)) {
  git_error_set(GIT_ERROR_INVALID, "removing item out of range");
  return GIT_ENOTFOUND;
 }

 (void)git_vector_remove(&sc->items, pos);

 git_strmap_delete(sc->map, item + sc->item_path_offset);

 if (sc->free_item)
  sc->free_item(sc->free_item_payload, item);

 return 0;
}
