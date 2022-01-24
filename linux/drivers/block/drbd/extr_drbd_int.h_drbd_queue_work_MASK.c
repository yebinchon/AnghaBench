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
struct drbd_work_queue {int /*<<< orphan*/  q_wait; int /*<<< orphan*/  q_lock; int /*<<< orphan*/  q; } ;
struct drbd_work {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC4(struct drbd_work_queue *q, struct drbd_work *w)
{
	unsigned long flags;
	FUNC1(&q->q_lock, flags);
	FUNC0(&w->list, &q->q);
	FUNC2(&q->q_lock, flags);
	FUNC3(&q->q_wait);
}