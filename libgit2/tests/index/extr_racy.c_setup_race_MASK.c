#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct stat {scalar_t__ st_mtime_nsec; scalar_t__ st_mtime; } ;
typedef  void* int32_t ;
struct TYPE_8__ {void* nanoseconds; void* seconds; } ;
struct TYPE_9__ {TYPE_1__ mtime; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_10__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct stat*) ; 

__attribute__((used)) static void FUNC11(void)
{
	git_buf path = GIT_BUF_INIT;
	git_index *index;
	git_index_entry *entry;
	struct stat st;

	/* Make sure we do have a timestamp */
	FUNC2(FUNC8(&index, g_repo));
	FUNC2(FUNC7(index));

	FUNC2(FUNC4(&path, FUNC9(g_repo), "A"));

	FUNC1(path.ptr, "A");
	FUNC2(FUNC5(index, "A"));

	FUNC1(path.ptr, "B");
	FUNC2(FUNC7(index));

	FUNC1(path.ptr, "");

	FUNC2(FUNC10(path.ptr, &st));
	FUNC0(entry = (git_index_entry *)FUNC6(index, "A", 0));

	/* force a race */
	entry->mtime.seconds = (int32_t)st.st_mtime;
	entry->mtime.nanoseconds = (int32_t)st.st_mtime_nsec;

	FUNC3(&path);
}