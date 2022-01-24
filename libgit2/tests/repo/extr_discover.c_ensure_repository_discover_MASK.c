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
struct TYPE_7__ {scalar_t__ size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(const char *start_path,
				       const char *ceiling_dirs,
				       const char *expected_path)
{
	git_buf found_path = GIT_BUF_INIT, resolved = GIT_BUF_INIT;

	FUNC3(&resolved, FUNC7(expected_path, NULL), 0);
	FUNC0(resolved.size > 0);
	FUNC2(FUNC5(&resolved));
	FUNC2(FUNC6(&found_path, start_path, 1, ceiling_dirs));

	FUNC1(found_path.ptr, resolved.ptr);

	FUNC4(&resolved);
	FUNC4(&found_path);
}