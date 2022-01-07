
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ state; scalar_t__ wptr; scalar_t__ end; int total_bytes; int unprocessed_bytes; int pptr; struct TYPE_3__* prev; } ;
typedef TYPE_1__ netbuffer_t ;


 scalar_t__ NB_MAGIC_BUSYHEAD ;
 scalar_t__ NB_MAGIC_HEAD ;
 int NET_BUFFER_SIZE ;
 int assert (int) ;

void advance_write_ptr (netbuffer_t *H, int offset) {
  netbuffer_t *X = H->prev;
  assert (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  assert (offset > 0 && offset <= NET_BUFFER_SIZE);
  X->wptr += offset;
  assert (X->wptr <= X->end);
  if (!X->pptr) {
    H->total_bytes += offset;
  } else {
    H->unprocessed_bytes += offset;
  }
}
