
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw_message {int dummy; } ;


 scalar_t__ TL_OUT ;
 int TL_OUT_EXTRA ;
 int TL_OUT_RAW_MSG ;
 int assert (int ) ;
 int flush_later (int ) ;
 int tcp_rpc_conn_send (int ,int ,int ) ;
 int zfree (int ,int) ;

__attribute__((used)) static inline void __tl_tcp_raw_msg_store_flush (void) {

  assert (TL_OUT_RAW_MSG);
  assert (TL_OUT_EXTRA);

  tcp_rpc_conn_send (TL_OUT_EXTRA, TL_OUT_RAW_MSG, 0);
  zfree (TL_OUT_RAW_MSG, sizeof (struct raw_message));

  flush_later (TL_OUT_EXTRA);
  TL_OUT = 0;

}
