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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  git_win32_path ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct stat*,int) ; 

__attribute__((used)) static int FUNC3(const char *path, struct stat *buf, bool posixly_correct)
{
	git_win32_path path_w;
	int len;

	if ((len = FUNC0(path_w, path)) < 0)
		return -1;

	FUNC1(path_w, len);

	return FUNC2(path_w, buf, posixly_correct);
}