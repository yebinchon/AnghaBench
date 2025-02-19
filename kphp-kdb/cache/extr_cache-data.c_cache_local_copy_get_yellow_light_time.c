
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_local_copy {int flags; scalar_t__ yellow_light_start; } ;


 int CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK ;
 scalar_t__ log_last_ts ;

void cache_local_copy_get_yellow_light_time (struct cache_local_copy *L, int *remaining_time, int *elapsed_time) {
  *remaining_time = *elapsed_time = 0;
  int duration = L->flags & CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK;
  if (!duration || (L->yellow_light_start + duration <= log_last_ts)) {
    return;
  }
  *elapsed_time = log_last_ts - L->yellow_light_start;
  *remaining_time = duration - (*elapsed_time);
}
