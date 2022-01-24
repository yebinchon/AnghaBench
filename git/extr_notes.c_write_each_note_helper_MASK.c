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
struct tree_write_stack {int /*<<< orphan*/  buf; struct tree_write_stack* next; } ;
struct object_id {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct tree_write_stack*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char,size_t) ; 
 size_t FUNC3 (char const*) ; 
 int FUNC4 (struct tree_write_stack*) ; 
 int /*<<< orphan*/  FUNC5 (struct tree_write_stack*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned int,char const*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct tree_write_stack *tws,
		const char *path, unsigned int mode,
		const struct object_id *oid)
{
	size_t path_len = FUNC3(path);
	unsigned int n = 0;
	int ret;

	/* Determine common part of tree write stack */
	while (tws && 3 * n < path_len &&
	       FUNC1(tws, path + 3 * n)) {
		n++;
		tws = tws->next;
	}

	/* tws point to last matching tree_write_stack entry */
	ret = FUNC4(tws);
	if (ret)
		return ret;

	/* Start subtrees needed to satisfy path */
	while (3 * n + 2 < path_len && path[3 * n + 2] == '/') {
		FUNC5(tws, path + 3 * n);
		n++;
		tws = tws->next;
	}

	/* There should be no more directory components in the given path */
	FUNC0(FUNC2(path + 3 * n, '/', path_len - (3 * n)) == NULL);

	/* Finally add given entry to the current tree object */
	FUNC6(&tws->buf, mode, path + 3 * n, path_len - (3 * n),
			 oid->hash);

	return 0;
}