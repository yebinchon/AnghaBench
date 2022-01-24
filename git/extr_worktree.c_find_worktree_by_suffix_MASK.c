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
struct worktree {char* path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static struct worktree *FUNC3(struct worktree **list,
						const char *suffix)
{
	struct worktree *found = NULL;
	int nr_found = 0, suffixlen;

	suffixlen = FUNC2(suffix);
	if (!suffixlen)
		return NULL;

	for (; *list && nr_found < 2; list++) {
		const char	*path	 = (*list)->path;
		int		 pathlen = FUNC2(path);
		int		 start	 = pathlen - suffixlen;

		/* suffix must start at directory boundary */
		if ((!start || (start > 0 && FUNC1(path[start - 1]))) &&
		    !FUNC0(suffix, path + start)) {
			found = *list;
			nr_found++;
		}
	}
	return nr_found == 1 ? found : NULL;
}