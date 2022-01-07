
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ node_id; scalar_t__ server_id; } ;
union cache_packed_local_copy_location {TYPE_1__ p; int i; } ;
struct TYPE_4__ {int id; } ;
typedef TYPE_2__ cache_stat_server_t ;



__attribute__((used)) static int cmp_stat_server_id (const void *x, const void *y) {
  cache_stat_server_t *a = *(cache_stat_server_t **) x;
  cache_stat_server_t *b = *(cache_stat_server_t **) y;
  union cache_packed_local_copy_location c, d;
  c.i = a->id;
  d.i = b->id;
  if (c.p.node_id < d.p.node_id) {
    return -1;
  }
  if (c.p.node_id > d.p.node_id) {
    return 1;
  }
  if (c.p.server_id < d.p.server_id) {
    return -1;
  }
  if (c.p.server_id > d.p.server_id) {
    return 1;
  }
  return 0;
}
