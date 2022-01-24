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
typedef  int /*<<< orphan*/  git_repository ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,char const*,int,char*,int,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

void FUNC2(
	git_repository *repo, const char *name, int expected_error,
	const char *msg, const char *file, int line)
{
	FUNC0(
		file, line, msg, 1, "%i",
		expected_error, (int)(FUNC1(NULL, repo, name)));
}