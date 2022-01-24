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
struct TYPE_2__ {int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ git_submodule ;
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC2(
	git_repository **out,
	const char *path,
	int bare,
	void *payload)
{
	git_submodule *sm;

	FUNC0(bare);

	sm = payload;

	return FUNC1(out, sm->repo, path);
}