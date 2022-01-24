#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int O_CREAT ; 
 int O_TRUNC ; 
 int O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(
	const char *filename, const char *backup, unsigned int create_mode)
{
	git_buf path = GIT_BUF_INIT, content = GIT_BUF_INIT;

	FUNC0(FUNC3(&path, "filemodes", filename));
	FUNC0(FUNC4(&content, "%s as %08u (%d)",
		filename, create_mode, FUNC6()));

	FUNC0(FUNC5(path.ptr, backup));
	FUNC1(
		path.ptr, content.ptr, content.size,
		O_WRONLY|O_CREAT|O_TRUNC, create_mode);

	FUNC2(&path);
	FUNC2(&content);
}