
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int extra; int total_bytes; int unprocessed_bytes; struct TYPE_5__* next; } ;
typedef TYPE_1__ netbuffer_t ;


 scalar_t__ NB_MAGIC_BUSYHEAD ;
 scalar_t__ NB_MAGIC_HEAD ;
 int assert (int) ;
 scalar_t__ dump_buffer (TYPE_1__*,int,int) ;
 int fprintf (int ,char*,TYPE_1__*,...) ;
 int stderr ;

void dump_buffers (netbuffer_t *H) {
  netbuffer_t *X;
  int a = 0, b = 0;
  assert (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  fprintf (stderr, "\n\nDumping buffer chain at %p, %d extra buffers, %d total bytes, %d unprocessed bytes\n", H, H->extra, H->total_bytes, H->unprocessed_bytes);
  b += dump_buffer (H, a, b);
  for (X = H->next; X != H; X = X->next) {
    b += dump_buffer (X, ++a, b);
  }
  fprintf (stderr, "\nEND (dumping buffer chain at %p)\n\n", H);
}
