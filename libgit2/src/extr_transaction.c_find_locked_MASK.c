#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  transaction_node ;
struct TYPE_3__ {int /*<<< orphan*/  locks; } ;
typedef  TYPE_1__ git_transaction ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_REFERENCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC2(transaction_node **out, git_transaction *tx, const char *refname)
{
	transaction_node *node;

	if ((node = FUNC1(tx->locks, refname)) == NULL) {
		FUNC0(GIT_ERROR_REFERENCE, "the specified reference is not locked");
		return GIT_ENOTFOUND;
	}

	*out = node;
	return 0;
}