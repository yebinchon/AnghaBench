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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct flat_binder_object {scalar_t__ cookie; int /*<<< orphan*/  handle; scalar_t__ binder; TYPE_1__ hdr; } ;
struct binder_transaction {struct binder_proc* to_proc; } ;
struct binder_thread {int /*<<< orphan*/  todo; int /*<<< orphan*/  pid; struct binder_proc* proc; } ;
struct binder_ref_data {int /*<<< orphan*/  desc; int /*<<< orphan*/  debug_id; } ;
struct binder_proc {int /*<<< orphan*/  tsk; int /*<<< orphan*/  pid; } ;
struct binder_node {scalar_t__ cookie; scalar_t__ ptr; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEBUG_TRANSACTION ; 
 scalar_t__ BINDER_TYPE_BINDER ; 
 scalar_t__ BINDER_TYPE_HANDLE ; 
 scalar_t__ BINDER_TYPE_WEAK_HANDLE ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct binder_node* FUNC1 (struct binder_proc*,scalar_t__) ; 
 int FUNC2 (struct binder_proc*,struct binder_node*,int,int /*<<< orphan*/ *,struct binder_ref_data*) ; 
 struct binder_node* FUNC3 (struct binder_proc*,struct flat_binder_object*) ; 
 int /*<<< orphan*/  FUNC4 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct binder_transaction*,struct binder_node*,struct binder_ref_data*) ; 

__attribute__((used)) static int FUNC8(struct flat_binder_object *fp,
				   struct binder_transaction *t,
				   struct binder_thread *thread)
{
	struct binder_node *node;
	struct binder_proc *proc = thread->proc;
	struct binder_proc *target_proc = t->to_proc;
	struct binder_ref_data rdata;
	int ret = 0;

	node = FUNC1(proc, fp->binder);
	if (!node) {
		node = FUNC3(proc, fp);
		if (!node)
			return -ENOMEM;
	}
	if (fp->cookie != node->cookie) {
		FUNC5("%d:%d sending u%016llx node %d, cookie mismatch %016llx != %016llx\n",
				  proc->pid, thread->pid, (u64)fp->binder,
				  node->debug_id, (u64)fp->cookie,
				  (u64)node->cookie);
		ret = -EINVAL;
		goto done;
	}
	if (FUNC6(proc->tsk, target_proc->tsk)) {
		ret = -EPERM;
		goto done;
	}

	ret = FUNC2(target_proc, node,
			fp->hdr.type == BINDER_TYPE_BINDER,
			&thread->todo, &rdata);
	if (ret)
		goto done;

	if (fp->hdr.type == BINDER_TYPE_BINDER)
		fp->hdr.type = BINDER_TYPE_HANDLE;
	else
		fp->hdr.type = BINDER_TYPE_WEAK_HANDLE;
	fp->binder = 0;
	fp->handle = rdata.desc;
	fp->cookie = 0;

	FUNC7(t, node, &rdata);
	FUNC0(BINDER_DEBUG_TRANSACTION,
		     "        node %d u%016llx -> ref %d desc %d\n",
		     node->debug_id, (u64)node->ptr,
		     rdata.debug_id, rdata.desc);
done:
	FUNC4(node);
	return ret;
}