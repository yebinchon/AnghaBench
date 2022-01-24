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
struct tree_desc {scalar_t__ size; } ;
struct tree_desc_x {struct tree_desc d; struct tree_desc_skip* skip; } ;
struct tree_desc_skip {char* ptr; struct tree_desc_skip* prev; } ;
struct name_entry {char* path; } ;

/* Variables and functions */
 int FUNC0 (char const*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct name_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct tree_desc*,struct name_entry*) ; 
 int FUNC3 (struct name_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct tree_desc*) ; 

__attribute__((used)) static void FUNC5(struct tree_desc_x *t,
				   struct name_entry *a,
				   const char *first,
				   int first_len)
{
	const char *path;
	int len;
	struct tree_desc probe;
	struct tree_desc_skip *skip;

	/*
	 * Extract the first entry from the tree_desc, but skip the
	 * ones that we already returned in earlier rounds.
	 */
	while (1) {
		if (!t->d.size) {
			FUNC1(a);
			break; /* not found */
		}
		FUNC2(&t->d, a);
		for (skip = t->skip; skip; skip = skip->prev)
			if (a->path == skip->ptr)
				break; /* found */
		if (!skip)
			break;
		/* We have processed this entry already. */
		FUNC4(&t->d);
	}

	if (!first || !a->path)
		return;

	/*
	 * The caller wants "first" from this tree, or nothing.
	 */
	path = a->path;
	len = FUNC3(a);
	switch (FUNC0(first, first_len, path, len)) {
	case -1:
		FUNC1(a);
	case 0:
		return;
	default:
		break;
	}

	/*
	 * We need to look-ahead -- we suspect that a subtree whose
	 * name is "first" may be hiding behind the current entry "path".
	 */
	probe = t->d;
	while (probe.size) {
		FUNC2(&probe, a);
		path = a->path;
		len = FUNC3(a);
		switch (FUNC0(first, first_len, path, len)) {
		case -1:
			FUNC1(a);
		case 0:
			return;
		default:
			FUNC4(&probe);
			break;
		}
		/* keep looking */
	}
	FUNC1(a);
}