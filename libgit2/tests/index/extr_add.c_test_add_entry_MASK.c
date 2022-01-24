#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_5__ {char* path; scalar_t__ mode; int /*<<< orphan*/  id; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  scalar_t__ git_filemode_t ;

/* Variables and functions */
 scalar_t__ GIT_FILEMODE_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static void FUNC4(
	bool should_succeed, const char *idstr, git_filemode_t mode)
{
	git_index_entry entry = {0};

	FUNC1(FUNC3(&entry.id, idstr));

	entry.path = mode == GIT_FILEMODE_TREE ? "test_folder" : "test_file";
	entry.mode = mode;

	if (should_succeed)
		FUNC1(FUNC2(g_index, &entry));
	else
		FUNC0(FUNC2(g_index, &entry));
}