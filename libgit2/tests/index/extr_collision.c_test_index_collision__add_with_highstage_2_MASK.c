#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int seconds; } ;
struct TYPE_7__ {int seconds; } ;
struct TYPE_9__ {int mode; char* path; int /*<<< orphan*/  id; scalar_t__ file_size; TYPE_2__ mtime; TYPE_1__ ctime; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_empty_id ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

void FUNC5(void)
{
	git_index_entry entry;

	FUNC4(&entry, 0, sizeof(entry));
	entry.ctime.seconds = 12346789;
	entry.mtime.seconds = 12346789;
	entry.mode  = 0100644;
	entry.file_size = 0;
	FUNC3(&entry.id, &g_empty_id);

	entry.path = "a/b/c";
	FUNC0(&entry, 1);
	FUNC1(FUNC2(g_index, &entry));

	/* create a blob beneath the previous tree entry */
	entry.path = "a/b/c";
	FUNC0(&entry, 2);
	FUNC1(FUNC2(g_index, &entry));

	/* create another tree entry above the blob */
	entry.path = "a/b";
	FUNC0(&entry, 3);
	FUNC1(FUNC2(g_index, &entry));
}