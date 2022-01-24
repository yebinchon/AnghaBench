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
struct string_list {int dummy; } ;
struct strbuf {int len; int /*<<< orphan*/ * buf; } ;
typedef  enum discovery_result { ____Placeholder_discovery_result } discovery_result ;
typedef  scalar_t__ dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  CEILING_DIRECTORIES_ENVIRONMENT ; 
 char* DEFAULT_GIT_DIR_ENVIRONMENT ; 
 int GIT_DIR_BARE ; 
 int GIT_DIR_DISCOVERED ; 
 int /*<<< orphan*/  GIT_DIR_ENVIRONMENT ; 
 int GIT_DIR_EXPLICIT ; 
 int GIT_DIR_HIT_CEILING ; 
 int GIT_DIR_HIT_MOUNT_POINT ; 
 int GIT_DIR_INVALID_GITFILE ; 
 int /*<<< orphan*/  PATH_SEP ; 
 int READ_GITFILE_ERR_NOT_A_FILE ; 
 int READ_GITFILE_ERR_STAT_FAILED ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 int /*<<< orphan*/  canonicalize_ceiling_entry ; 
 int /*<<< orphan*/  FUNC0 (struct string_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct string_list*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct string_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct string_list*,char const*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum discovery_result FUNC14(struct strbuf *dir,
							  struct strbuf *gitdir,
							  int die_on_error)
{
	const char *env_ceiling_dirs = FUNC2(CEILING_DIRECTORIES_ENVIRONMENT);
	struct string_list ceiling_dirs = STRING_LIST_INIT_DUP;
	const char *gitdirenv;
	int ceil_offset = -1, min_offset = FUNC7(dir->buf);
	dev_t current_device = 0;
	int one_filesystem = 1;

	/*
	 * If GIT_DIR is set explicitly, we're not going
	 * to do any discovery, but we still do repository
	 * validation.
	 */
	gitdirenv = FUNC2(GIT_DIR_ENVIRONMENT);
	if (gitdirenv) {
		FUNC10(gitdir, gitdirenv);
		return GIT_DIR_EXPLICIT;
	}

	if (env_ceiling_dirs) {
		int empty_entry_found = 0;

		FUNC13(&ceiling_dirs, env_ceiling_dirs, PATH_SEP, -1);
		FUNC0(&ceiling_dirs, 0,
				   canonicalize_ceiling_entry, &empty_entry_found);
		ceil_offset = FUNC6(dir->buf, &ceiling_dirs);
		FUNC12(&ceiling_dirs, 0);
	}

	if (ceil_offset < 0)
		ceil_offset = min_offset - 2;

	if (min_offset && min_offset == dir->len &&
	    !FUNC4(dir->buf[min_offset - 1])) {
		FUNC9(dir, '/');
		min_offset++;
	}

	/*
	 * Test in the following order (relative to the dir):
	 * - .git (file containing "gitdir: <path>")
	 * - .git/
	 * - ./ (bare)
	 * - ../.git
	 * - ../.git/
	 * - ../ (bare)
	 * - ../../.git
	 *   etc.
	 */
	one_filesystem = !FUNC3("GIT_DISCOVERY_ACROSS_FILESYSTEM", 0);
	if (one_filesystem)
		current_device = FUNC1(dir->buf, NULL, 0);
	for (;;) {
		int offset = dir->len, error_code = 0;

		if (offset > min_offset)
			FUNC9(dir, '/');
		FUNC10(dir, DEFAULT_GIT_DIR_ENVIRONMENT);
		gitdirenv = FUNC8(dir->buf, die_on_error ?
						NULL : &error_code);
		if (!gitdirenv) {
			if (die_on_error ||
			    error_code == READ_GITFILE_ERR_NOT_A_FILE) {
				/* NEEDSWORK: fail if .git is not file nor dir */
				if (FUNC5(dir->buf))
					gitdirenv = DEFAULT_GIT_DIR_ENVIRONMENT;
			} else if (error_code != READ_GITFILE_ERR_STAT_FAILED)
				return GIT_DIR_INVALID_GITFILE;
		}
		FUNC11(dir, offset);
		if (gitdirenv) {
			FUNC10(gitdir, gitdirenv);
			return GIT_DIR_DISCOVERED;
		}

		if (FUNC5(dir->buf)) {
			FUNC10(gitdir, ".");
			return GIT_DIR_BARE;
		}

		if (offset <= min_offset)
			return GIT_DIR_HIT_CEILING;

		while (--offset > ceil_offset && !FUNC4(dir->buf[offset]))
			; /* continue */
		if (offset <= ceil_offset)
			return GIT_DIR_HIT_CEILING;

		FUNC11(dir, offset > min_offset ?  offset : min_offset);
		if (one_filesystem &&
		    current_device != FUNC1(dir->buf, NULL, offset))
			return GIT_DIR_HIT_MOUNT_POINT;
	}
}