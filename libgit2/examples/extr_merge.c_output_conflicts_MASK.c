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
struct TYPE_5__ {char* path; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index_conflict_iterator ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC5(git_index *index)
{
	git_index_conflict_iterator *conflicts;
	const git_index_entry *ancestor;
	const git_index_entry *our;
	const git_index_entry *their;
	int err = 0;

	FUNC0(FUNC3(&conflicts, index), "failed to create conflict iterator", NULL);

	while ((err = FUNC4(&ancestor, &our, &their, conflicts)) == 0) {
		FUNC1(stderr, "conflict: a:%s o:%s t:%s\n",
		        ancestor ? ancestor->path : "NULL",
		        our->path ? our->path : "NULL",
		        their->path ? their->path : "NULL");
	}

	if (err != GIT_ITEROVER) {
		FUNC1(stderr, "error iterating conflicts\n");
	}

	FUNC2(conflicts);
}