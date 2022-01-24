#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int dummy; } ;
struct repository {TYPE_1__* index; } ;
struct cache_entry {scalar_t__ name; } ;
struct TYPE_2__ {int cache_nr; struct cache_entry** cache; } ;

/* Variables and functions */
 int THREE_STAGED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (TYPE_1__*,int,int*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct repository*) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*,char const*) ; 

__attribute__((used)) static int FUNC5(struct repository *r, struct string_list *conflict)
{
	int i;

	if (FUNC3(r) < 0)
		return FUNC2(FUNC0("index file corrupt"));

	for (i = 0; i < r->index->cache_nr;) {
		int conflict_type;
		const struct cache_entry *e = r->index->cache[i];
		i = FUNC1(r->index, i, &conflict_type);
		if (conflict_type == THREE_STAGED)
			FUNC4(conflict, (const char *)e->name);
	}
	return 0;
}