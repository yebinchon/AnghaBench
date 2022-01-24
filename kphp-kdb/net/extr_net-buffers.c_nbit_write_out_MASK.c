#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* rptr; char* wptr; char* pptr; struct TYPE_4__* next; } ;
typedef  TYPE_1__ netbuffer_t ;
struct TYPE_5__ {char* cptr; TYPE_1__* cur; TYPE_1__* head; } ;
typedef  TYPE_2__ nbw_iterator_t ;

/* Variables and functions */
 unsigned int NET_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

int FUNC2 (nbw_iterator_t *IW, void *__data, int len) {
  netbuffer_t *H = IW->head, *X = IW->cur;
  int s, w = 0;
  char *data = __data, *p = IW->cptr;

  FUNC0 (X->rptr <= p && p <= X->wptr);
  FUNC0 (p >= X->pptr);

  while (len > 0) {
    s = X->wptr - p;
    FUNC0 ((unsigned) s <= NET_BUFFER_SIZE);
    if (s > len) { s = len; }
    if (s > 0) {
      FUNC1 (p, data, s);
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
    FUNC0 (!X->pptr || X->pptr == p);
  }
  if (p == X->wptr && X->next != H) {
    X = X->next;
    p = X->rptr;
  }
  IW->cptr = p;
  IW->cur = X;
  return w;
}