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
struct unpack_trees_options {int merge_size; scalar_t__ quiet; } ;
struct cache_entry {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unpack_trees_options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERROR_BIND_OVERLAP ; 
 int FUNC1 (char*,...) ; 
 int FUNC2 (struct cache_entry const*,struct unpack_trees_options*) ; 
 int FUNC3 (struct cache_entry const*,int /*<<< orphan*/ *,struct unpack_trees_options*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(const struct cache_entry * const *src,
	       struct unpack_trees_options *o)
{
	const struct cache_entry *old = src[0];
	const struct cache_entry *a = src[1];

	if (o->merge_size != 1)
		return FUNC1("Cannot do a bind merge of %d trees",
			     o->merge_size);
	if (a && old)
		return o->quiet ? -1 :
			FUNC1(FUNC0(o, ERROR_BIND_OVERLAP),
			      FUNC4(a->name),
			      FUNC4(old->name));
	if (!a)
		return FUNC2(old, o);
	else
		return FUNC3(a, NULL, o);
}