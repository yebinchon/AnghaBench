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
struct unpack_trees_options {int dummy; } ;
struct cache_entry {int ce_flags; } ;

/* Variables and functions */
 int CE_CONFLICTED ; 
 int /*<<< orphan*/  CE_REMOVE ; 
 int /*<<< orphan*/  ERROR_WOULD_LOSE_UNTRACKED_REMOVED ; 
 int /*<<< orphan*/  FUNC0 (struct unpack_trees_options*,struct cache_entry const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry const*,struct unpack_trees_options*) ; 
 scalar_t__ FUNC2 (struct cache_entry const*,int /*<<< orphan*/ ,struct unpack_trees_options*) ; 
 scalar_t__ FUNC3 (struct cache_entry const*,struct unpack_trees_options*) ; 

__attribute__((used)) static int FUNC4(const struct cache_entry *ce,
			 const struct cache_entry *old,
			 struct unpack_trees_options *o)
{
	/* Did it exist in the index? */
	if (!old) {
		if (FUNC2(ce, ERROR_WOULD_LOSE_UNTRACKED_REMOVED, o))
			return -1;
		return 0;
	}
	if (!(old->ce_flags & CE_CONFLICTED) && FUNC3(old, o))
		return -1;
	FUNC0(o, ce, CE_REMOVE, 0);
	FUNC1(ce, o);
	return 1;
}