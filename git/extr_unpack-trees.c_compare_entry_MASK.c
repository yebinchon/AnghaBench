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
struct traverse_info {int dummy; } ;
struct name_entry {int /*<<< orphan*/  mode; int /*<<< orphan*/  pathlen; int /*<<< orphan*/  path; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cache_entry const*) ; 
 int FUNC1 (struct cache_entry const*,struct traverse_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct traverse_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct name_entry const*) ; 

__attribute__((used)) static int FUNC4(const struct cache_entry *ce, const struct traverse_info *info, const struct name_entry *n)
{
	int cmp = FUNC1(ce, info, n->path, n->pathlen, n->mode);
	if (cmp)
		return cmp;

	/*
	 * Even if the beginning compared identically, the ce should
	 * compare as bigger than a directory leading up to it!
	 */
	return FUNC0(ce) > FUNC2(info, FUNC3(n));
}