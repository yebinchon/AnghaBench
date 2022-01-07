
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int end; int wptr; int unprocessed_bytes; int total_bytes; scalar_t__ pptr; scalar_t__ rptr; int extra; struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef TYPE_1__ netbuffer_t ;


 TYPE_1__* alloc_buffer () ;
 int memcpy (int,char const*,int) ;

int write_out (netbuffer_t *H, const void *__data, int len) {
  netbuffer_t *X = H->prev, *Y;
  int s, w = 0;
  const char *data = __data;

  while (len > 0) {
    s = X->end - X->wptr;
    if (s > len) { s = len; }
    if (s > 0) {
      memcpy (X->wptr, data, s);
      w += s;
      X->wptr += s;
      data += s;
      len -= s;
    }
    if (!len) { break; }
    Y = alloc_buffer();
    if (!Y) { break; }
    X->next = Y;
    Y->prev = X;
    Y->next = H;
    H->prev = Y;
    H->extra++;
    if (X->pptr) {
      Y->pptr = Y->rptr;
    }
    X = Y;
  }
  if (H->pptr) {
    H->unprocessed_bytes += w;
  } else {
    H->total_bytes += w;
  }
  return w;
}
