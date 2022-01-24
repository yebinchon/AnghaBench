#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int,int) ; 

__attribute__((used)) static void FUNC4(const char *filename, size_t b_lines)
{
	git_buf contents = GIT_BUF_INIT;
	size_t i;

	for (i = 0; i < b_lines; i++)
		FUNC2(&contents, "%02d - bbbbb\r\n", (int)(i+1));

	for (i = b_lines; i < 50; i++)
		FUNC2(&contents, "%02d - aaaaa%s", (int)(i+1), (i == 49 ? "" : "\r\n"));

	FUNC0(
		FUNC3(&contents, filename, O_RDWR|O_CREAT, 0777));

	FUNC1(&contents);
}