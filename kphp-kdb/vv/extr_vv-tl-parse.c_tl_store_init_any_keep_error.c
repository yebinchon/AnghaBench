
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_target {int dummy; } ;
struct connection {int dummy; } ;
typedef enum tl_type { ____Placeholder_tl_type } tl_type ;


 int assert (int ) ;
 int tl_store_init_keep_error (struct connection*,long long) ;
 int tl_store_init_raw_msg_keep_error (struct udp_target*,long long) ;
 int tl_store_init_tcp_raw_msg_keep_error (void*,long long) ;




int tl_store_init_any_keep_error (enum tl_type type, void *out, long long qid) {
  switch (type) {
  case 130:
    return tl_store_init_keep_error ((struct connection *)out, qid);
  case 129:
    return tl_store_init_raw_msg_keep_error ((struct udp_target *)out, qid);
  case 128:
    return tl_store_init_tcp_raw_msg_keep_error (out, qid);
  default:
    assert (0);
  }
}
