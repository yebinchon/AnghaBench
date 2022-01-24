#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  ref_type; TYPE_1__ target; } ;
typedef  TYPE_2__ transaction_node ;
typedef  int /*<<< orphan*/  git_transaction ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*) ; 
 int FUNC2 (TYPE_2__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC4(git_transaction *tx, const char *refname, const git_oid *target, const git_signature *sig, const char *msg)
{
	int error;
	transaction_node *node;

	FUNC0(tx && refname && target);

	if ((error = FUNC2(&node, tx, refname)) < 0)
		return error;

	if ((error = FUNC1(node, tx, sig, msg)) < 0)
		return error;

	FUNC3(&node->target.id, target);
	node->ref_type = GIT_REFERENCE_DIRECT;

	return 0;
}