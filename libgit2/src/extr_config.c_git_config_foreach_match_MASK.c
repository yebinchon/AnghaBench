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
typedef  int /*<<< orphan*/  git_config_iterator ;
typedef  int (* git_config_foreach_cb ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(
	const git_config *cfg,
	const char *regexp,
	git_config_foreach_cb cb,
	void *payload)
{
	int error;
	git_config_iterator *iter;
	git_config_entry *entry;

	if ((error = FUNC1(&iter, cfg, regexp)) < 0)
		return error;

	while (!(error = FUNC2(&entry, iter))) {
		if ((error = cb(entry, payload)) != 0) {
			FUNC3(error);
			break;
		}
	}

	FUNC0(iter);

	if (error == GIT_ITEROVER)
		error = 0;

	return error;
}