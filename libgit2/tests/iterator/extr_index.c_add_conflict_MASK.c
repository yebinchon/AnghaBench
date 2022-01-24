#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_8__ {char const* path; int /*<<< orphan*/  id; void* mode; TYPE_1__ member_0; } ;
typedef  TYPE_2__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 void* GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC4(
	git_index *index,
	const char *ancestor_path,
	const char *our_path,
	const char *their_path)
{
	git_index_entry ancestor = {0}, ours = {0}, theirs = {0};

	ancestor.path = ancestor_path;
	ancestor.mode = GIT_FILEMODE_BLOB;
	FUNC3(&ancestor.id, "d44e18fb93b7107b5cd1b95d601591d77869a1b6");
	FUNC0(&ancestor, 1);

	ours.path = our_path;
	ours.mode = GIT_FILEMODE_BLOB;
	FUNC3(&ours.id, "d44e18fb93b7107b5cd1b95d601591d77869a1b6");
	FUNC0(&ours, 2);

	theirs.path = their_path;
	theirs.mode = GIT_FILEMODE_BLOB;
	FUNC3(&theirs.id, "d44e18fb93b7107b5cd1b95d601591d77869a1b6");
	FUNC0(&theirs, 3);

	FUNC1(FUNC2(index, &ancestor, &ours, &theirs));
}