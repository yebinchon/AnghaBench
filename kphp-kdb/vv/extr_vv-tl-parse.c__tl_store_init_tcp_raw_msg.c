
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw_message {int dummy; } ;
struct connection {int dummy; } ;
struct TYPE_2__ {int remote_pid; } ;


 TYPE_1__* TCP_RPC_DATA (struct connection*) ;
 int * TL_OUT_PID ;
 int __tl_store_init (struct raw_message*,struct connection*,int ,int *,int,int,long long) ;
 int rwm_init (struct raw_message*,int ) ;
 int tl_out_tcp_raw_msg_methods ;
 int tl_type_tcp_raw_msg ;
 scalar_t__ zmalloc (int) ;

__attribute__((used)) static inline int _tl_store_init_tcp_raw_msg (struct connection *c, long long qid, int keep_error) {
  if (c) {
    TL_OUT_PID = &(TCP_RPC_DATA(c)->remote_pid);
  } else {
    TL_OUT_PID = 0;
  }
  struct raw_message *d = 0;
  if (c) {
    d = (struct raw_message *)zmalloc (sizeof (*d));
    rwm_init (d, 0);
  }
  return __tl_store_init (d, c, tl_type_tcp_raw_msg, &tl_out_tcp_raw_msg_methods, (1 << 27), keep_error, qid);
}
