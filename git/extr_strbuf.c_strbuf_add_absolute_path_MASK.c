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
struct strbuf {size_t len; int /*<<< orphan*/ * buf; } ;
struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct stat*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char const*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 char* FUNC9 () ; 

void FUNC10(struct strbuf *sb, const char *path)
{
	if (!*path)
		FUNC0("The empty string is not a valid path");
	if (!FUNC3(path)) {
		struct stat cwd_stat, pwd_stat;
		size_t orig_len = sb->len;
		char *cwd = FUNC9();
		char *pwd = FUNC2("PWD");
		if (pwd && FUNC8(pwd, cwd) &&
		    !FUNC5(cwd, &cwd_stat) &&
		    (cwd_stat.st_dev || cwd_stat.st_ino) &&
		    !FUNC5(pwd, &pwd_stat) &&
		    pwd_stat.st_dev == cwd_stat.st_dev &&
		    pwd_stat.st_ino == cwd_stat.st_ino)
			FUNC7(sb, pwd);
		else
			FUNC7(sb, cwd);
		if (sb->len > orig_len && !FUNC4(sb->buf[sb->len - 1]))
			FUNC6(sb, '/');
		FUNC1(cwd);
	}
	FUNC7(sb, path);
}