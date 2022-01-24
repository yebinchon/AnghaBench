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
struct notify_data {int /*<<< orphan*/  sha; int /*<<< orphan*/  file; } ;
struct TYPE_6__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_diff_file ;
typedef  int /*<<< orphan*/  git_checkout_notify_t ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_CHECKOUT_NOTIFY_CONFLICT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(
	git_checkout_notify_t why,
	const char *path,
	const git_diff_file *baseline,
	const git_diff_file *target,
	const git_diff_file *workdir,
	void *payload)
{
	struct notify_data *expectations = (struct notify_data *)payload;

	FUNC0(workdir);

	FUNC1(GIT_CHECKOUT_NOTIFY_CONFLICT, why);
	FUNC2(expectations->file, path);
	FUNC1(0, FUNC3(&baseline->id, expectations->sha));
	FUNC1(0, FUNC3(&target->id, expectations->sha));

	return 0;
}