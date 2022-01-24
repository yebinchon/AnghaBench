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
 int FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 

int FUNC3(git_buf *local_path_out, const char *url_or_path)
{
	if (FUNC2(url_or_path))
		return FUNC1(local_path_out, url_or_path);
	else
		return FUNC0(local_path_out, url_or_path);
}