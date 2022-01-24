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
typedef  int /*<<< orphan*/  git_iterator ;
struct TYPE_3__ {char* path; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC3(git_iterator *i, bool verbose)
{
	const git_index_entry *end;
	int error = FUNC2(&end, i);

	if (verbose && error != GIT_ITEROVER)
		FUNC1(stderr, "Expected end of iterator, got '%s'\n", end->path);

	FUNC0(GIT_ITEROVER, error);
}