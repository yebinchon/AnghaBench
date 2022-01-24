#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ state; scalar_t__ rptr; scalar_t__ wptr; scalar_t__ pptr; scalar_t__ extra; scalar_t__ start; int total_bytes; struct TYPE_4__* prev; struct TYPE_4__* next; } ;
typedef  TYPE_1__ netbuffer_t ;

/* Variables and functions */
 scalar_t__ NB_MAGIC_BUSYHEAD ; 
 scalar_t__ NB_MAGIC_HEAD ; 
 int NET_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 (netbuffer_t *H, int offset) {
  netbuffer_t *X = H, *Y;
  FUNC0 (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  FUNC0 (offset >= 0 && offset <= NET_BUFFER_SIZE);
  if (H->rptr == H->wptr) {
    X = H->next;
    X->rptr += offset;
    FUNC0 (X->rptr <= X->wptr);
    FUNC0 (!X->pptr || X->rptr <= X->pptr);
    if (X->rptr == X->wptr) {
      Y = X->next;
      FUNC0 (H->extra > 0);	// may fail if buffer chain empty and offset=0
      H->next = Y;
      Y->prev = H;
      FUNC1 (X);
      H->extra--;
    }
  } else {
    H->rptr += offset;
    FUNC0 (H->rptr <= H->wptr);
    FUNC0 (!H->pptr || H->rptr <= H->pptr);
    if (H->rptr == H->wptr) {
      H->rptr = H->wptr = H->start;
      if (H->pptr) {
        H->pptr = H->wptr;
      }
    }
  }
  H->total_bytes -= offset;
}