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
struct index_state {int /*<<< orphan*/  name_hash; } ;
struct cache_entry {int ce_flags; int /*<<< orphan*/  ent; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int CE_HASHED ; 
 int /*<<< orphan*/  FUNC0 (struct index_state*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ignore_case ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct index_state *istate, struct cache_entry *ce)
{
	if (ce->ce_flags & CE_HASHED)
		return;
	ce->ce_flags |= CE_HASHED;
	FUNC3(&ce->ent, FUNC4(ce->name, FUNC1(ce)));
	FUNC2(&istate->name_hash, &ce->ent);

	if (ignore_case)
		FUNC0(istate, ce);
}