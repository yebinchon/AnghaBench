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
typedef  int /*<<< orphan*/  line ;
struct TYPE_9__ {char const* ptr; } ;
typedef  TYPE_1__ git_buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  F_OK ; 
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 

void FUNC19(const char *workdir)
{
	git_buf in_f = GIT_BUF_INIT, out_f = GIT_BUF_INIT, path = GIT_BUF_INIT;
	FILE *in, *out;
	char line[256];

	FUNC1(FUNC10(&in_f, workdir, "gitmodules"));
	FUNC1(FUNC10(&out_f, workdir, ".gitmodules"));

	FUNC0((in  = FUNC5(in_f.ptr, "rb")) != NULL);
	FUNC0((out = FUNC5(out_f.ptr, "wb")) != NULL);

	while (FUNC4(line, sizeof(line), in) != NULL) {
		char *scan = line;

		while (*scan == ' ' || *scan == '\t') scan++;

		/* rename .gitted -> .git in submodule directories */
		if (FUNC8(scan, "path =") == 0) {
			scan += FUNC18("path =");
			while (*scan == ' ') scan++;

			FUNC10(&path, workdir, scan);
			FUNC13(&path);
			FUNC10(&path, path.ptr, ".gitted");

			if (!FUNC11(&path) && FUNC15(path.ptr, F_OK) == 0) {
				FUNC10(&out_f, workdir, scan);
				FUNC13(&out_f);
				FUNC10(&out_f, out_f.ptr, ".git");

				if (!FUNC11(&out_f))
					FUNC16(path.ptr, out_f.ptr);
			}
		}

		/* copy non-"url =" lines verbatim */
		if (FUNC8(scan, "url =") != 0) {
			FUNC6(line, out);
			continue;
		}

		/* convert relative URLs in "url =" lines */
		scan += FUNC18("url =");
		while (*scan == ' ') scan++;

		if (*scan == '.') {
			FUNC10(&path, workdir, scan);
			FUNC13(&path);
		} else if (!*scan || *scan == '\n') {
			FUNC10(&path, workdir, "../testrepo.git");
		} else {
			FUNC6(line, out);
			continue;
		}

		FUNC14(&path, path.ptr, NULL);
		FUNC12(&path, '\n');
		FUNC0(!FUNC11(&path));

		FUNC7(line, scan - line, sizeof(char), out);
		FUNC6(path.ptr, out);
	}

	FUNC3(in);
	FUNC3(out);

	FUNC2(FUNC17(in_f.ptr));

	FUNC9(&in_f);
	FUNC9(&out_f);
	FUNC9(&path);
}