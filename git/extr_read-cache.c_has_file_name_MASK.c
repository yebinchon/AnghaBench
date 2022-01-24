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
struct index_state {int cache_nr; struct cache_entry const** cache; } ;
typedef  struct cache_entry {char* name; int ce_flags; } const cache_entry ;

/* Variables and functions */
 int CE_REMOVE ; 
 int FUNC0 (struct cache_entry const*) ; 
 int FUNC1 (struct cache_entry const*) ; 
 scalar_t__ FUNC2 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct index_state*,int) ; 

__attribute__((used)) static int FUNC4(struct index_state *istate,
			 const struct cache_entry *ce, int pos, int ok_to_replace)
{
	int retval = 0;
	int len = FUNC0(ce);
	int stage = FUNC1(ce);
	const char *name = ce->name;

	while (pos < istate->cache_nr) {
		struct cache_entry *p = istate->cache[pos++];

		if (len >= FUNC0(p))
			break;
		if (FUNC2(name, p->name, len))
			break;
		if (FUNC1(p) != stage)
			continue;
		if (p->name[len] != '/')
			continue;
		if (p->ce_flags & CE_REMOVE)
			continue;
		retval = -1;
		if (!ok_to_replace)
			break;
		FUNC3(istate, --pos);
	}
	return retval;
}