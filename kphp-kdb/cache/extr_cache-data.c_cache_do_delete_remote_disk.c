
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node_id; int server_id; int disk_id; } ;
union cache_packed_local_copy_location {int i; TYPE_1__ p; } ;
struct lev_cache_change_disk_status {int dummy; } ;


 int LEV_CACHE_DELETE_REMOTE_DISK ;
 struct lev_cache_change_disk_status* alloc_log_event (int ,int,int ) ;
 int cache_delete_remote_disk (struct lev_cache_change_disk_status*) ;
 int cache_is_valid_disk (int,int,int) ;

int cache_do_delete_remote_disk (int node_id, int server_id, int disk_id) {
  int r = cache_is_valid_disk (node_id, server_id, disk_id);
  if (r < 0) {
    return r;
  }
  union cache_packed_local_copy_location u;
  u.p.node_id = node_id;
  u.p.server_id = server_id;
  u.p.disk_id = disk_id;
  struct lev_cache_change_disk_status *E = alloc_log_event (LEV_CACHE_DELETE_REMOTE_DISK, sizeof (*E), u.i);
  return cache_delete_remote_disk (E);
}
