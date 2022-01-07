
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pptr; int unprocessed_bytes; int total_bytes; scalar_t__ wptr; scalar_t__ rptr; scalar_t__ start; scalar_t__ extra; struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef TYPE_1__ netbuffer_t ;


 int assert (int) ;
 int free_buffer (TYPE_1__*) ;
 int memcpy (int ,int,int) ;

int read_back (netbuffer_t *H, void *__data, int len) {
  netbuffer_t *X = H->prev, *Y;
  int s, w = 0;
  char *data = __data ? (char *) __data + len : 0;
  if (H->pptr) {
    if (len > H->unprocessed_bytes) {
      len = H->unprocessed_bytes;
    }
  } else {
    if (len > H->total_bytes) {
      len = H->total_bytes;
    }
  }

  if (X->wptr == X->rptr && X != H) {
    X = X->prev;
  }

  while (len > 0) {
    s = X->wptr - (X->pptr ? X->pptr : X->rptr);
    if (s > len) { s = len; }
    if (s > 0) {
      X->wptr -= s;
      if (data) {
 memcpy (data -= s, X->wptr, s);
      }
      w += s;
      len -= s;
    }
    if (X->rptr == X->wptr) {
      if (X == H) {
 X->rptr = X->wptr = X->start;
 if (X->pptr) {
   X->pptr = X->wptr;
 }
 break;
      } else {
 Y = X->prev;
 assert (H->extra > 0);
 Y->next = H;
 H->prev = Y;
 free_buffer (X);
 H->extra--;
 X = Y;
      }
    } else if (X->wptr == X->pptr) {
      break;
    }
  }

  if (H->pptr) {
    H->unprocessed_bytes -= w;
  } else {
    H->total_bytes -= w;
  }
  return w;
}
