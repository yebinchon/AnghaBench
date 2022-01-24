#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct value_buffer {scalar_t__ wptr; scalar_t__ s; scalar_t__ n474; TYPE_1__* c; } ;
struct TYPE_2__ {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 

int FUNC2 (struct value_buffer *B) {
  if (B->wptr >= B->s) {
    FUNC0 (&B->c->Out, B->wptr - (B->s - B->n474));
    B->wptr = FUNC1 (&B->c->Out, 512);
    if (!B->wptr) return 0;
    B->s = B->wptr + B->n474;
  }
  return 1;
}