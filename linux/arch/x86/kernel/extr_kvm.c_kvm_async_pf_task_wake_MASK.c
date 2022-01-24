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
struct kvm_task_sleep_node {size_t token; int /*<<< orphan*/  link; int /*<<< orphan*/  wq; int /*<<< orphan*/  cpu; } ;
struct kvm_task_sleep_head {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KVM_TASK_SLEEP_HASHBITS ; 
 struct kvm_task_sleep_node* FUNC0 (struct kvm_task_sleep_head*,size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_task_sleep_node*) ; 
 struct kvm_task_sleep_head* async_pf_sleepers ; 
 int /*<<< orphan*/  FUNC3 () ; 
 size_t FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct kvm_task_sleep_node* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

void FUNC11(u32 token)
{
	u32 key = FUNC4(token, KVM_TASK_SLEEP_HASHBITS);
	struct kvm_task_sleep_head *b = &async_pf_sleepers[key];
	struct kvm_task_sleep_node *n;

	if (token == ~0) {
		FUNC1();
		return;
	}

again:
	FUNC8(&b->lock);
	n = FUNC0(b, token);
	if (!n) {
		/*
		 * async PF was not yet handled.
		 * Add dummy entry for the token.
		 */
		n = FUNC7(sizeof(*n), GFP_ATOMIC);
		if (!n) {
			/*
			 * Allocation failed! Busy wait while other cpu
			 * handles async PF.
			 */
			FUNC9(&b->lock);
			FUNC3();
			goto again;
		}
		n->token = token;
		n->cpu = FUNC10();
		FUNC6(&n->wq);
		FUNC5(&n->link, &b->list);
	} else
		FUNC2(n);
	FUNC9(&b->lock);
	return;
}