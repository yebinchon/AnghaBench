#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ state; scalar_t__ wptr; scalar_t__ rptr; scalar_t__ pptr; struct TYPE_5__* prev; } ;
typedef  TYPE_1__ netbuffer_t ;
struct TYPE_6__ {scalar_t__ cptr; TYPE_1__* cur; TYPE_1__* head; } ;
typedef  TYPE_2__ nbw_iterator_t ;

/* Variables and functions */
 scalar_t__ NB_MAGIC_BUSYHEAD ; 
 scalar_t__ NB_MAGIC_HEAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*) ; 

int FUNC2 (nbw_iterator_t *IW) {
  netbuffer_t *H = IW->head;
  if (!H) {
    return FUNC1 (IW);
  }
  FUNC0 (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);

  netbuffer_t *X = H->prev;
  
  IW->cur = X;
  IW->cptr = X->wptr;
  
  FUNC0 (X->rptr <= X->wptr);
  FUNC0 (!X->pptr || (X->rptr <= X->pptr && X->pptr <= X->wptr));
  return 0;
}