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
struct traverse_info {char* name; size_t namelen; unsigned int mode; int pathlen; struct traverse_info* prev; } ;
struct cache_entry {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_IFREG ; 
 int FUNC0 (struct cache_entry const*) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ,char const*,size_t,unsigned int) ; 

__attribute__((used)) static int FUNC2(const struct cache_entry *ce,
				      const struct traverse_info *info,
				      const char *name, size_t namelen,
				      unsigned mode)
{
	int pathlen, ce_len;
	const char *ce_name;

	if (info->prev) {
		int cmp = FUNC2(ce, info->prev,
						     info->name, info->namelen,
						     info->mode);
		if (cmp)
			return cmp;
	}
	pathlen = info->pathlen;
	ce_len = FUNC0(ce);

	/* If ce_len < pathlen then we must have previously hit "name == directory" entry */
	if (ce_len < pathlen)
		return -1;

	ce_len -= pathlen;
	ce_name = ce->name + pathlen;

	return FUNC1(ce_name, ce_len, S_IFREG, name, namelen, mode);
}