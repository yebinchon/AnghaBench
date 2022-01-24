#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ state; scalar_t__ unprocessed_bytes; scalar_t__ wptr; scalar_t__ pptr; struct TYPE_3__* next; } ;
typedef  TYPE_1__ netbuffer_t ;

/* Variables and functions */
 scalar_t__ NB_MAGIC_BUSYHEAD ; 
 scalar_t__ NB_MAGIC_HEAD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

int FUNC1 (netbuffer_t *H) {
  netbuffer_t *X;
  FUNC0 (H->state == NB_MAGIC_HEAD || H->state == NB_MAGIC_BUSYHEAD);
  FUNC0 (!H->pptr);
  H->pptr = H->wptr;
  for (X = H->next; X != H; X = X->next) {
    FUNC0 (!X->pptr);
    X->pptr = X->wptr;
  }
  H->unprocessed_bytes = 0;
  return 0;
}