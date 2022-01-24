#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_12__ {char* path; void* mode; int /*<<< orphan*/  id; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_13__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 void* GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(void)
{
	git_buf path = GIT_BUF_INIT;
	git_index *index;
	const git_index_entry *a_entry;
	git_index_entry new_entry = {0};

	FUNC2(FUNC11(&index, g_repo));

	FUNC2(FUNC4(&path, FUNC12(g_repo), "A"));
	FUNC1(path.ptr, "A");

	/* Put 'A' into the index */
	FUNC2(FUNC6(index, "A"));

	FUNC0((a_entry = FUNC9(index, "A", 0)));

	/* Put 'B' into the index */
	new_entry.path = "B";
	new_entry.mode = GIT_FILEMODE_BLOB;
	FUNC10(&new_entry.id, &a_entry->id);
	FUNC2(FUNC5(index, &new_entry));

	/* Put 'C' into the index */
	new_entry.path = "C";
	new_entry.mode = GIT_FILEMODE_BLOB;
	FUNC2(FUNC7(index, &new_entry, "hello!\n", 7));

	FUNC8(index);
	FUNC3(&path);
}