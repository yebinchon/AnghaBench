
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 scalar_t__ RPC_BUFFER_MAGIC ;
 int START_TIMER (int ) ;
 int assert (int ) ;
 int buffer_write_int (TYPE_1__*,int) ;
 int fprintf (int ,char*,int) ;
 TYPE_1__* outbuf ;
 int stderr ;
 int store ;

__attribute__((used)) static void do_rpc_store_int (int value) {
  ADD_CNT (store);
  START_TIMER (store);
  assert (outbuf && outbuf->magic == RPC_BUFFER_MAGIC);
  buffer_write_int (outbuf, value);



  END_TIMER (store);
}
