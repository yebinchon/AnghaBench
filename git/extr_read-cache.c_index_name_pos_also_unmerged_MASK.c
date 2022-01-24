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
struct index_state {int cache_nr; struct cache_entry** cache; } ;
struct cache_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct cache_entry*) ; 
 scalar_t__ FUNC1 (struct cache_entry*,char const*,int) ; 
 int FUNC2 (struct index_state*,char const*,int) ; 

__attribute__((used)) static int FUNC3(struct index_state *istate,
	const char *path, int namelen)
{
	int pos = FUNC2(istate, path, namelen);
	struct cache_entry *ce;

	if (pos >= 0)
		return pos;

	/* maybe unmerged? */
	pos = -1 - pos;
	if (pos >= istate->cache_nr ||
			FUNC1((ce = istate->cache[pos]), path, namelen))
		return -1;

	/* order of preference: stage 2, 1, 3 */
	if (FUNC0(ce) == 1 && pos + 1 < istate->cache_nr &&
			FUNC0((ce = istate->cache[pos + 1])) == 2 &&
			!FUNC1(ce, path, namelen))
		pos++;
	return pos;
}