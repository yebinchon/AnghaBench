
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t item_path_offset; int map; int items; int pool; } ;
typedef TYPE_1__ git_sortedcache ;


 void* git_pool_mallocz (int *,size_t) ;
 int git_strmap_delete (int ,char*) ;
 void* git_strmap_get (int ,char const*) ;
 int git_strmap_set (int ,char*,void*) ;
 int git_vector_insert (int *,void*) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

int git_sortedcache_upsert(void **out, git_sortedcache *sc, const char *key)
{
 size_t keylen, itemlen;
 int error = 0;
 char *item_key;
 void *item;

 if ((item = git_strmap_get(sc->map, key)) != ((void*)0))
  goto done;

 keylen = strlen(key);
 itemlen = sc->item_path_offset + keylen + 1;
 itemlen = (itemlen + 7) & ~7;

 if ((item = git_pool_mallocz(&sc->pool, itemlen)) == ((void*)0)) {

  error = -1;
  goto done;
 }





 item_key = ((char *)item) + sc->item_path_offset;
 memcpy(item_key, key, keylen);

 if ((error = git_strmap_set(sc->map, item_key, item)) < 0)
  goto done;

 if ((error = git_vector_insert(&sc->items, item)) < 0)
  git_strmap_delete(sc->map, item_key);

done:
 if (out)
  *out = !error ? item : ((void*)0);
 return error;
}
