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
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_5__ {int /*<<< orphan*/  mode; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const**,int /*<<< orphan*/ *) ; 

void FUNC7(
	git_iterator *i,
	const char *expected_path)
{
	const git_index_entry *entry;
	int error;

	FUNC3(FUNC6(&entry, i));
	FUNC2(expected_path, entry->path);

	if (FUNC0(entry->mode))
		error = FUNC5(&entry, i);
	else
		error = FUNC4(&entry, i);

	FUNC1(!error || error == GIT_ITEROVER);
}