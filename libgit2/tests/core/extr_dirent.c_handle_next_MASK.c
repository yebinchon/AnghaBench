#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  names; } ;
typedef  TYPE_1__ walk_data ;
typedef  int /*<<< orphan*/  git_path_diriter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static void FUNC6(git_path_diriter *diriter, walk_data *walk)
{
	const char *fullpath, *filename;
	size_t fullpath_len, filename_len;

	FUNC2(FUNC4(&fullpath, &fullpath_len, diriter));
	FUNC2(FUNC3(&filename, &filename_len, diriter));

	FUNC1(fullpath, "sub/", 4);
	FUNC0(fullpath+4, filename);

	FUNC5(walk->names, fullpath);
}