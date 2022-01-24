#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct opts {int /*<<< orphan*/  diffopts; int /*<<< orphan*/ * treeish2; int /*<<< orphan*/ * treeish1; } ;
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_4__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(git_diff **diff, struct opts *o) {
	git_patch *patch = NULL;
	char *file1_str = NULL;
	char *file2_str = NULL;
	git_buf buf = {0};

	if (!o->treeish1 || !o->treeish2) {
		FUNC9("two files should be provided as arguments", NULL);
	}
	file1_str = FUNC7(o->treeish1);
	if (file1_str == NULL) {
		FUNC9("file cannot be read", o->treeish1);
	}
	file2_str = FUNC7(o->treeish2);
	if (file2_str == NULL) {
		FUNC9("file cannot be read", o->treeish2);
	}
	FUNC0(
		FUNC5(&patch, file1_str, FUNC8(file1_str), o->treeish1, file2_str, FUNC8(file2_str), o->treeish2, &o->diffopts),
		"patch buffers", NULL);
	FUNC0(
		FUNC6(&buf, patch),
		"patch to buf", NULL);
	FUNC0(
		FUNC3(diff, buf.ptr, buf.size),
		"diff from patch", NULL);
	FUNC4(patch);
	FUNC2(&buf);
	FUNC1(file1_str);
	FUNC1(file2_str);
}