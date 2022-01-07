
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* rptr; char* wptr; char* pptr; struct TYPE_4__* next; } ;
typedef TYPE_1__ netbuffer_t ;
struct TYPE_5__ {char* cptr; TYPE_1__* cur; TYPE_1__* head; } ;
typedef TYPE_2__ nbw_iterator_t ;


 unsigned int NET_BUFFER_SIZE ;
 int assert (int) ;
 int memcpy (char*,char*,int) ;

int nbit_write_out (nbw_iterator_t *IW, void *__data, int len) {
  netbuffer_t *H = IW->head, *X = IW->cur;
  int s, w = 0;
  char *data = __data, *p = IW->cptr;

  assert (X->rptr <= p && p <= X->wptr);
  assert (p >= X->pptr);

  while (len > 0) {
    s = X->wptr - p;
    assert ((unsigned) s <= NET_BUFFER_SIZE);
    if (s > len) { s = len; }
    if (s > 0) {
      memcpy (p, data, s);
      w += s;
      p += s;
      data += s;
      len -= s;
    }
    if (!len || X->next == H) {
      break;
    }
    X = X->next;
    p = X->rptr;
    assert (!X->pptr || X->pptr == p);
  }
  if (p == X->wptr && X->next != H) {
    X = X->next;
    p = X->rptr;
  }
  IW->cptr = p;
  IW->cur = X;
  return w;
}
