#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* gitpath; char* commonpath; } ;
typedef  TYPE_1__ refdb_fs_backend ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_SYMREF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 

__attribute__((used)) static int FUNC10(
	git_reference **out,
	refdb_fs_backend *backend,
	const char *ref_name)
{
	git_buf ref_file = GIT_BUF_INIT;
	int error = 0;
	const char *ref_dir;

	if (out)
		*out = NULL;

	if (FUNC6(ref_name))
		ref_dir = backend->gitpath;
	else
		ref_dir = backend->commonpath;

	if ((error = FUNC9(&ref_file, ref_dir, ref_name)) < 0)
		/* cannot read loose ref file - gah */;
	else if (FUNC0(FUNC1(&ref_file), GIT_SYMREF) == 0) {
		const char *target;

		FUNC3(&ref_file);

		if (!(target = FUNC8(&ref_file)))
			error = -1;
		else if (out != NULL)
			*out = FUNC5(ref_name, target);
	} else {
		git_oid oid;

		if (!(error = FUNC7(&oid, ref_name, &ref_file)) &&
			out != NULL)
			*out = FUNC4(ref_name, &oid, NULL);
	}

	FUNC2(&ref_file);
	return error;
}