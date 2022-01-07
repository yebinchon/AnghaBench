
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {scalar_t__ state; } ;
struct process_id {int dummy; } ;
struct connection {int dummy; } ;
typedef enum tl_type { ____Placeholder_tl_type } tl_type ;


 int assert (int ) ;
 struct connection* rpc_target_choose_connection (int ,struct process_id*) ;
 int rpc_target_lookup (struct process_id*) ;
 int tl_store_init (struct connection*,long long) ;
 int tl_store_init_raw_msg (struct udp_target*,long long) ;
 int tl_type_conn ;
 int tl_type_raw_msg ;
 scalar_t__ udp_failed ;
 struct udp_target* udp_target_lookup (struct process_id*) ;
 int vkprintf (int,char*) ;

int tl_aio_init_store (enum tl_type type, struct process_id *pid, long long qid) {
  if (type == tl_type_conn) {
    struct connection *d = rpc_target_choose_connection (rpc_target_lookup (pid), pid);
    if (d) {
      vkprintf (2, "Good connection\n");
      tl_store_init (d, qid);
      return 1;
    } else {
      vkprintf (2, "Bad connection\n");
      return -1;
    }
  } else if (type == tl_type_raw_msg) {
    struct udp_target *S = udp_target_lookup (pid);
    if (S && S->state != udp_failed) {
      tl_store_init_raw_msg (S, qid);
      return 1;
    } else {
      return -1;
    }
  } else {
    assert (0);
    return -1;
  }
}
