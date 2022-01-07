
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct cache_uri {int dummy; } ;
struct TYPE_5__ {int location; } ;


 int CACHE_MAX_LOCAL_COPIES ;
 TYPE_1__* LC ;
 int cache_local_copy_set_yellow_light (TYPE_1__*,int) ;
 int cache_local_copy_unpack (struct cache_uri*,TYPE_1__*,int ,int,int*) ;
 int cache_uri_update_local_copy (struct cache_uri*,TYPE_1__*,int const,int) ;
 int strcmp (int ,char const* const) ;

__attribute__((used)) static int cache_set_local_copy_yellow_light (struct cache_uri *U, const char *const local_uri, int duration) {
  int i, old_len;
  const int n = cache_local_copy_unpack (U, LC, CACHE_MAX_LOCAL_COPIES, 1, &old_len);
  if (n < 0) {
    return -1;
  }
  for (i = 0; i < n; i++) {
    if (!strcmp (LC[i].location, local_uri)) {
      break;
    }
  }

  if (i >= n) {
    return -1;
  }

  cache_local_copy_set_yellow_light (LC + i, duration);
  cache_uri_update_local_copy (U, LC, n, old_len);
  return 0;
}
