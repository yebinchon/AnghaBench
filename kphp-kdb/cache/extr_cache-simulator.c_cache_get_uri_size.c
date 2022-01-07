
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_uri {long long size; } ;
struct TYPE_2__ {long long default_file_size; } ;


 TYPE_1__ simulation_params ;

inline long long cache_get_uri_size (struct cache_uri *U, int required) {
  if (U->size < 0) {
    if (required) {
      U->size = -2LL;
    }
    return simulation_params.default_file_size;
  }
  return U->size;
}
