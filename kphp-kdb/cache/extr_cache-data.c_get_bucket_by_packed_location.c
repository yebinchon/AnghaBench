
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int server_id; scalar_t__ node_id; } ;
union cache_packed_local_copy_location {int i; TYPE_1__ p; } ;


 int CACHE_URI_BUCKETS ;

__attribute__((used)) static int get_bucket_by_packed_location (int packed_location) {
  union cache_packed_local_copy_location u;
  u.i = packed_location;
  return (u.p.server_id + (((int) u.p.node_id) << 8)) % CACHE_URI_BUCKETS;
}
