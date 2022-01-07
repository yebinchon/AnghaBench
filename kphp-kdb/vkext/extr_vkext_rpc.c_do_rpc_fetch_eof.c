
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ magic; scalar_t__ rptr; scalar_t__ wptr; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 scalar_t__ RPC_BUFFER_MAGIC ;
 int START_TIMER (int ) ;
 int assert (int) ;
 int fetch ;
 TYPE_1__* inbuf ;

int do_rpc_fetch_eof (char **error) {
  ADD_CNT (fetch);
  START_TIMER (fetch);
  if (!inbuf) {
    *error = "Trying fetch from empty buffer\n";
    END_TIMER (fetch);
    return 0;
  }
  assert (inbuf->magic == RPC_BUFFER_MAGIC);
  if (inbuf->rptr < inbuf->wptr) {
    *error = 0;
    END_TIMER (fetch);
    return 0;
  } else {
    *error = 0;
    END_TIMER (fetch);
    return 1;
  }
}
