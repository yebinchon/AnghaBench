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
struct cache_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unpack_trees_options*,struct cache_entry const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cache_entry const*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry const*,struct unpack_trees_options*) ; 

__attribute__((used)) static int FUNC3(const struct cache_entry *ce,
		      struct unpack_trees_options *o)
{
	FUNC0(o, ce, 0, 0);
	if (FUNC1(ce))
		FUNC2(ce, o);
	return 1;
}