#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ulong ;
struct sk_buff {int dummy; } ;
struct frame {int /*<<< orphan*/  head; TYPE_2__* t; struct sk_buff* r_skb; } ;
struct TYPE_8__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; } ;
struct TYPE_7__ {int /*<<< orphan*/  active; } ;
struct TYPE_6__ {TYPE_1__* d; } ;
struct TYPE_5__ {int aoeminor; } ;

/* Variables and functions */
 TYPE_4__* iocq ; 
 int /*<<< orphan*/ * ktiowq ; 
 TYPE_3__* kts ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int ncpus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct frame *f, struct sk_buff *skb)
{
	int id;
	ulong flags;

	f->r_skb = skb;
	id = f->t->d->aoeminor % ncpus;
	FUNC1(&iocq[id].lock, flags);
	if (!kts[id].active) {
		FUNC2(&iocq[id].lock, flags);
		/* The thread with id has not been spawned yet,
		 * so delegate the work to the main thread and
		 * try spawning a new thread.
		 */
		id = 0;
		FUNC1(&iocq[id].lock, flags);
	}
	FUNC0(&f->head, &iocq[id].head);
	FUNC2(&iocq[id].lock, flags);
	FUNC3(&ktiowq[id]);
}