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
struct index_state {TYPE_1__* untracked; } ;
struct TYPE_2__ {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 

void FUNC3(struct index_state *istate,
				     const char *path, int safe_path)
{
	if (!istate->untracked || !istate->untracked->root)
		return;
	if (!safe_path && !FUNC2(path, 0))
		return;
	FUNC0(istate->untracked, istate->untracked->root,
				 path, FUNC1(path));
}