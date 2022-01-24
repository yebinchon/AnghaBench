#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* path; int /*<<< orphan*/  id; int /*<<< orphan*/  mode; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_12__ {size_t size; char* ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9(git_index *index, const char *root, int depth)
{
	git_buf fullpath = GIT_BUF_INIT;
	git_index_entry entry;
	size_t root_len;
	int i;

	if (root) {
		FUNC0(FUNC4(&fullpath, root));
		FUNC0(FUNC3(&fullpath, '/'));
	}

	root_len = fullpath.size;

	for (i = 0; i < 8; i++) {
		bool file = (depth == 0 || (i % 2) == 0);
		FUNC5(&fullpath, root_len);
		FUNC0(FUNC2(&fullpath, "item%d", i));

		if (file) {
			FUNC8(&entry, 0, sizeof(git_index_entry));
			entry.path = fullpath.ptr;
			entry.mode = GIT_FILEMODE_BLOB;
			FUNC7(&entry.id, "d44e18fb93b7107b5cd1b95d601591d77869a1b6");

			FUNC0(FUNC6(index, &entry));
		} else if (depth > 0) {
			FUNC9(index, fullpath.ptr, (depth - 1));
		}
	}

	FUNC1(&fullpath);
}