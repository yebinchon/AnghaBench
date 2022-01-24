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
struct TYPE_4__ {scalar_t__ state; scalar_t__ extra; scalar_t__ pptr; int /*<<< orphan*/  start; int /*<<< orphan*/  wptr; int /*<<< orphan*/  rptr; struct TYPE_4__* next; struct TYPE_4__* prev; scalar_t__ unprocessed_bytes; scalar_t__ total_bytes; } ;
typedef  TYPE_1__ netbuffer_t ;

/* Variables and functions */
 scalar_t__ NB_MAGIC_BUSYHEAD ; 
 scalar_t__ NB_MAGIC_HEAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 (netbuffer_t *H) {
  netbuffer_t *X, *Y;
  if (!H) { return; }
  FUNC0 (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  X = H->next;
  while (X != H) {
    FUNC0 (H->extra > 0);
    Y = X->next;
    FUNC1 (X);
    H->extra--;
    X = Y;
  }
  FUNC0 (!H->extra);
  H->total_bytes = 0;
  H->unprocessed_bytes = 0;
  H->prev = H->next = H;
  H->rptr = H->wptr = H->start;
  H->pptr = 0;

  if (H->state == NB_MAGIC_BUSYHEAD) {
    FUNC1 (H);
  }
}