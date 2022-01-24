#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* next ) (int /*<<< orphan*/ **,TYPE_1__*) ;int /*<<< orphan*/  (* free ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ git_config_iterator ;
typedef  int (* git_config_foreach_cb ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  git_config_entry ;
typedef  int /*<<< orphan*/  git_config ;

/* Variables and functions */
 int GIT_ITEROVER ; 
 int FUNC0 (char const*) ; 
 int FUNC1 (TYPE_1__**,int /*<<< orphan*/  const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ **,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

int FUNC5(
	const git_config *cfg, const char *name, const char *regexp,
	git_config_foreach_cb cb, void *payload)
{
	int err, found;
	git_config_iterator *iter;
	git_config_entry *entry;

	if ((err = FUNC1(&iter, cfg, name, regexp)) < 0)
		return err;

	found = 0;
	while ((err = iter->next(&entry, iter)) == 0) {
		found = 1;

		if ((err = cb(entry, payload)) != 0) {
			FUNC2(err);
			break;
		}
	}

	iter->free(iter);
	if (err == GIT_ITEROVER)
		err = 0;

	if (found == 0 && err == 0)
		err = FUNC0(name);

	return err;
}