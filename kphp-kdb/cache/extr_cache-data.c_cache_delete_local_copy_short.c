
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_cache_set_new_local_copy_short {int packed_location; scalar_t__ data; } ;
struct cache_uri {int dummy; } ;
struct cache_local_copy {int packed_location; int flags; } ;
typedef int md5_t ;
typedef int L ;


 int CACHE_LOCAL_COPY_FLAG_INT ;
 int assert (struct cache_uri*) ;
 int cache_delete_local_copy (struct cache_uri*,struct cache_local_copy*) ;
 struct cache_uri* cache_get_uri_by_md5 (int *,int) ;
 int memset (struct cache_local_copy*,int ,int) ;

__attribute__((used)) static int cache_delete_local_copy_short (struct lev_cache_set_new_local_copy_short *E) {
  struct cache_uri *U = cache_get_uri_by_md5 ((md5_t *) E->data, 8);
  assert (U);
  struct cache_local_copy L;
  memset (&L, 0, sizeof (L));
  L.flags |= CACHE_LOCAL_COPY_FLAG_INT;
  L.packed_location = E->packed_location;
  return cache_delete_local_copy (U, &L);
}
