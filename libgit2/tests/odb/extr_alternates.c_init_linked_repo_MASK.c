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

/* Variables and functions */
 int /*<<< orphan*/  GIT_MKDIR_PATH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ destpath ; 
 int /*<<< orphan*/  file ; 
 TYPE_1__ filepath ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

__attribute__((used)) static void FUNC12(const char *path, const char *alternate)
{
	FUNC1(&destpath);
	FUNC1(&filepath);

	FUNC0(FUNC10(&repo, path, 1));
	FUNC0(FUNC8(&destpath, alternate, NULL));
	FUNC0(FUNC3(&destpath, destpath.ptr, "objects"));
	FUNC0(FUNC3(&filepath, FUNC11(repo), "objects/info"));
	FUNC0(FUNC7(filepath.ptr, 0755, GIT_MKDIR_PATH));
	FUNC0(FUNC3(&filepath, filepath.ptr , "alternates"));

	FUNC0(FUNC5(&file, FUNC2(&filepath), 0, 0666));
	FUNC6(&file, "%s\n", FUNC2(&destpath));
	FUNC0(FUNC4(&file));

	FUNC9(repo);
}