#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * repo; int /*<<< orphan*/  pool; int /*<<< orphan*/  type; int /*<<< orphan*/  db; int /*<<< orphan*/  locks; } ;
typedef  TYPE_1__ git_transaction ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_pool ;

/* Variables and functions */
 int /*<<< orphan*/  TRANSACTION_REFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

int FUNC7(git_transaction **out, git_repository *repo)
{
	int error;
	git_pool pool;
	git_transaction *tx = NULL;

	FUNC0(out && repo);

	FUNC2(&pool, 1);

	tx = FUNC3(&pool, sizeof(git_transaction));
	if (!tx) {
		error = -1;
		goto on_error;
	}

	if ((error = FUNC5(&tx->locks)) < 0) {
		error = -1;
		goto on_error;
	}

	if ((error = FUNC4(&tx->db, repo)) < 0)
		goto on_error;

	tx->type = TRANSACTION_REFS;
	FUNC6(&tx->pool, &pool, sizeof(git_pool));
	tx->repo = repo;
	*out = tx;
	return 0;

on_error:
	FUNC1(&pool);
	return error;
}