#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 

void FUNC4(
	git_repository *repo, const char *name,
	const char *msg, const char *file, int line)
{
	git_submodule *sm;
	int error = FUNC3(&sm, repo, name);
	if (error)
		FUNC1(error, 0, file, line, msg);
	FUNC0(sm != NULL, file, line);
	FUNC2(sm);
}