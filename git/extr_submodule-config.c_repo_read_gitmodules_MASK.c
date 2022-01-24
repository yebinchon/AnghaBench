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
struct repository {TYPE_1__* submodule_cache; int /*<<< orphan*/  index; } ;
struct TYPE_2__ {int gitmodules_read; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct repository*,struct repository*) ; 
 int /*<<< orphan*/  gitmodules_cb ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct repository*) ; 
 int /*<<< orphan*/  FUNC3 (struct repository*) ; 

void FUNC4(struct repository *repo)
{
	FUNC3(repo);

	if (FUNC2(repo) < 0)
		return;

	if (!FUNC1(repo->index))
		FUNC0(gitmodules_cb, repo, repo);

	repo->submodule_cache->gitmodules_read = 1;
}