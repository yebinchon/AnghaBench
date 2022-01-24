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
typedef  int /*<<< orphan*/ * git_config_foreach_cb ;
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int GIT_ENOTFOUND ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int FUNC3 (void*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(
	bool *found, git_config *config, git_buf *buf,
	git_config_foreach_cb cb, void *payload)
{
	int error = 0;
	const char *key = FUNC0(buf);

	if (FUNC1(buf))
		return -1;

	if (cb != NULL)
		error = FUNC2(config, key, NULL, cb, payload);
	else
		error = FUNC3(payload, config, key);

	if (found)
		*found = !error;

	if (error == GIT_ENOTFOUND) {
		FUNC4();
		error = 0;
	}

	return error;
}