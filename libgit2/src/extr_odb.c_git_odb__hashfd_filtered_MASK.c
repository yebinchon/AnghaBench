#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_filter_list ;
typedef  int /*<<< orphan*/  git_file ;
struct TYPE_7__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(
	git_oid *out, git_file fd, size_t size, git_object_t type, git_filter_list *fl)
{
	int error;
	git_buf raw = GIT_BUF_INIT;

	if (!fl)
		return FUNC3(out, fd, size, type);

	/* size of data is used in header, so we have to read the whole file
	 * into memory to apply filters before beginning to calculate the hash
	 */

	if (!(error = FUNC2(&raw, fd, size))) {
		git_buf post = GIT_BUF_INIT;

		error = FUNC1(&post, fl, &raw);

		FUNC0(&raw);

		if (!error)
			error = FUNC4(out, post.ptr, post.size, type);

		FUNC0(&post);
	}

	return error;
}