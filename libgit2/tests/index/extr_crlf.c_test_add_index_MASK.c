#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct compare_data {char* member_0; char const* member_2; char const* member_3; char const* member_4; char* dirname; int /*<<< orphan*/ * member_1; } ;
struct TYPE_10__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  add_and_check_file ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 TYPE_1__ expected_fixture ; 
 int /*<<< orphan*/  g_index ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compare_data*) ; 
 char* FUNC12 () ; 

__attribute__((used)) static void FUNC13(const char *safecrlf, const char *autocrlf, const char *attrs)
{
	git_buf attrbuf = GIT_BUF_INIT;
	git_buf expected_dirname = GIT_BUF_INIT;
	git_buf sandboxname = GIT_BUF_INIT;
	git_buf reponame = GIT_BUF_INIT;
	struct compare_data compare_data = { FUNC12(), NULL, safecrlf, autocrlf, attrs };
	const char *c;

	FUNC9(&reponame, "crlf");

	FUNC9(&sandboxname, "autocrlf_");
	FUNC9(&sandboxname, autocrlf);

	FUNC9(&sandboxname, ",safecrlf_");
	FUNC9(&sandboxname, safecrlf);

	if (*attrs) {
		FUNC9(&sandboxname, ",");

		for (c = attrs; *c; c++) {
			if (*c == ' ')
				FUNC8(&sandboxname, ',');
			else if (*c == '=')
				FUNC8(&sandboxname, '_');
			else
				FUNC8(&sandboxname, *c);
		}

		FUNC7(&attrbuf, "* %s\n", attrs);
		FUNC2("crlf/.gitattributes", attrbuf.ptr);
	}

	FUNC4(g_repo, "core.safecrlf", safecrlf);
	FUNC4(g_repo, "core.autocrlf", autocrlf);

	FUNC3(FUNC10(g_index));

	FUNC6(&expected_dirname, "crlf_data", FUNC12());
	FUNC9(&expected_dirname, "_to_odb");

	FUNC6(&expected_fixture, expected_dirname.ptr, sandboxname.ptr);
	FUNC1(expected_fixture.ptr);

	compare_data.dirname = sandboxname.ptr;
	FUNC3(FUNC11(&reponame, 0, add_and_check_file, &compare_data));

	FUNC0(expected_fixture.ptr);
	FUNC5(&expected_fixture);

	FUNC5(&attrbuf);
	FUNC5(&expected_fixture);
	FUNC5(&expected_dirname);
	FUNC5(&sandboxname);
	FUNC5(&reponame);
}