
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lev_cache_uri {int data; } ;
struct lev_cache_access_short {int data; } ;
struct lev_cache_access_long {int data; } ;
struct cache_uri {char const uri_md5_h0; } ;
struct TYPE_3__ {char const* c; } ;
struct TYPE_4__ {TYPE_1__ uri_md5; } ;


 scalar_t__ LEV_CACHE_ACCESS_LONG ;
 scalar_t__ LEV_CACHE_ACCESS_SHORT ;
 scalar_t__ LEV_CACHE_URI_ADD ;
 int access_miss_counters ;
 int access_success_counters ;
 void* alloc_log_event (scalar_t__,int,int ) ;
 int assert (int) ;
 int cache_access_long (struct lev_cache_access_long*,int) ;
 int cache_access_short (struct lev_cache_access_short*,int) ;
 int cache_get_unique_md5_bytes (struct cache_uri*) ;
 int cache_stats_counter_incr (int ) ;
 int cache_uri_has_active_local_copy (struct cache_uri*) ;
 int compute_get_uri_f_last_md5 (struct cache_uri*) ;
 struct cache_uri* get_uri_f (char const* const,int) ;
 TYPE_2__ get_uri_f_last_md5 ;
 int memcpy (int ,char const*,int) ;
 int strlen (char const* const) ;
 long long uries ;

void cache_do_access (const char *const uri) {
  long long old_uries = uries;
  struct cache_uri *U = get_uri_f (uri, 1);

  cache_stats_counter_incr ((cache_uri_has_active_local_copy (U) == 1) ? access_success_counters : access_miss_counters);

  if (uries != old_uries) {
    int l = strlen (uri);
    assert (l < 256);
    struct lev_cache_uri *E = alloc_log_event (LEV_CACHE_URI_ADD + l, sizeof (struct lev_cache_uri) + l, 0);
    memcpy (E->data, uri, l);
  }
  const int bytes = cache_get_unique_md5_bytes (U);
  if (bytes == 8) {
    struct lev_cache_access_short *E = alloc_log_event (LEV_CACHE_ACCESS_SHORT + 1, sizeof (struct lev_cache_access_short), 0);
    memcpy (E->data, &U->uri_md5_h0, 8);
    cache_access_short (E, 1);
  } else {
    assert (bytes == 16);
    struct lev_cache_access_long *E = alloc_log_event (LEV_CACHE_ACCESS_LONG + 1, sizeof (struct lev_cache_access_long), 0);
    compute_get_uri_f_last_md5 (U);
    memcpy (E->data, get_uri_f_last_md5.uri_md5.c, 16);
    cache_access_long (E, 1);
  }
}
