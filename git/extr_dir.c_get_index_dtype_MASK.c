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
struct cache_entry {char* name; int /*<<< orphan*/  ce_mode; } ;

/* Variables and functions */
 int DT_DIR ; 
 int DT_REG ; 
 int DT_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry const*) ; 
 struct cache_entry* FUNC2 (struct index_state*,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct index_state*,char const*,int) ; 
 scalar_t__ FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC5(struct index_state *istate,
			   const char *path, int len)
{
	int pos;
	const struct cache_entry *ce;

	ce = FUNC2(istate, path, len, 0);
	if (ce) {
		if (!FUNC1(ce))
			return DT_UNKNOWN;
		if (FUNC0(ce->ce_mode))
			return DT_DIR;
		/*
		 * Nobody actually cares about the
		 * difference between DT_LNK and DT_REG
		 */
		return DT_REG;
	}

	/* Try to look it up as a directory */
	pos = FUNC3(istate, path, len);
	if (pos >= 0)
		return DT_UNKNOWN;
	pos = -pos-1;
	while (pos < istate->cache_nr) {
		ce = istate->cache[pos++];
		if (FUNC4(ce->name, path, len))
			break;
		if (ce->name[len] > '/')
			break;
		if (ce->name[len] < '/')
			continue;
		if (!FUNC1(ce))
			break;	/* continue? */
		return DT_DIR;
	}
	return DT_UNKNOWN;
}