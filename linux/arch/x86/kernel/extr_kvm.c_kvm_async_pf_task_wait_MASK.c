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
typedef  size_t u32 ;
struct kvm_task_sleep_node {size_t token; int halted; int /*<<< orphan*/  wq; int /*<<< orphan*/  link; int /*<<< orphan*/  cpu; } ;
struct kvm_task_sleep_head {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_PREEMPT_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KVM_TASK_SLEEP_HASHBITS ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 struct kvm_task_sleep_node* FUNC2 (struct kvm_task_sleep_head*,size_t) ; 
 struct kvm_task_sleep_head* async_pf_sleepers ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct kvm_task_sleep_node*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 scalar_t__ FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  wait ; 

void FUNC23(u32 token, int interrupt_kernel)
{
	u32 key = FUNC4(token, KVM_TASK_SLEEP_HASHBITS);
	struct kvm_task_sleep_head *b = &async_pf_sleepers[key];
	struct kvm_task_sleep_node n, *e;
	FUNC0(wait);

	FUNC18();

	FUNC16(&b->lock);
	e = FUNC2(b, token);
	if (e) {
		/* dummy entry exist -> wake up was delivered ahead of PF */
		FUNC6(&e->link);
		FUNC10(e);
		FUNC17(&b->lock);

		FUNC19();
		return;
	}

	n.token = token;
	n.cpu = FUNC22();
	n.halted = FUNC9(current) ||
		   (FUNC1(CONFIG_PREEMPT_COUNT)
		    ? FUNC14() > 1 || FUNC20()
		    : interrupt_kernel);
	FUNC8(&n.wq);
	FUNC5(&n.link, &b->list);
	FUNC17(&b->lock);

	for (;;) {
		if (!n.halted)
			FUNC15(&n.wq, &wait, TASK_UNINTERRUPTIBLE);
		if (FUNC7(&n.link))
			break;

		FUNC19();

		if (!n.halted) {
			FUNC12();
			FUNC21();
			FUNC11();
		} else {
			/*
			 * We cannot reschedule. So halt.
			 */
			FUNC13();
			FUNC11();
		}

		FUNC18();
	}
	if (!n.halted)
		FUNC3(&n.wq, &wait);

	FUNC19();
	return;
}