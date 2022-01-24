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
typedef  int /*<<< orphan*/  git_iterator_status_t ;
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__ const**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const**,int /*<<< orphan*/ *) ; 

void FUNC6(
	git_iterator *i,
	const char *expected_path,
	git_iterator_status_t expected_status)
{
	const git_index_entry *entry;
	git_iterator_status_t status;
	int error;

	FUNC3(FUNC5(&entry, i));
	FUNC2(expected_path, entry->path);

	error = FUNC4(&entry, &status, i);
	FUNC0(!error || error == GIT_ITEROVER);
	FUNC1(expected_status, status);
}