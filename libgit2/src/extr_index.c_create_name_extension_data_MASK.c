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
struct TYPE_3__ {char* ancestor; char* ours; char* theirs; } ;
typedef  TYPE_1__ git_index_name_entry ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(git_buf *name_buf, git_index_name_entry *conflict_name)
{
	int error = 0;

	if (conflict_name->ancestor == NULL)
		error = FUNC0(name_buf, "\0", 1);
	else
		error = FUNC0(name_buf, conflict_name->ancestor, FUNC1(conflict_name->ancestor) + 1);

	if (error != 0)
		goto on_error;

	if (conflict_name->ours == NULL)
		error = FUNC0(name_buf, "\0", 1);
	else
		error = FUNC0(name_buf, conflict_name->ours, FUNC1(conflict_name->ours) + 1);

	if (error != 0)
		goto on_error;

	if (conflict_name->theirs == NULL)
		error = FUNC0(name_buf, "\0", 1);
	else
		error = FUNC0(name_buf, conflict_name->theirs, FUNC1(conflict_name->theirs) + 1);

on_error:
	return error;
}