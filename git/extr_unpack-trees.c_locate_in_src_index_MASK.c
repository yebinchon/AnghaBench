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
struct unpack_trees_options {struct index_state* src_index; } ;
struct index_state {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (struct cache_entry const*) ; 
 int FUNC1 (struct index_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(const struct cache_entry *ce,
			       struct unpack_trees_options *o)
{
	struct index_state *index = o->src_index;
	int len = FUNC0(ce);
	int pos = FUNC1(index, ce->name, len);
	if (pos < 0)
		pos = -1 - pos;
	return pos;
}