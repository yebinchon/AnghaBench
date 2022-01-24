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
struct index_state {int dummy; } ;
struct cache_entry {int mem_pool_allocated; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cache_entry const*) ; 
 unsigned int FUNC1 (struct cache_entry const*) ; 
 struct cache_entry* FUNC2 (struct index_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry*,struct cache_entry const*,unsigned int) ; 

struct cache_entry *FUNC4(const struct cache_entry *ce,
				    struct index_state *istate)
{
	unsigned int size = FUNC1(ce);
	int mem_pool_allocated;
	struct cache_entry *new_entry = FUNC2(istate, FUNC0(ce));
	mem_pool_allocated = new_entry->mem_pool_allocated;

	FUNC3(new_entry, ce, size);
	new_entry->mem_pool_allocated = mem_pool_allocated;
	return new_entry;
}