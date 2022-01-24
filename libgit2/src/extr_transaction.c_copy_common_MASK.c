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
struct TYPE_5__ {int /*<<< orphan*/  message; int /*<<< orphan*/  sig; } ;
typedef  TYPE_1__ transaction_node ;
struct TYPE_6__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  repo; } ;
typedef  TYPE_2__ git_transaction ;
typedef  int /*<<< orphan*/  const git_signature ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(transaction_node *node, git_transaction *tx, const git_signature *sig, const char *msg)
{
	if (sig && FUNC3(&node->sig, sig, &tx->pool) < 0)
		return -1;

	if (!node->sig) {
		git_signature *tmp;
		int error;

		if (FUNC2(&tmp, tx->repo) < 0)
			return -1;

		/* make sure the sig we use is in our pool */
		error = FUNC3(&node->sig, tmp, &tx->pool);
		FUNC4(tmp);
		if (error < 0)
			return error;
	}

	if (msg) {
		node->message = FUNC1(&tx->pool, msg);
		FUNC0(node->message);
	}

	return 0;
}