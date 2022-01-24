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
struct cache_entry {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int FUNC0 (struct cache_entry const*,char const*,int /*<<< orphan*/ ,struct unpack_trees_options*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry const*) ; 

__attribute__((used)) static int FUNC3(const char *old_sha1,
				  const struct cache_entry *ce,
				  struct unpack_trees_options *o)
{
	if (!FUNC2(ce))
		return 0;

	return FUNC0(ce, old_sha1,
					 FUNC1(&ce->oid), o);
}