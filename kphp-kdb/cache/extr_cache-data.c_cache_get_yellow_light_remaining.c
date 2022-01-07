
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cache_uri {int dummy; } ;
struct TYPE_4__ {int location; } ;


 int CACHE_MAX_LOCAL_COPIES ;
 TYPE_1__* LC ;
 int cache_local_copy_get_yellow_light_time (TYPE_1__*,int*,int*) ;
 int cache_local_copy_unpack (struct cache_uri*,TYPE_1__*,int ,int,int*) ;
 struct cache_uri* get_uri_f (char const* const,int ) ;
 int strcmp (int ,char const* const) ;
 int vkprintf (int,char*,char const* const,char const* const) ;

int cache_get_yellow_light_remaining (const char *const global_uri, const char *const local_uri, int *remaining_time, int *elapsed_time) {
  vkprintf (3, "cache_get_local_copy_yellow_light_remaining (\"%s\", \"%s\")\n", global_uri, local_uri);
  struct cache_uri *U = get_uri_f (global_uri, 0);
  if (U == ((void*)0)) {
    return -1;
  }

  int i, n, old_len;
  n = cache_local_copy_unpack (U, LC, CACHE_MAX_LOCAL_COPIES, 1, &old_len);
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
  cache_local_copy_get_yellow_light_time (LC + i, remaining_time, elapsed_time);
  return 0;
}
