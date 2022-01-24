#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct frame {int /*<<< orphan*/  head; scalar_t__ flags; int /*<<< orphan*/ * r_skb; int /*<<< orphan*/  iter; int /*<<< orphan*/ * buf; struct aoetgt* t; } ;
struct aoetgt {int /*<<< orphan*/  ffree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct frame *f)
{
	struct aoetgt *t;

	t = f->t;
	f->buf = NULL;
	FUNC1(&f->iter, 0, sizeof(f->iter));
	f->r_skb = NULL;
	f->flags = 0;
	FUNC0(&f->head, &t->ffree);
}