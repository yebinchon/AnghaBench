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
struct binder_thread {int /*<<< orphan*/  pid; struct binder_proc* proc; } ;
struct binder_ref_data {int /*<<< orphan*/  desc; int /*<<< orphan*/  debug_id; } ;
struct binder_proc {int /*<<< orphan*/  inner_lock; int /*<<< orphan*/  tsk; int /*<<< orphan*/  pid; } ;
struct binder_node {int /*<<< orphan*/  debug_id; scalar_t__ ptr; struct binder_proc* proc; scalar_t__ cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  BINDER_DEBUG_TRANSACTION ; 
 scalar_t__ BINDER_TYPE_BINDER ; 
 scalar_t__ BINDER_TYPE_HANDLE ; 
 scalar_t__ BINDER_TYPE_WEAK_BINDER ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct binder_node* FUNC3 (struct binder_proc*,int /*<<< orphan*/ ,int,struct binder_ref_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct binder_node*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct binder_proc*,struct binder_node*,int,int /*<<< orphan*/ *,struct binder_ref_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC7 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC8 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC9 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC10 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct binder_transaction*,struct binder_node*,struct binder_ref_data*) ; 
 int /*<<< orphan*/  FUNC14 (struct binder_transaction*,struct binder_node*,struct binder_ref_data*,struct binder_ref_data*) ; 

__attribute__((used)) static int FUNC15(struct flat_binder_object *fp,
				   struct binder_transaction *t,
				   struct binder_thread *thread)
{
	struct binder_proc *proc = thread->proc;
	struct binder_proc *target_proc = t->to_proc;
	struct binder_node *node;
	struct binder_ref_data src_rdata;
	int ret = 0;

	node = FUNC3(proc, fp->handle,
			fp->hdr.type == BINDER_TYPE_HANDLE, &src_rdata);
	if (!node) {
		FUNC11("%d:%d got transaction with invalid handle, %d\n",
				  proc->pid, thread->pid, fp->handle);
		return -EINVAL;
	}
	if (FUNC12(proc->tsk, target_proc->tsk)) {
		ret = -EPERM;
		goto done;
	}

	FUNC8(node);
	if (node->proc == target_proc) {
		if (fp->hdr.type == BINDER_TYPE_HANDLE)
			fp->hdr.type = BINDER_TYPE_BINDER;
		else
			fp->hdr.type = BINDER_TYPE_WEAK_BINDER;
		fp->binder = node->ptr;
		fp->cookie = node->cookie;
		if (node->proc)
			FUNC6(node->proc);
		else
			FUNC0(&node->proc->inner_lock);
		FUNC4(node,
					 fp->hdr.type == BINDER_TYPE_BINDER,
					 0, NULL);
		if (node->proc)
			FUNC7(node->proc);
		else
			FUNC1(&node->proc->inner_lock);
		FUNC13(t, node, &src_rdata);
		FUNC2(BINDER_DEBUG_TRANSACTION,
			     "        ref %d desc %d -> node %d u%016llx\n",
			     src_rdata.debug_id, src_rdata.desc, node->debug_id,
			     (u64)node->ptr);
		FUNC9(node);
	} else {
		struct binder_ref_data dest_rdata;

		FUNC9(node);
		ret = FUNC5(target_proc, node,
				fp->hdr.type == BINDER_TYPE_HANDLE,
				NULL, &dest_rdata);
		if (ret)
			goto done;

		fp->binder = 0;
		fp->handle = dest_rdata.desc;
		fp->cookie = 0;
		FUNC14(t, node, &src_rdata,
						    &dest_rdata);
		FUNC2(BINDER_DEBUG_TRANSACTION,
			     "        ref %d desc %d -> ref %d desc %d (node %d)\n",
			     src_rdata.debug_id, src_rdata.desc,
			     dest_rdata.debug_id, dest_rdata.desc,
			     node->debug_id);
	}
done:
	FUNC10(node);
	return ret;
}