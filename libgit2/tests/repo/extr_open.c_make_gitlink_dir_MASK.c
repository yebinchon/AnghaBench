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
struct TYPE_5__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_MKDIR_VERIFY_DIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(const char *dir, const char *linktext)
{
	git_buf path = GIT_BUF_INIT;

	FUNC0(FUNC4(dir, 0777, GIT_MKDIR_VERIFY_DIR));
	FUNC0(FUNC3(&path, dir, ".git"));
	FUNC1(path.ptr, linktext);
	FUNC2(&path);
}