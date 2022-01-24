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
struct TYPE_7__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 char const* fixture_templates ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char,char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 

__attribute__((used)) static void FUNC13(const char *name, bool setup_globally)
{
	git_buf path = GIT_BUF_INIT;

	FUNC0("template");
	if (FUNC12(name, "template"))
		FUNC3(FUNC10("template", name));

	fixture_templates = name;

	/*
	 * Create a symlink from link.sample to update.sample if the filesystem
	 * supports it.
	 */
	FUNC2(FUNC8(&path, '/', name, "hooks", "link.sample"));
#ifdef GIT_WIN32
	cl_git_mkfile(path.ptr, "#!/bin/sh\necho hello, world\n");
#else
	FUNC3(FUNC11("update.sample", path.ptr));
#endif

	FUNC6(&path);

	/* Create a file starting with a dot */
	FUNC2(FUNC8(&path, '/', name, "hooks", ".dotfile"));
	FUNC1(path.ptr, "something\n");

	FUNC6(&path);

	if (setup_globally) {
		FUNC2(FUNC9(&path, FUNC4(), name));
		FUNC5("tmp_global_path", "init.templatedir", path.ptr);
	}

	FUNC7(&path);
}