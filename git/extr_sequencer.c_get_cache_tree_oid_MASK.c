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
struct object_id {int dummy; } ;
struct index_state {TYPE_1__* cache_tree; } ;
struct TYPE_3__ {struct object_id oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct object_id *FUNC5(struct index_state *istate)
{
	if (!istate->cache_tree)
		istate->cache_tree = FUNC1();

	if (!FUNC2(istate->cache_tree))
		if (FUNC3(istate, 0)) {
			FUNC4(FUNC0("unable to update cache tree"));
			return NULL;
		}

	return &istate->cache_tree->oid;
}