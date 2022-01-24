#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  symbolic; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {scalar_t__ ref_type; int committed; int /*<<< orphan*/ * message; int /*<<< orphan*/ * sig; int /*<<< orphan*/  payload; scalar_t__ remove; int /*<<< orphan*/ * reflog; TYPE_1__ target; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ transaction_node ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_refdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ GIT_REFERENCE_DIRECT ; 
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(git_refdb *db, transaction_node *node)
{
	git_reference *ref;
	int error, update_reflog;

	if (node->ref_type == GIT_REFERENCE_DIRECT) {
		ref = FUNC3(node->name, &node->target.id, NULL);
	} else if (node->ref_type == GIT_REFERENCE_SYMBOLIC) {
		ref = FUNC4(node->name, node->target.symbolic);
	} else {
		FUNC1();
	}

	FUNC0(ref);
	update_reflog = node->reflog == NULL;

	if (node->remove) {
		error =  FUNC2(db, node->payload, 2, false, ref, NULL, NULL);
	} else if (node->ref_type == GIT_REFERENCE_DIRECT) {
		error = FUNC2(db, node->payload, true, update_reflog, ref, node->sig, node->message);
	} else if (node->ref_type == GIT_REFERENCE_SYMBOLIC) {
		error = FUNC2(db, node->payload, true, update_reflog, ref, node->sig, node->message);
	} else {
		FUNC1();
	}

	FUNC5(ref);
	node->committed = true;

	return error;
}