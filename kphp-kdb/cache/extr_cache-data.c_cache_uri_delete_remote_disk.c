
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int dummy; } ;
typedef int cache_disk_filter_t ;


 int CACHE_MAX_LOCAL_COPIES ;
 int * LC ;
 int cache_local_copy_cpy (int *,int *) ;
 int cache_local_copy_unpack (struct cache_uri*,int *,int ,int ,int*) ;
 int cache_uri_decr_monthly_stats (struct cache_uri*,int *) ;
 int cache_uri_decr_server_stats (struct cache_uri*,int *) ;
 scalar_t__ cache_uri_local_copy_disk_filter_match (int *,int *) ;
 int cache_uri_update_local_copy (struct cache_uri*,int *,int,int) ;
 int vkprintf (int,char*,...) ;

int cache_uri_delete_remote_disk (struct cache_uri *U, cache_disk_filter_t *F) {
  vkprintf (4, "cache_uri_delete_remote_disk: (U:%p) starting\n", U);
  int i, n, old_len, r = 0;
  n = cache_local_copy_unpack (U, LC, CACHE_MAX_LOCAL_COPIES, 0, &old_len);
  if (n < 0) {
    return -1;
  }
  for (i = 0; i < n; ) {
    if (cache_uri_local_copy_disk_filter_match (LC + i, F)) {
      r++;




      cache_uri_decr_server_stats (U, LC + i);

      n--;
      if (i != n) {
        cache_local_copy_cpy (&LC[i], &LC[n]);
      }
    } else {
      i++;
    }
  }
  if (r) {
    cache_uri_update_local_copy (U, LC, n, old_len);
  }
  vkprintf (4, "cache_uri_delete_remote_disk: ending\n");
  return r;
}
