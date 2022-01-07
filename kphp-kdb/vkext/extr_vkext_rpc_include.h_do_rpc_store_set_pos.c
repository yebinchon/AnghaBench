
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ magic; scalar_t__ rptr; scalar_t__ eptr; scalar_t__ wptr; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 scalar_t__ RPC_BUFFER_MAGIC ;
 int START_TIMER (int ) ;
 int assert (int ) ;
 TYPE_1__* outbuf ;
 int store ;

__attribute__((used)) static int do_rpc_store_set_pos (int p) {
  ADD_CNT (store);
  START_TIMER (store);
  assert (outbuf && outbuf->magic == RPC_BUFFER_MAGIC);
  if (p < 0 || outbuf->rptr + p > outbuf->eptr) {
    return 0;
  }
  outbuf->wptr = outbuf->rptr + p;
  END_TIMER (store);
  return 1;
}
