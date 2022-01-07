
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int state; } ;
struct process_id {int dummy; } ;
struct connection {int dummy; } ;
typedef enum tl_type { ____Placeholder_tl_type } tl_type ;


 int assert (int ) ;
 int fprintf (int ,char*,int) ;
 struct connection* rpc_target_choose_connection (int ,struct process_id*) ;
 int rpc_target_lookup (struct process_id*) ;
 int stderr ;
 int tl_store_init_keep_error (struct connection*,long long) ;
 int tl_store_init_raw_msg_keep_error (struct udp_target*,long long) ;
 int tl_store_init_tcp_raw_msg_keep_error (struct connection*,long long) ;



 int udp_failed ;
 struct udp_target* udp_target_lookup (struct process_id*) ;
 int vkprintf (int,char*) ;

int tl_init_store_keep_error (enum tl_type type, struct process_id *pid, long long qid) {
  switch (type) {
  case 130:
    {
      struct connection *d = rpc_target_choose_connection (rpc_target_lookup (pid), pid);
      if (d) {
        vkprintf (2, "Good connection\n");
        tl_store_init_keep_error (d, qid);
        return 1;
      } else {
        vkprintf (2, "Bad connection\n");
        return -1;
      }
    }
  case 129:
    {
      struct udp_target *S = udp_target_lookup (pid);
      if (S && S->state != udp_failed) {
        tl_store_init_raw_msg_keep_error (S, qid);
        return 1;
      } else {
        return -1;
      }
    }
  case 128:
    {
      struct connection *d = rpc_target_choose_connection (rpc_target_lookup (pid), pid);
      if (d) {
        vkprintf (2, "Good connection\n");
        tl_store_init_tcp_raw_msg_keep_error (d, qid);
        return 1;
      } else {
        vkprintf (2, "Bad connection\n");
        return -1;
      }
    }
  default:
    fprintf (stderr, "type = %d\n", type);
    assert (0);
    return 0;
  }
}
