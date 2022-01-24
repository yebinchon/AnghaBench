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
struct TYPE_4__ {scalar_t__ state; int extra; char* pptr; char* wptr; char* rptr; int total_bytes; struct TYPE_4__* next; } ;
typedef  TYPE_1__ netbuffer_t ;
struct TYPE_5__ {char* cptr; TYPE_1__* cur; TYPE_1__* head; } ;
typedef  TYPE_2__ nb_iterator_t ;

/* Variables and functions */
 scalar_t__ NB_MAGIC_BUSYHEAD ; 
 scalar_t__ NB_MAGIC_HEAD ; 
 int NET_BUFFERS ; 
 int NET_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

int FUNC1 (nb_iterator_t *I) {
  netbuffer_t *H = I->head, *X;
  int limit, u, v;
  if (!H) {
    return 0;
  }
  FUNC0 (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  limit = H->extra + 1;
  FUNC0 (limit <= NET_BUFFERS + 12);

  X = I->cur;
  char *pptr = X->pptr ? X->pptr : X->wptr;
  FUNC0 (X->rptr <= I->cptr && I->cptr <= pptr);
  u = pptr - I->cptr;
  FUNC0 (u <= NET_BUFFER_SIZE);
  X = X->next;
  while (X != H && X->pptr != X->rptr) {
    FUNC0 (--limit >= 0);
    pptr = X->pptr ? X->pptr : X->wptr;
    v = pptr - X->rptr;
    FUNC0 (v >= 0 && v <= NET_BUFFER_SIZE);
    u += v;
    X = X->next;
  }
  FUNC0 (u <= H->total_bytes);
  return u;
}