
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sptr; scalar_t__ wptr; scalar_t__ magic; scalar_t__ rptr; } ;


 int ADD_CNT (int ) ;
 int END_TIMER (int ) ;
 scalar_t__ RPC_BUFFER_MAGIC ;
 int START_TIMER (int ) ;
 int assert (int) ;
 int fetch ;
 TYPE_1__* inbuf ;
 char* strdup (char*) ;

int do_rpc_fetch_set_pos (int pos, char **error) {
  ADD_CNT (fetch);
  START_TIMER (fetch);
  if (!inbuf) {
    *error = strdup ("Trying to fetch from empty buffer\n");
    END_TIMER (fetch);
    return 0;
  }
  if (pos < 0 || inbuf->sptr + pos > inbuf->wptr) {
    *error = strdup ("Trying to set bad position\n");
    END_TIMER (fetch);
    return 0;
  }
  assert (inbuf->magic == RPC_BUFFER_MAGIC);
  *error = 0;
  inbuf->rptr = inbuf->sptr + pos;
  END_TIMER (fetch);
  return 1;
}
