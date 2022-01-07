
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_local_copy_server {unsigned int* bitset; } ;


 int MAX_SERVER_ID ;
 struct cache_local_copy_server* get_disabled_server_f (int,int ) ;

__attribute__((used)) static int cache_get_disk_status (int node_id, int server_id, int disk_id) {
  struct cache_local_copy_server *S = get_disabled_server_f (node_id * (MAX_SERVER_ID + 1) + server_id, 0);
  if (S == ((void*)0)) {
    return 1;
  }
  return (S->bitset[disk_id >> 5] & (1U << (disk_id & 31))) ? 0 : 1;
}
