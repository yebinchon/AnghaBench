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
struct refspec_item {char* src; char* dst; int /*<<< orphan*/  force; scalar_t__ pattern; } ;
struct refspec {int nr; struct refspec_item* items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const*,char const*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 char* FUNC3 (char const*) ; 

int FUNC4(struct refspec *rs, struct refspec_item *query)
{
	int i;
	int find_src = !query->src;
	const char *needle = find_src ? query->dst : query->src;
	char **result = find_src ? &query->src : &query->dst;

	if (find_src && !query->dst)
		FUNC0("query_refspecs: need either src or dst");

	for (i = 0; i < rs->nr; i++) {
		struct refspec_item *refspec = &rs->items[i];
		const char *key = find_src ? refspec->dst : refspec->src;
		const char *value = find_src ? refspec->src : refspec->dst;

		if (!refspec->dst)
			continue;
		if (refspec->pattern) {
			if (FUNC1(key, needle, value, result)) {
				query->force = refspec->force;
				return 0;
			}
		} else if (!FUNC2(needle, key)) {
			*result = FUNC3(value);
			query->force = refspec->force;
			return 0;
		}
	}
	return -1;
}