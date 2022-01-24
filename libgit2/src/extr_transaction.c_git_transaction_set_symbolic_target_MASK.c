#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  symbolic; } ;
struct TYPE_10__ {int /*<<< orphan*/  ref_type; TYPE_1__ target; } ;
typedef  TYPE_2__ transaction_node ;
struct TYPE_11__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ git_transaction ;
typedef  int /*<<< orphan*/  git_signature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/  const*,char const*) ; 
 int FUNC3 (TYPE_2__**,TYPE_3__*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 

int FUNC5(git_transaction *tx, const char *refname, const char *target, const git_signature *sig, const char *msg)
{
	int error;
	transaction_node *node;

	FUNC1(tx && refname && target);

	if ((error = FUNC3(&node, tx, refname)) < 0)
		return error;

	if ((error = FUNC2(node, tx, sig, msg)) < 0)
		return error;

	node->target.symbolic = FUNC4(&tx->pool, target);
	FUNC0(node->target.symbolic);
	node->ref_type = GIT_REFERENCE_SYMBOLIC;

	return 0;
}