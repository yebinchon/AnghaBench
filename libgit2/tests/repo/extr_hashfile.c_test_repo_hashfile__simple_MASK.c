#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_5__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  GIT_OBJECT_OFS_DELTA ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void)
{
	git_oid a, b;
	git_buf full = GIT_BUF_INIT;

	/* hash with repo relative path */
	FUNC2(FUNC5(&a, "status/current_file", GIT_OBJECT_BLOB));
	FUNC2(FUNC6(&b, _repo, "current_file", GIT_OBJECT_BLOB, NULL));
	FUNC0(&a, &b);

	FUNC2(FUNC4(&full, FUNC7(_repo), "current_file"));

	/* hash with full path */
	FUNC2(FUNC5(&a, full.ptr, GIT_OBJECT_BLOB));
	FUNC2(FUNC6(&b, _repo, full.ptr, GIT_OBJECT_BLOB, NULL));
	FUNC0(&a, &b);

	/* hash with invalid type */
	FUNC1(FUNC5(&a, full.ptr, GIT_OBJECT_ANY));
	FUNC1(FUNC6(&b, _repo, full.ptr, GIT_OBJECT_OFS_DELTA, NULL));

	FUNC3(&full);
}