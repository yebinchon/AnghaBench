
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_uri {scalar_t__ local_copy; int last_access; } ;
struct TYPE_2__ {int cache_hits_files; int cache_hits_bytes; int cache_misses_files; int cache_misses_bytes; } ;


 long long cache_get_uri_size (struct cache_uri*,int) ;
 int cache_incr (struct cache_uri*,int) ;
 int now ;
 TYPE_1__ simulation_stats ;

__attribute__((used)) static void uri_access (struct cache_uri *U, int t) {
  if (U == ((void*)0)) {
    return;
  }
  U->last_access = now;
  cache_incr (U, t);
  if (U->local_copy) {
    const long long s = cache_get_uri_size (U, 1);
    simulation_stats.cache_hits_files += t;
    simulation_stats.cache_hits_bytes += t * s;
  } else {
    const long long s = cache_get_uri_size (U, 0);
    simulation_stats.cache_misses_files += t;
    simulation_stats.cache_misses_bytes += t * s;
  }
}
