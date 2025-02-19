
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ wptr; scalar_t__ rptr; int pptr; scalar_t__ start; scalar_t__ extra; int total_bytes; struct TYPE_4__* next; struct TYPE_4__* prev; } ;
typedef TYPE_1__ netbuffer_t ;


 int assert (int) ;
 int free_buffer (TYPE_1__*) ;
 int memcpy (char*,int,int) ;

int read_in (netbuffer_t *H, void *__data, int len) {
  netbuffer_t *X = H, *Y;
  int s, w = 0;
  char *data = __data;
  if (X->wptr == X->rptr) {
    X = X->next;
  }
  while (len > 0) {
    s = (X->pptr ? X->pptr : X->wptr) - X->rptr;
    if (s > len) { s = len; }
    if (s > 0) {
      memcpy (data, X->rptr, s);
      w += s;
      X->rptr += s;
      data += s;
      len -= s;
    }
    if (X->rptr == X->wptr) {
      if (X == H) {
 X->rptr = X->wptr = X->start;
 if (X->pptr) {
   X->pptr = X->wptr;
 }
 X = X->next;
      } else {
 Y = X->next;
 assert (H->extra > 0);
 Y->prev = H;
 H->next = Y;
 free_buffer (X);
 H->extra--;
 X = Y;
      }
      if (X == H) { break; }
    } else if (X->rptr == X->pptr) {
      break;
    }
    if (!len) { break; }
  }
  H->total_bytes -= w;
  return w;
}
