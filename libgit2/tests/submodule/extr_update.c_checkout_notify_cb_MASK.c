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
struct update_submodule_cb_payload {int checkout_notify_called; } ;
typedef  char git_diff_file ;
typedef  char const* git_checkout_notify_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 

__attribute__((used)) static int FUNC1(
	git_checkout_notify_t why,
	const char *path,
	const git_diff_file *baseline,
	const git_diff_file *target,
	const git_diff_file *workdir,
	void *payload)
{
	struct update_submodule_cb_payload *update_payload = payload;

	FUNC0(why);
	FUNC0(path);
	FUNC0(baseline);
	FUNC0(target);
	FUNC0(workdir);

	update_payload->checkout_notify_called = 1;

	return 0;
}