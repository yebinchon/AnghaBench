#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t size; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void FUNC9(const char *root, int depth)
{
	git_buf fullpath = GIT_BUF_INIT;
	size_t root_len;
	int i;

	FUNC0(FUNC6(&fullpath, root));
	FUNC0(FUNC5(&fullpath, '/'));

	root_len = fullpath.size;

	for (i = 0; i < 8; i++) {
		bool file = (depth == 0 || (i % 2) == 0);
		FUNC7(&fullpath, root_len);
		FUNC0(FUNC4(&fullpath, "item%d", i));

		if (file) {
			FUNC1(fullpath.ptr, "This is a file!\n");
		} else {
			FUNC2(FUNC8(fullpath.ptr, 0777));

			if (depth > 0)
				FUNC9(fullpath.ptr, (depth - 1));
		}
	}

	FUNC3(&fullpath);
}