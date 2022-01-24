#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  stat_calls; } ;
struct TYPE_7__ {int /*<<< orphan*/  target_directory; } ;
struct TYPE_9__ {TYPE_2__ perfdata; TYPE_1__ opts; } ;
typedef  TYPE_3__ checkout_data ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 unsigned int GIT_MKDIR_SKIP_LAST ; 
 int /*<<< orphan*/  GIT_RMDIR_REMOVE_FILES ; 
 unsigned int MKDIR_NORMAL ; 
 unsigned int MKDIR_REMOVE_EXISTING ; 
 int FUNC0 (TYPE_3__*,char const*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,struct stat*) ; 
 int FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC6(
	checkout_data *data, const char *path, unsigned int mode)
{
	struct stat st;
	bool remove_existing = FUNC5(data);
	unsigned int flags =
		(remove_existing ? MKDIR_REMOVE_EXISTING : MKDIR_NORMAL) |
		GIT_MKDIR_SKIP_LAST;
	int error;

	if ((error = FUNC0(
			data, path, data->opts.target_directory, mode, flags)) < 0)
		return error;

	if (remove_existing) {
		data->perfdata.stat_calls++;

		if (FUNC4(path, &st) == 0) {

			/* Some file, symlink or folder already exists at this name.
			 * We would have removed it in remove_the_old unless we're on
			 * a case inensitive filesystem (or the user has asked us not
			 * to).  Remove the similarly named file to write the new.
			 */
			error = FUNC3(path, NULL, GIT_RMDIR_REMOVE_FILES);
		} else if (errno != ENOENT) {
			FUNC2(GIT_ERROR_OS, "failed to stat '%s'", path);
			return GIT_EEXISTS;
		} else {
			FUNC1();
		}
	}

	return error;
}