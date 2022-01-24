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
struct seen_paths {int what; int how; int who; int when; } ;
typedef  int /*<<< orphan*/  git_diff_file ;
typedef  int /*<<< orphan*/  const* git_checkout_notify_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int FUNC2(
	git_checkout_notify_t why,
	const char *path,
	const git_diff_file *baseline,
	const git_diff_file *target,
	const git_diff_file *workdir,
	void *payload)
{
	struct seen_paths *seen_paths = (struct seen_paths *)payload;

	FUNC0(why);
	FUNC0(baseline);
	FUNC0(target);
	FUNC0(workdir);

	if (FUNC1(path, "what") == 0)
		seen_paths->what = 1;
	else if (FUNC1(path, "how") == 0)
		seen_paths->how = 1;
	else if (FUNC1(path, "who") == 0)
		seen_paths->who = 1;
	else if (FUNC1(path, "when") == 0)
		seen_paths->when = 1;

	return 0;
}