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
struct TYPE_4__ {scalar_t__ state; scalar_t__ wptr; scalar_t__ end; scalar_t__ rptr; scalar_t__ pptr; struct TYPE_4__* prev; struct TYPE_4__* next; int /*<<< orphan*/  extra; } ;
typedef  TYPE_1__ netbuffer_t ;

/* Variables and functions */
 scalar_t__ NB_MAGIC_BUSYHEAD ; 
 scalar_t__ NB_MAGIC_HEAD ; 
 unsigned long NET_BUFFER_SIZE ; 
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

char *FUNC2 (netbuffer_t *H, int len) {
  netbuffer_t *X = H->prev, *Y;
  FUNC1 ((unsigned long) len < NET_BUFFER_SIZE);
  FUNC1 (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  if (X->wptr + len <= X->end) {
    return X->wptr;
  }
  Y = FUNC0();
  if (!Y) { return 0; }
  H->extra++;
  X->next = Y;
  Y->prev = X;
  Y->next = H;
  H->prev = Y;
  if (X->pptr) {
    Y->pptr = Y->rptr;
  }
  FUNC1 (Y->wptr + len <= Y->end);
  return Y->wptr;
}