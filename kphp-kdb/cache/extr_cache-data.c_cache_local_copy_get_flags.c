
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int disk_id; int server_id; int node_id; } ;
union cache_packed_local_copy_location {TYPE_1__ p; scalar_t__ i; } ;
struct cache_local_copy {int flags; scalar_t__ yellow_light_start; } ;


 int CACHE_LOCAL_COPY_FLAG_TEMPORARLY_UNAVAILABLE ;
 int CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK ;
 int cache_get_disk_status (int ,int ,int ) ;
 int cache_local_copy_compute_packed_location (struct cache_local_copy*,union cache_packed_local_copy_location*) ;
 scalar_t__ log_last_ts ;
 int vkprintf (int,char*,int) ;

int cache_local_copy_get_flags (struct cache_local_copy *L, union cache_packed_local_copy_location *u) {
  if (L->flags & CACHE_LOCAL_COPY_FLAG_TEMPORARLY_UNAVAILABLE) {
    return 0;
  }
  cache_local_copy_compute_packed_location (L, u);
  int yellow_light_duration = L->flags & CACHE_LOCAL_COPY_FLAG_YELLOW_LIGHT_MASK;
  vkprintf (4, "cache_local_copy_get_flags: yellow_light_duration = %d\n", yellow_light_duration);
  if (yellow_light_duration && log_last_ts <= L->yellow_light_start + yellow_light_duration) {
    return 2;
  }
  return (u->i) ? cache_get_disk_status (u->p.node_id, u->p.server_id, u->p.disk_id) : 1;
}
