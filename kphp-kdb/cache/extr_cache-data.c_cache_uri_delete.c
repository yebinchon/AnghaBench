
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_cache_uri {int data; } ;
struct cache_uri {scalar_t__ last_access; } ;


 int CACHE_FEATURE_REPLAY_DELETE ;
 int assert (int) ;
 int cache_features_mask ;
 int cache_uri_free (struct cache_uri*) ;
 struct cache_uri* get_uri_f (char*,int) ;
 scalar_t__ log_last_ts ;
 int memcpy (char*,int ,int) ;
 scalar_t__ uri_living_time ;
 int vkprintf (int,char*,char*,...) ;

__attribute__((used)) static void cache_uri_delete (struct lev_cache_uri *E, int l) {
  assert (log_last_ts > 0);
  if (cache_features_mask & CACHE_FEATURE_REPLAY_DELETE) {
    char uri[256];
    memcpy (uri, E->data, l);
    uri[l] = 0;
    struct cache_uri *U = get_uri_f (uri, 0);
    if (U == ((void*)0)) {
      vkprintf (2, "Delete not existing global uri - \"%s\".\n", uri);
      return;
    }
    if (U->last_access >= log_last_ts - uri_living_time + 7200) {
      vkprintf (2, "Skip deleting global uri, since it isn't too old - \"%s\", log_last_ts: %d, last_access: %d\n", uri, log_last_ts, U->last_access);
      return;
    }
    assert (U == get_uri_f (uri, -1));
    cache_uri_free (U);
  }
}
