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
struct unpack_trees_options {int /*<<< orphan*/  result; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct unpack_trees_options*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct unpack_trees_options *o,
		      const struct cache_entry *ce,
		      unsigned int set, unsigned int clear)
{
	FUNC0(o, FUNC1(ce, &o->result), set, clear);
}