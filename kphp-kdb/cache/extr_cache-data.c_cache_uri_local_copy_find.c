
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int dummy; } ;
struct cache_local_copy {int dummy; } ;
typedef int cache_disk_filter_t ;


 int CACHE_MAX_LOCAL_COPIES ;
 struct cache_local_copy* LC ;
 int cache_local_copy_unpack (struct cache_uri*,struct cache_local_copy*,int ,int,int *) ;
 scalar_t__ cache_uri_local_copy_disk_filter_match (struct cache_local_copy*,int *) ;
 int disk_filter ;

struct cache_local_copy *cache_uri_local_copy_find (struct cache_uri *U, cache_disk_filter_t *F) {
  const int n = cache_local_copy_unpack (U, LC, CACHE_MAX_LOCAL_COPIES, 1, ((void*)0));
  int i;
  for (i = 0; i < n; i++) {
    if (cache_uri_local_copy_disk_filter_match (LC + i, &disk_filter)) {
      return LC + i;
    }
  }
  return ((void*)0);
}
