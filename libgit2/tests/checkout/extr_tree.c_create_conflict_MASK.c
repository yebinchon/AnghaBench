#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int mode; char const* path; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int) ; 

__attribute__((used)) static void FUNC8(const char *path)
{
	git_index *index;
	git_index_entry entry;

	FUNC1(FUNC6(&index, g_repo));

	FUNC7(&entry, 0x0, sizeof(git_index_entry));
	entry.mode = 0100644;
	FUNC0(&entry, 1);
	FUNC5(&entry.id, "d427e0b2e138501a3d15cc376077a3631e15bd46");
	entry.path = path;
	FUNC1(FUNC2(index, &entry));

	FUNC0(&entry, 2);
	FUNC5(&entry.id, "ee3fa1b8c00aff7fe02065fdb50864bb0d932ccf");
	FUNC1(FUNC2(index, &entry));

	FUNC0(&entry, 3);
	FUNC5(&entry.id, "2bd0a343aeef7a2cf0d158478966a6e587ff3863");
	FUNC1(FUNC2(index, &entry));

	FUNC1(FUNC4(index));
	FUNC3(index);
}