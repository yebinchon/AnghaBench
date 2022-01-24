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
struct TYPE_8__ {scalar_t__ size; char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 char GIT_PATH_LIST_SEPARATOR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(git_buf *ceiling_dirs, const char *path)
{
	git_buf pretty_path = GIT_BUF_INIT;
	char ceiling_separator[2] = { GIT_PATH_LIST_SEPARATOR, '\0' };

	FUNC1(FUNC5(&pretty_path, path, NULL));

	if (ceiling_dirs->size > 0)
		FUNC4(ceiling_dirs, ceiling_separator);

	FUNC4(ceiling_dirs, pretty_path.ptr);

	FUNC2(&pretty_path);
	FUNC0(FUNC3(ceiling_dirs) == 0);
}