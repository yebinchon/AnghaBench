
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sortedcache_magic_key {char const* key; int offset; } ;
struct TYPE_3__ {int items; int item_path_offset; } ;
typedef TYPE_1__ git_sortedcache ;


 int git_vector_bsearch2 (size_t*,int *,int ,struct sortedcache_magic_key*) ;
 int sortedcache_magic_cmp ;

int git_sortedcache_lookup_index(
 size_t *out, git_sortedcache *sc, const char *key)
{
 struct sortedcache_magic_key magic;

 magic.offset = sc->item_path_offset;
 magic.key = key;

 return git_vector_bsearch2(out, &sc->items, sortedcache_magic_cmp, &magic);
}
