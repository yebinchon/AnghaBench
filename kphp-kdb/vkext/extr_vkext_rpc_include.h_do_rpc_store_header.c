
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ magic; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 scalar_t__ RPC_BUFFER_MAGIC ;
 int START_TIMER (int ) ;
 int TL_RPC_DEST_ACTOR ;
 int TL_RPC_DEST_ACTOR_FLAGS ;
 int assert (int ) ;
 int buffer_write_int (TYPE_1__*,int) ;
 int buffer_write_long (TYPE_1__*,long long) ;
 TYPE_1__* outbuf ;
 int store ;

__attribute__((used)) static void do_rpc_store_header (long long cluster_id, int flags) {
  ADD_CNT (store);
  START_TIMER (store);
  assert (outbuf && outbuf->magic == RPC_BUFFER_MAGIC);
  if (flags) {
    buffer_write_int (outbuf, TL_RPC_DEST_ACTOR_FLAGS);
    buffer_write_long (outbuf, cluster_id);
    buffer_write_int (outbuf, flags);
  } else {
    buffer_write_int (outbuf, TL_RPC_DEST_ACTOR);
    buffer_write_long (outbuf, cluster_id);
  }
  END_TIMER (store);
}
