#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  mods; int /*<<< orphan*/  repo; int /*<<< orphan*/ * map; } ;
typedef  TYPE_1__ lfc_data ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ git_submodule ;
typedef  int /*<<< orphan*/  git_strmap ;
struct TYPE_15__ {char* name; } ;
typedef  TYPE_3__ git_config_entry ;
struct TYPE_16__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_4__ git_buf ;

/* Variables and functions */
 TYPE_4__ GIT_BUF_INIT ; 
 scalar_t__ FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int FUNC2 (TYPE_4__*,char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 char* FUNC8 (char const*,char) ; 
 int FUNC9 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(const git_config_entry *entry, void *payload)
{
	lfc_data *data = payload;
	const char *namestart, *property;
	git_strmap *map = data->map;
	git_buf name = GIT_BUF_INIT;
	git_submodule *sm;
	int error, isvalid;

	if (FUNC0(entry->name, "submodule.") != 0)
		return 0;

	namestart = entry->name + FUNC7("submodule.");
	property  = FUNC8(namestart, '.');

	if (!property || (property == namestart))
		return 0;

	property++;

	if ((error = FUNC2(&name, namestart, property - namestart -1)) < 0)
		return error;

	isvalid = FUNC6(data->repo, name.ptr, 0);
	if (isvalid <= 0) {
		error = isvalid;
		goto done;
	}

	/*
	 * Now that we have the submodule's name, we can use that to
	 * figure out whether it's in the map. If it's not, we create
	 * a new submodule, load the config and insert it. If it's
	 * already inserted, we've already loaded it, so we skip.
	 */
	if (FUNC3(map, name.ptr)) {
		error = 0;
		goto done;
	}

	if ((error = FUNC9(&sm, data->repo, name.ptr)) < 0)
		goto done;

	if ((error = FUNC10(sm, data->mods)) < 0) {
		FUNC5(sm);
		goto done;
	}

	if ((error = FUNC4(map, sm->name, sm)) < 0)
		goto done;

	error = 0;

done:
	FUNC1(&name);
	return error;
}