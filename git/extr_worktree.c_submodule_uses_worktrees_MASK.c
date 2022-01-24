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
struct strbuf {int /*<<< orphan*/  buf; scalar_t__ len; } ;
struct repository_format {scalar_t__ version; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 struct repository_format REPOSITORY_FORMAT_INIT ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct repository_format*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char*) ; 
 char* FUNC4 (char const*,char*,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct repository_format*,int /*<<< orphan*/ ) ; 
 struct dirent* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,scalar_t__) ; 
 scalar_t__ FUNC12 (char*) ; 

int FUNC13(const char *path)
{
	char *submodule_gitdir;
	struct strbuf sb = STRBUF_INIT;
	DIR *dir;
	struct dirent *d;
	int ret = 0;
	struct repository_format format = REPOSITORY_FORMAT_INIT;

	submodule_gitdir = FUNC4(path, "%s", "");
	if (!submodule_gitdir)
		return 0;

	/* The env would be set for the superproject. */
	FUNC3(&sb, submodule_gitdir);
	FUNC2(submodule_gitdir);

	/*
	 * The check below is only known to be good for repository format
	 * version 0 at the time of writing this code.
	 */
	FUNC9(&sb, "/config");
	FUNC7(&format, sb.buf);
	if (format.version != 0) {
		FUNC10(&sb);
		FUNC0(&format);
		return 1;
	}
	FUNC0(&format);

	/* Replace config by worktrees. */
	FUNC11(&sb, sb.len - FUNC12("config"));
	FUNC9(&sb, "worktrees");

	/* See if there is any file inside the worktrees directory. */
	dir = FUNC6(sb.buf);
	FUNC10(&sb);

	if (!dir)
		return 0;

	while ((d = FUNC8(dir)) != NULL) {
		if (FUNC5(d->d_name))
			continue;

		ret = 1;
		break;
	}
	FUNC1(dir);
	return ret;
}