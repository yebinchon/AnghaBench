
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_cache_access_short {scalar_t__ data; } ;
struct cache_uri {int last_access; } ;
typedef int md5_t ;


 int CACHE_FEATURE_ACCESS_QUERIES ;
 int access_short_logevents ;
 int cache_access_update_stat_server (struct cache_uri*) ;
 int cache_features_mask ;
 struct cache_uri* cache_get_uri_by_md5 (int *,int) ;
 int cache_incr (struct cache_uri*,int) ;
 int kprintf_md5 (char*,int *,int) ;
 int log_last_ts ;
 int skipped_access_logevents ;
 int verbosity ;

__attribute__((used)) static int cache_access_short (struct lev_cache_access_short *E, int t) {
  if (!(cache_features_mask & CACHE_FEATURE_ACCESS_QUERIES)) {
    return -1;
  }
  struct cache_uri *U = cache_get_uri_by_md5 ((md5_t *) E->data, 8);
  if (U == ((void*)0)) {
    if (verbosity >= 1) {
      kprintf_md5 ("wrong cache_access_short: ", (md5_t *) E->data, 8);
    }
    skipped_access_logevents++;
    return -1;
  }
  U->last_access = log_last_ts;
  cache_incr (U, t);
  access_short_logevents++;
  cache_access_update_stat_server (U);
  return 0;
}
