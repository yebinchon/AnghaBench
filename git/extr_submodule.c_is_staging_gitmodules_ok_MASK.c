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
struct stat {int dummy; } ;
struct index_state {int cache_nr; int /*<<< orphan*/ * cache; } ;

/* Variables and functions */
 int DATA_CHANGED ; 
 int /*<<< orphan*/  GITMODULES_FILE ; 
 int FUNC0 (struct index_state*,int /*<<< orphan*/ ,struct stat*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct index_state *istate)
{
	int pos = FUNC1(istate, GITMODULES_FILE, FUNC3(GITMODULES_FILE));

	if ((pos >= 0) && (pos < istate->cache_nr)) {
		struct stat st;
		if (FUNC2(GITMODULES_FILE, &st) == 0 &&
		    FUNC0(istate, istate->cache[pos], &st, 0) & DATA_CHANGED)
			return 0;
	}

	return 1;
}