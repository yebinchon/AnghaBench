#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  payload; struct TYPE_9__* name; } ;
typedef  TYPE_1__ transaction_node ;
struct TYPE_10__ {int /*<<< orphan*/  db; int /*<<< orphan*/  locks; int /*<<< orphan*/  pool; } ;
typedef  TYPE_2__ git_transaction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 

int FUNC7(git_transaction *tx, const char *refname)
{
	int error;
	transaction_node *node;

	FUNC1(tx && refname);

	node = FUNC2(&tx->pool, sizeof(transaction_node));
	FUNC0(node);

	node->name = FUNC3(&tx->pool, refname);
	FUNC0(node->name);

	if ((error = FUNC4(&node->payload, tx->db, refname)) < 0)
		return error;

	if ((error = FUNC6(tx->locks, node->name, node)) < 0)
		goto cleanup;

	return 0;

cleanup:
	FUNC5(tx->db, node->payload, false, false, NULL, NULL, NULL);

	return error;
}