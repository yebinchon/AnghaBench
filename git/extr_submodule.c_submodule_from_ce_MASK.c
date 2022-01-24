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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct submodule const* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  the_repository ; 

const struct submodule *FUNC3(const struct cache_entry *ce)
{
	if (!FUNC0(ce->ce_mode))
		return NULL;

	if (!FUNC1())
		return NULL;

	return FUNC2(the_repository, &null_oid, ce->name);
}