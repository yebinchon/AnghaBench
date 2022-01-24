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
struct tr2_dst {int too_many_files; int /*<<< orphan*/  fd; } ;
struct strbuf {int len; int /*<<< orphan*/ * buf; } ;
struct stat {int dummy; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 char const* DISCARD_SENTINEL_NAME ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_WRONLY ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  TR2_SYSENV_MAX_FILES ; 
 int FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 char* FUNC11 (int /*<<< orphan*/ ) ; 
 int tr2env_max_files ; 

__attribute__((used)) static int FUNC12(struct tr2_dst *dst, const char *tgt_prefix)
{
	int file_count = 0, max_files = 0, ret = 0;
	const char *max_files_var;
	DIR *dirp;
	struct strbuf path = STRBUF_INIT, sentinel_path = STRBUF_INIT;
	struct stat statbuf;

	/* Get the config or envvar and decide if we should continue this check */
	max_files_var = FUNC11(TR2_SYSENV_MAX_FILES);
	if (max_files_var && *max_files_var && ((max_files = FUNC0(max_files_var)) >= 0))
		tr2env_max_files = max_files;

	if (!tr2env_max_files) {
		ret = 0;
		goto cleanup;
	}

	FUNC9(&path, tgt_prefix);
	if (!FUNC2(path.buf[path.len - 1])) {
		FUNC8(&path, '/');
	}

	/* check sentinel */
	FUNC7(&sentinel_path, &path);
	FUNC9(&sentinel_path, DISCARD_SENTINEL_NAME);
	if (!FUNC6(sentinel_path.buf, &statbuf)) {
		ret = 1;
		goto cleanup;
	}

	/* check file count */
	dirp = FUNC4(path.buf);
	while (file_count < tr2env_max_files && dirp && FUNC5(dirp))
		file_count++;
	if (dirp)
		FUNC1(dirp);

	if (file_count >= tr2env_max_files) {
		dst->too_many_files = 1;
		dst->fd = FUNC3(sentinel_path.buf, O_WRONLY | O_CREAT | O_EXCL, 0666);
		ret = -1;
		goto cleanup;
	}

cleanup:
	FUNC10(&path);
	FUNC10(&sentinel_path);
	return ret;
}