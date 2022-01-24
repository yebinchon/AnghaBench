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
struct unpack_trees_options {scalar_t__ reset; } ;
struct submodule {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_WOULD_LOSE_SUBMODULE ; 
 unsigned int SUBMODULE_MOVE_HEAD_DRY_RUN ; 
 unsigned int SUBMODULE_MOVE_HEAD_FORCE ; 
 int FUNC0 (struct unpack_trees_options*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct submodule* FUNC1 (struct cache_entry const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,char const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(const struct cache_entry *ce,
				     const char *old_id,
				     const char *new_id,
				     struct unpack_trees_options *o)
{
	unsigned flags = SUBMODULE_MOVE_HEAD_DRY_RUN;
	const struct submodule *sub = FUNC1(ce);

	if (!sub)
		return 0;

	if (o->reset)
		flags |= SUBMODULE_MOVE_HEAD_FORCE;

	if (FUNC2(ce->name, old_id, new_id, flags))
		return FUNC0(o, ERROR_WOULD_LOSE_SUBMODULE, ce->name);
	return 0;
}