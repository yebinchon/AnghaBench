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
struct ref_entry {int dummy; } ;
struct ref_dir {int /*<<< orphan*/  cache; } ;

/* Variables and functions */
 int FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (struct ref_dir*,struct ref_entry*) ; 
 struct ref_entry* FUNC2 (int /*<<< orphan*/ ,char const*,int,int) ; 
 int FUNC3 (struct ref_dir*,char const*,int) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(struct ref_dir *dir, const char *dirname)
{
	const char *prefixes[] = { "refs/bisect/", "refs/worktree/", "refs/rewritten/" };
	int ip;

	if (FUNC4(dirname, "refs/"))
		return;

	for (ip = 0; ip < FUNC0(prefixes); ip++) {
		const char *prefix = prefixes[ip];
		int prefix_len = FUNC5(prefix);
		struct ref_entry *child_entry;
		int pos;

		pos = FUNC3(dir, prefix, prefix_len);
		if (pos >= 0)
			continue;
		child_entry = FUNC2(dir->cache, prefix, prefix_len, 1);
		FUNC1(dir, child_entry);
	}
}