
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
 int buffer_write_double (TYPE_1__*,double) ;
 int fprintf (int ,char*,double) ;
 TYPE_1__* outbuf ;
 int stderr ;
 int store ;

__attribute__((used)) static void do_rpc_store_double (double value) {
  ADD_CNT (store);
  START_TIMER (store);
  assert (outbuf && outbuf->magic == RPC_BUFFER_MAGIC);
  buffer_write_double (outbuf, value);



  END_TIMER (store);
}
