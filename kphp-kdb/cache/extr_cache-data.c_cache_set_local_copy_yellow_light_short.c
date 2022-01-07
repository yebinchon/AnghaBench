
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_cache_set_local_copy_yellow_light_short {int yellow_light_duration; int packed_location; scalar_t__ data; } ;
struct cache_uri {int dummy; } ;
struct cache_local_copy {int location; int packed_location; int flags; } ;
typedef int md5_t ;
typedef int L ;


 int CACHE_LOCAL_COPY_FLAG_INT ;
 int assert (struct cache_uri*) ;
 struct cache_uri* cache_get_uri_by_md5 (int *,int) ;
 int cache_local_copy_unpack_location (struct cache_uri*,struct cache_local_copy*) ;
 int cache_set_local_copy_yellow_light (struct cache_uri*,int ,int ) ;
 int memset (struct cache_local_copy*,int ,int) ;

__attribute__((used)) static int cache_set_local_copy_yellow_light_short (struct lev_cache_set_local_copy_yellow_light_short *E) {
  struct cache_uri *U = cache_get_uri_by_md5 ((md5_t *) E->data, 8);
  assert (U);
  struct cache_local_copy L;
  memset (&L, 0, sizeof (L));
  L.flags |= CACHE_LOCAL_COPY_FLAG_INT;
  L.packed_location = E->packed_location;
  cache_local_copy_unpack_location (U, &L);
  return cache_set_local_copy_yellow_light (U, L.location, E->yellow_light_duration);
}
