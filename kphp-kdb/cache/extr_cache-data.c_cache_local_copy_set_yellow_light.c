
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_local_copy {int flags; int yellow_light_start; } ;


 int CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK ;
 int log_last_ts ;
 int vkprintf (int,char*,int) ;

__attribute__((used)) static void cache_local_copy_set_yellow_light (struct cache_local_copy *L, int duration) {
  vkprintf (4, "cache_local_copy_set_yellow_light (duration: %d)\n", duration);
  L->flags &= ~CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK;
  L->flags |= duration;
  L->yellow_light_start = log_last_ts;
}
