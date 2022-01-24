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
typedef  void* u8 ;
typedef  scalar_t__ u32 ;
struct kvmppc_xive_src_block {int /*<<< orphan*/  lock; } ;
struct kvmppc_xive_irq_state {scalar_t__ act_server; void* act_priority; scalar_t__ eisn; } ;
struct kvmppc_xive {struct kvm* kvm; } ;
struct kvm {int dummy; } ;

/* Variables and functions */
 void* MASKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvmppc_xive_irq_state*,scalar_t__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct kvm*,scalar_t__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvmppc_xive*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,scalar_t__,int,scalar_t__,void*) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,void*,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct kvmppc_xive *xive,
					struct kvmppc_xive_src_block *sb,
					struct kvmppc_xive_irq_state *state,
					u32 server, u8 priority, bool masked,
					u32 eisn)
{
	struct kvm *kvm = xive->kvm;
	u32 hw_num;
	int rc = 0;

	FUNC0(&sb->lock);

	if (state->act_server == server && state->act_priority == priority &&
	    state->eisn == eisn)
		goto unlock;

	FUNC5("new_act_prio=%d new_act_server=%d mask=%d act_server=%d act_prio=%d\n",
		 priority, server, masked, state->act_server,
		 state->act_priority);

	FUNC2(state, &hw_num, NULL);

	if (priority != MASKED && !masked) {
		rc = FUNC3(kvm, &server, priority);
		if (rc)
			goto unlock;

		state->act_priority = priority;
		state->act_server = server;
		state->eisn = eisn;

		rc = FUNC6(hw_num,
					       FUNC4(xive, server),
					       priority, eisn);
	} else {
		state->act_priority = MASKED;
		state->act_server = 0;
		state->eisn = 0;

		rc = FUNC6(hw_num, 0, MASKED, 0);
	}

unlock:
	FUNC1(&sb->lock);
	return rc;
}