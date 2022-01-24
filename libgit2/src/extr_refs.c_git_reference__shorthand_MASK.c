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

/* Variables and functions */
 int /*<<< orphan*/  GIT_REFS_DIR ; 
 int /*<<< orphan*/  GIT_REFS_HEADS_DIR ; 
 int /*<<< orphan*/  GIT_REFS_REMOTES_DIR ; 
 int /*<<< orphan*/  GIT_REFS_TAGS_DIR ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(const char *name)
{
	if (!FUNC0(name, GIT_REFS_HEADS_DIR))
		return name + FUNC1(GIT_REFS_HEADS_DIR);
	else if (!FUNC0(name, GIT_REFS_TAGS_DIR))
		return name + FUNC1(GIT_REFS_TAGS_DIR);
	else if (!FUNC0(name, GIT_REFS_REMOTES_DIR))
		return name + FUNC1(GIT_REFS_REMOTES_DIR);
	else if (!FUNC0(name, GIT_REFS_DIR))
		return name + FUNC1(GIT_REFS_DIR);

	/* No shorthands are avaiable, so just return the name */
	return name;
}