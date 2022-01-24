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
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(git_index *index, int entries)
{
	int write_ancestor = 1;
	int write_ours = 2;
	int write_theirs = 4;
	git_oid ancestor, ours, theirs;

	FUNC1(&ancestor, "452e4244b5d083ddf0460acf1ecc74db9dcfa11a");
	FUNC1(&ours, "32504b727382542f9f089e24fddac5e78533e96c");
	FUNC1(&theirs, "061d42a44cacde5726057b67558821d95db96f19");

	FUNC0("status/conflicting_file", "conflicting file\n");

	if (entries & write_ancestor)
		FUNC2(index, 1, &ancestor);

	if (entries & write_ours)
		FUNC2(index, 2, &ours);

	if (entries & write_theirs)
		FUNC2(index, 3, &theirs);
}