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
struct submodule {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  name; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  SUBMODULE_MOVE_HEAD_FORCE ; 
 int /*<<< orphan*/  FUNC0 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct submodule* FUNC4 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(const struct cache_entry *ce)
{
	const struct submodule *sub = FUNC4(ce);
	if (sub) {
		/* state.force is set at the caller. */
		FUNC5(ce->name, "HEAD", NULL,
				    SUBMODULE_MOVE_HEAD_FORCE);
	}
	if (!FUNC1(ce->name, FUNC0(ce)))
		return;
	if (FUNC2(ce->ce_mode, ce->name))
		return;
	FUNC3(ce->name, FUNC0(ce));
}