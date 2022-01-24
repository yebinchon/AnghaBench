#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct compare_data {char const* member_1; char const* member_2; char* dirname; int /*<<< orphan*/ * member_0; } ;
struct TYPE_13__ {int /*<<< orphan*/  checkout_strategy; } ;
typedef  TYPE_1__ git_checkout_options ;
struct TYPE_14__ {char* ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_CHECKOUT_FORCE ; 
 TYPE_1__ GIT_CHECKOUT_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  compare_file ; 
 TYPE_2__ expected_fixture ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char const) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct compare_data*) ; 
 char* systype ; 

__attribute__((used)) static void FUNC12(const char *autocrlf, const char *attrs)
{
	git_buf attrbuf = GIT_BUF_INIT;
	git_buf expected_dirname = GIT_BUF_INIT;
	git_buf systype_and_direction = GIT_BUF_INIT;
	git_buf sandboxname = GIT_BUF_INIT;
	git_buf reponame = GIT_BUF_INIT;
	git_checkout_options opts = GIT_CHECKOUT_OPTIONS_INIT;
	struct compare_data compare_data = { NULL, autocrlf, attrs };
	const char *c;

	FUNC3(FUNC9(&reponame, "crlf"));

	FUNC3(FUNC9(&systype_and_direction, systype));
	FUNC3(FUNC9(&systype_and_direction, "_to_workdir"));

	FUNC3(FUNC9(&sandboxname, "autocrlf_"));
	FUNC3(FUNC9(&sandboxname, autocrlf));

	if (*attrs) {
		FUNC3(FUNC9(&sandboxname, ","));

		for (c = attrs; *c; c++) {
			if (*c == ' ')
				FUNC3(FUNC8(&sandboxname, ','));
			else if (*c == '=')
				FUNC3(FUNC8(&sandboxname, '_'));
			else
				FUNC3(FUNC8(&sandboxname, *c));
		}

		FUNC3(FUNC7(&attrbuf, "* %s\n", attrs));
		FUNC2("crlf/.gitattributes", attrbuf.ptr);
	}

	FUNC4(g_repo, "core.autocrlf", autocrlf);

	FUNC3(FUNC6(&expected_dirname, systype_and_direction.ptr, sandboxname.ptr));
	FUNC3(FUNC6(&expected_fixture, "crlf_data", expected_dirname.ptr));
	FUNC1(expected_fixture.ptr);

	opts.checkout_strategy = GIT_CHECKOUT_FORCE;
	FUNC3(FUNC10(g_repo, &opts));

	compare_data.dirname = sandboxname.ptr;
	FUNC3(FUNC11(&reponame, 0, compare_file, &compare_data));

	FUNC0(expected_fixture.ptr);
	FUNC5(&expected_fixture);

	FUNC5(&attrbuf);
	FUNC5(&expected_fixture);
	FUNC5(&expected_dirname);
	FUNC5(&sandboxname);
	FUNC5(&systype_and_direction);
	FUNC5(&reponame);
}