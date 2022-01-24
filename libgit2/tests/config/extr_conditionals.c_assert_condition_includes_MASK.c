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
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_9__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC13(const char *keyword, const char *path, bool expected)
{
	git_buf buf = GIT_BUF_INIT;
	git_config *cfg;

	FUNC3(FUNC8(&buf, "[includeIf \"%s:%s\"]\n", keyword, path));
	FUNC3(FUNC9(&buf, "path = other\n"));

	FUNC2("empty_standard_repo/.git/config", buf.ptr);
	FUNC2("empty_standard_repo/.git/other", "[foo]\nbar=baz\n");
	_repo = FUNC4();

	FUNC3(FUNC12(&cfg, _repo));

	if (expected) {
		FUNC5(&buf);
		FUNC3(FUNC11(&buf, cfg, "foo.bar"));
		FUNC0("baz", FUNC6(&buf));
	} else {
		FUNC1(GIT_ENOTFOUND,
				 FUNC11(&buf, cfg, "foo.bar"));
	}

	FUNC7(&buf);
	FUNC10(cfg);
}