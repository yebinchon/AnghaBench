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
struct strbuf {int dummy; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct ref_lock {int /*<<< orphan*/  lk; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*) ; 
 size_t FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(struct ref_lock *lock)
{
	char *path = FUNC3(&lock->lk);
	struct stat st;

	if (!FUNC4(path, &st) && FUNC0(st.st_mode)) {
		/*
		 * There is a directory at the path we want to rename
		 * the lockfile to. Hopefully it is empty; try to
		 * delete it.
		 */
		size_t len = FUNC8(path);
		struct strbuf sb_path = STRBUF_INIT;

		FUNC6(&sb_path, path, len, len);

		/*
		 * If this fails, commit_lock_file() will also fail
		 * and will report the problem.
		 */
		FUNC5(&sb_path);
		FUNC7(&sb_path);
	} else {
		FUNC2(path);
	}

	if (FUNC1(&lock->lk))
		return -1;
	return 0;
}