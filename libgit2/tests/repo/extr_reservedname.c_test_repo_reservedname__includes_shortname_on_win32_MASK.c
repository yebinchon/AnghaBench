#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__**,size_t*,int /*<<< orphan*/ *,int) ; 

void FUNC5(void)
{
	git_repository *repo;
	git_buf *reserved;
	size_t reserved_len;

	repo = FUNC3("nasty");
	FUNC0(FUNC4(&reserved, &reserved_len, repo, false));

#ifdef GIT_WIN32
	cl_assert_equal_i(2, reserved_len);
	cl_assert_equal_s(".git", reserved[0].ptr);
	cl_assert_equal_s("GIT~1", reserved[1].ptr);
#else
	FUNC1(1, reserved_len);
	FUNC2(".git", reserved[0].ptr);
#endif
}