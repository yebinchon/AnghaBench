#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  git_path_iconv_t ;
struct TYPE_9__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int GIT_PATH_DIR_PRECOMPOSE_UNICODE ; 
 int /*<<< orphan*/  GIT_PATH_ICONV_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char const*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC15 (int /*<<< orphan*/ *) ; 
 size_t FUNC16 (char const*) ; 

int FUNC17(
	git_buf *path,
	uint32_t flags,
	int (*fn)(void *, git_buf *),
	void *arg)
{
	int error = 0;
	ssize_t wd_len;
	DIR *dir;
	struct dirent *de;

#ifdef GIT_USE_ICONV
	git_path_iconv_t ic = GIT_PATH_ICONV_INIT;
#endif

	FUNC0(flags);

	if (FUNC13(path) < 0)
		return -1;

	wd_len = FUNC2(path);

	if ((dir = FUNC14(path->ptr)) == NULL) {
		FUNC7(GIT_ERROR_OS, "failed to open directory '%s'", path->ptr);
		if (errno == ENOENT)
			return GIT_ENOTFOUND;

		return -1;
	}

#ifdef GIT_USE_ICONV
	if ((flags & GIT_PATH_DIR_PRECOMPOSE_UNICODE) != 0)
		(void)git_path_iconv_init_precompose(&ic);
#endif

	while ((de = FUNC15(dir)) != NULL) {
		const char *de_path = de->d_name;
		size_t de_len = FUNC16(de_path);

		if (FUNC12(de_path))
			continue;

#ifdef GIT_USE_ICONV
		if ((error = git_path_iconv(&ic, &de_path, &de_len)) < 0)
			break;
#endif

		if ((error = FUNC3(path, de_path, de_len)) < 0)
			break;

		FUNC5();
		error = fn(arg, path);

		FUNC4(path, wd_len); /* restore path */

		/* Only set our own error if the callback did not set one already */
		if (error != 0) {
			if (!FUNC6())
				FUNC8(error);

			break;
		}
	}

	FUNC1(dir);

#ifdef GIT_USE_ICONV
	git_path_iconv_clear(&ic);
#endif

	return error;
}