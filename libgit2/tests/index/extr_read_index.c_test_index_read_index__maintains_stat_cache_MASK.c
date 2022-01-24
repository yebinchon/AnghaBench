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
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_8__ {size_t seconds; } ;
struct TYPE_7__ {size_t seconds; } ;
struct TYPE_9__ {char* path; int file_size; int mode; TYPE_2__ mtime; TYPE_1__ ctime; int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int /*<<< orphan*/ * _index ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC15 (char*,char*) ; 

void FUNC16(void)
{
	git_index *new_index;
	git_oid index_id;
	git_index_entry new_entry;
	const git_index_entry *e;
	git_tree *tree;
	size_t i;

	FUNC1(4, FUNC4(_index));

	/* write-tree */
	FUNC2(FUNC10(&index_id, _index));

	/* read-tree, then read index */
	FUNC13(&tree, _repo, &index_id);
	FUNC2(FUNC7(&new_index));
	FUNC2(FUNC9(new_index, tree));
	FUNC12(tree);

	/* add a new entry that will not have stat data */
	FUNC14(&new_entry, 0, sizeof(git_index_entry));
	new_entry.path = "Hello";
	FUNC11(&new_entry.id, "0123456789012345678901234567890123456789");
	new_entry.file_size = 1234;
	new_entry.mode = 0100644;
	FUNC2(FUNC3(new_index, &new_entry));
	FUNC1(5, FUNC4(new_index));

	FUNC2(FUNC8(_index, new_index));
	FUNC5(new_index);

	FUNC1(5, FUNC4(_index));

	for (i = 0; i < FUNC4(_index); i++) {
		e = FUNC6(_index, i);

		if (FUNC15(e->path, "Hello") == 0) {
			FUNC1(0, e->ctime.seconds);
			FUNC1(0, e->mtime.seconds);
		} else {
			FUNC0(0 != e->ctime.seconds);
			FUNC0(0 != e->mtime.seconds);
		}
	}
}