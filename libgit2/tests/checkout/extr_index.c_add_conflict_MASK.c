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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(git_index *index, const char *path)
{
	git_index_entry entry;

	FUNC4(&entry, 0, sizeof(git_index_entry));

	entry.mode = 0100644;
	entry.path = path;

	FUNC3(&entry.id, "d427e0b2e138501a3d15cc376077a3631e15bd46");
	FUNC0(&entry, 1);
	FUNC1(FUNC2(index, &entry));

	FUNC3(&entry.id, "4e886e602529caa9ab11d71f86634bd1b6e0de10");
	FUNC0(&entry, 2);
	FUNC1(FUNC2(index, &entry));

	FUNC3(&entry.id, "2bd0a343aeef7a2cf0d158478966a6e587ff3863");
	FUNC0(&entry, 3);
	FUNC1(FUNC2(index, &entry));
}