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
struct pathspec_item {int nowildcard_len; int /*<<< orphan*/  match; } ;
struct pathspec {int nr; struct pathspec_item* items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pathspec const*,int) ; 
 int PATHSPEC_ATTR ; 
 int PATHSPEC_EXCLUDE ; 
 int PATHSPEC_FROMTOP ; 
 int PATHSPEC_GLOB ; 
 int PATHSPEC_ICASE ; 
 int PATHSPEC_LITERAL ; 
 int PATHSPEC_MAXDEPTH ; 
 int /*<<< orphan*/  FUNC1 (struct pathspec_item const*,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int FUNC2(const char *path, int pathlen,
			 const struct pathspec *pathspec)
{
	int i;

	if (!pathspec || !pathspec->nr)
		return 0;

	FUNC0(pathspec,
		       PATHSPEC_FROMTOP |
		       PATHSPEC_MAXDEPTH |
		       PATHSPEC_LITERAL |
		       PATHSPEC_GLOB |
		       PATHSPEC_ICASE |
		       PATHSPEC_EXCLUDE |
		       PATHSPEC_ATTR);

	for (i = 0; i < pathspec->nr; i++) {
		const struct pathspec_item *item = &pathspec->items[i];
		int len = item->nowildcard_len;

		if (len > pathlen)
			len = pathlen;
		if (!FUNC1(item, item->match, path, len))
			return 0;
	}

	return 1;
}