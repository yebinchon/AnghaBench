#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_index_entry ;
struct TYPE_2__ {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/  const**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  repo_index ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__ test_driver_conflict_apply ; 

void FUNC6(void)
{
	const git_index_entry *ancestor, *ours, *theirs;

	FUNC0(FUNC2("conflict",
		&test_driver_conflict_apply.base));

    FUNC5("conflict");
    FUNC4();

	FUNC0(FUNC1(&ancestor, &ours, &theirs,
		repo_index, "automergeable.txt"));

	FUNC3("conflict");
}