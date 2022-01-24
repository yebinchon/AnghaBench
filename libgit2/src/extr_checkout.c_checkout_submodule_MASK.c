#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_2__ git_diff_file ;
struct TYPE_10__ {int /*<<< orphan*/  dir_mode; int /*<<< orphan*/  target_directory; } ;
struct TYPE_12__ {int strategy; int /*<<< orphan*/  repo; TYPE_1__ opts; } ;
typedef  TYPE_3__ checkout_data ;

/* Variables and functions */
 int GIT_CHECKOUT_UPDATE_ONLY ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  MKDIR_NORMAL ; 
 int /*<<< orphan*/  MKDIR_REMOVE_EXISTING ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(
	checkout_data *data,
	const git_diff_file *file)
{
	bool remove_existing = FUNC4(data);
	int error = 0;

	/* Until submodules are supported, UPDATE_ONLY means do nothing here */
	if ((data->strategy & GIT_CHECKOUT_UPDATE_ONLY) != 0)
		return 0;

	if ((error = FUNC0(
			data,
			file->path, data->opts.target_directory, data->opts.dir_mode,
			remove_existing ? MKDIR_REMOVE_EXISTING : MKDIR_NORMAL)) < 0)
		return error;

	if ((error = FUNC3(NULL, data->repo, file->path)) < 0) {
		/* I've observed repos with submodules in the tree that do not
		 * have a .gitmodules - core Git just makes an empty directory
		 */
		if (error == GIT_ENOTFOUND) {
			FUNC2();
			return FUNC1(data, file);
		}

		return error;
	}

	/* TODO: Support checkout_strategy options.  Two circumstances:
	 * 1 - submodule already checked out, but we need to move the HEAD
	 *     to the new OID, or
	 * 2 - submodule not checked out and we should recursively check it out
	 *
	 * Checkout will not execute a pull on the submodule, but a clone
	 * command should probably be able to.  Do we need a submodule callback?
	 */

	return FUNC1(data, file);
}