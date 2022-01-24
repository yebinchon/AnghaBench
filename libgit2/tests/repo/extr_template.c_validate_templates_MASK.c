#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char const* FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(git_repository *repo, const char *template_path)
{
	git_buf path = GIT_BUF_INIT, expected = GIT_BUF_INIT, actual = GIT_BUF_INIT;
	int filemode;

	FUNC2(FUNC6(&path, template_path, "description"));
	FUNC2(FUNC7(&expected, path.ptr));

	FUNC4(&path);

	FUNC2(FUNC6(&path, FUNC8(repo), "description"));
	FUNC2(FUNC7(&actual, path.ptr));

	FUNC1(expected.ptr, actual.ptr);

	filemode = FUNC3(repo, "core.filemode");

	FUNC0(
		template_path, FUNC8(repo),
		"hooks/update.sample", filemode);
	FUNC0(
		template_path, FUNC8(repo),
		"hooks/link.sample", filemode);
	FUNC0(
		template_path, FUNC8(repo),
		"hooks/.dotfile", filemode);

	FUNC5(&expected);
	FUNC5(&actual);
	FUNC5(&path);
}