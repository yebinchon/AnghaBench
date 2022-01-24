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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct strbuf *path)
{
	DIR *dir = FUNC5(path->buf);
	struct dirent *de;
	int origlen = path->len;

	if (!dir)
		FUNC2("cannot opendir '%s'", path->buf);
	while ((de = FUNC6(dir)) != NULL) {
		struct stat st;

		if (FUNC3(de->d_name))
			continue;

		FUNC8(path, '/');
		FUNC9(path, de->d_name);
		if (FUNC4(path->buf, &st))
			FUNC2("cannot lstat '%s'", path->buf);
		if (FUNC0(st.st_mode))
			FUNC12(path);
		else if (FUNC11(path->buf))
			FUNC2("cannot unlink '%s'", path->buf);
		FUNC10(path, origlen);
	}
	FUNC1(dir);
	if (FUNC7(path->buf))
		FUNC2("cannot rmdir '%s'", path->buf);
}