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
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_5__ {int strategy; int /*<<< orphan*/  repo; } ;
typedef  TYPE_1__ checkout_data ;

/* Variables and functions */
 int GIT_CHECKOUT_ALLOW_CONFLICTS ; 
 int GIT_EEXISTS ; 
 int GIT_ENOTFOUND ; 
 scalar_t__ FUNC0 (unsigned int) ; 
 int FUNC1 (TYPE_1__*,struct stat*,int /*<<< orphan*/ *,char const*,char const*,unsigned int) ; 
 int FUNC2 (TYPE_1__*,struct stat*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(
	checkout_data *data,
	const git_oid *oid,
	const char *full_path,
	const char *hint_path,
	unsigned int mode,
	struct stat *st)
{
	int error = 0;
	git_blob *blob;

	if ((error = FUNC4(&blob, data->repo, oid)) < 0)
		return error;

	if (FUNC0(mode))
		error = FUNC2(data, st, blob, full_path);
	else
		error = FUNC1(data, st, blob, full_path, hint_path, mode);

	FUNC3(blob);

	/* if we try to create the blob and an existing directory blocks it from
	 * being written, then there must have been a typechange conflict in a
	 * parent directory - suppress the error and try to continue.
	 */
	if ((data->strategy & GIT_CHECKOUT_ALLOW_CONFLICTS) != 0 &&
		(error == GIT_ENOTFOUND || error == GIT_EEXISTS))
	{
		FUNC5();
		error = 0;
	}

	return error;
}