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
struct binder_work {int dummy; } ;
struct binder_proc {int /*<<< orphan*/  alloc; int /*<<< orphan*/  todo; } ;
struct binder_node {int has_async_transaction; int /*<<< orphan*/  async_todo; struct binder_proc* proc; } ;
struct binder_buffer {struct binder_node* target_node; scalar_t__ async_transaction; TYPE_1__* transaction; } ;
struct TYPE_2__ {int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct binder_buffer*) ; 
 struct binder_work* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct binder_work*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC5 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC6 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct binder_node*) ; 
 int /*<<< orphan*/  FUNC8 (struct binder_proc*,struct binder_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct binder_proc*) ; 
 int /*<<< orphan*/  FUNC10 (struct binder_buffer*) ; 

__attribute__((used)) static void
FUNC11(struct binder_proc *proc, struct binder_buffer *buffer)
{
	FUNC4(proc);
	if (buffer->transaction) {
		buffer->transaction->buffer = NULL;
		buffer->transaction = NULL;
	}
	FUNC5(proc);
	if (buffer->async_transaction && buffer->target_node) {
		struct binder_node *buf_node;
		struct binder_work *w;

		buf_node = buffer->target_node;
		FUNC6(buf_node);
		FUNC0(!buf_node->has_async_transaction);
		FUNC0(buf_node->proc != proc);
		w = FUNC2(
				&buf_node->async_todo);
		if (!w) {
			buf_node->has_async_transaction = false;
		} else {
			FUNC3(
					w, &proc->todo);
			FUNC9(proc);
		}
		FUNC7(buf_node);
	}
	FUNC10(buffer);
	FUNC8(proc, buffer, 0, false);
	FUNC1(&proc->alloc, buffer);
}