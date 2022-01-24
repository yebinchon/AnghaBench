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
typedef  scalar_t__ git_rebase_operation_t ;
struct TYPE_6__ {char const* exec; int /*<<< orphan*/  id; scalar_t__ type; } ;
typedef  TYPE_1__ git_rebase_operation ;
struct TYPE_7__ {int /*<<< orphan*/  operations; } ;
typedef  TYPE_2__ git_rebase ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 scalar_t__ GIT_REBASE_OPERATION_EXEC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static git_rebase_operation *FUNC3(
	git_rebase *rebase,
	git_rebase_operation_t type,
	git_oid *id,
	const char *exec)
{
	git_rebase_operation *operation;

	FUNC0((type == GIT_REBASE_OPERATION_EXEC) == !id);
	FUNC0((type == GIT_REBASE_OPERATION_EXEC) == !!exec);

	if ((operation = FUNC1(rebase->operations)) == NULL)
		return NULL;

	operation->type = type;
	FUNC2((git_oid *)&operation->id, id);
	operation->exec = exec;

	return operation;
}