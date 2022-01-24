#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  reflog; } ;
typedef  TYPE_1__ transaction_node ;
struct TYPE_7__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ git_transaction ;
typedef  int /*<<< orphan*/  git_reflog ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__**,TYPE_2__*,char const*) ; 

int FUNC3(git_transaction *tx, const char *refname, const git_reflog *reflog)
{
	int error;
	transaction_node *node;

	FUNC0(tx && refname && reflog);

	if ((error = FUNC2(&node, tx, refname)) < 0)
		return error;

	if ((error = FUNC1(&node->reflog, reflog, &tx->pool)) < 0)
		return error;

	return 0;
}