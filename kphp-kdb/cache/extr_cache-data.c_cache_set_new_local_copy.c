
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_uri {int dummy; } ;
struct cache_local_copy {int dummy; } ;


 int CACHE_MAX_LOCAL_COPIES ;
 int * LC ;
 int cache_local_copy_cpy (int *,struct cache_local_copy*) ;
 int cache_local_copy_unpack (struct cache_uri*,int *,int,int ,int*) ;
 int cache_uri_incr_monthly_stats (struct cache_uri*,struct cache_local_copy*) ;
 int cache_uri_incr_server_stats (struct cache_uri*,struct cache_local_copy*) ;
 int cache_uri_update_local_copy (struct cache_uri*,int *,int,int) ;

__attribute__((used)) static int cache_set_new_local_copy (struct cache_uri *U, struct cache_local_copy *L) {
  int n, old_len;
  n = cache_local_copy_unpack (U, LC, CACHE_MAX_LOCAL_COPIES, 0, &old_len);
  if (n < 0 || n >= CACHE_MAX_LOCAL_COPIES) {
    return -1;
  }




  cache_uri_incr_server_stats (U, L);
  cache_local_copy_cpy (&LC[n++], L);

  return cache_uri_update_local_copy (U, LC, n, old_len);
}
