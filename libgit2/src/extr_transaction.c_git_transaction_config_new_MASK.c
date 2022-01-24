#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * cfg; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ git_transaction ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  TRANSACTION_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int,int) ; 

int FUNC3(git_transaction **out, git_config *cfg)
{
	git_transaction *tx;
	FUNC1(out && cfg);

	tx = FUNC2(1, sizeof(git_transaction));
	FUNC0(tx);

	tx->type = TRANSACTION_CONFIG;
	tx->cfg = cfg;
	*out = tx;
	return 0;
}