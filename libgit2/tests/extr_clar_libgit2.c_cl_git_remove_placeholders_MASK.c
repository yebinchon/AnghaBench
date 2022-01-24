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
struct TYPE_3__ {char const* filename; int /*<<< orphan*/  filename_len; } ;
typedef  TYPE_1__ remove_data ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5(const char *directory_path, const char *filename)
{
	int error;
	remove_data data;
	git_buf buffer = GIT_BUF_INIT;

	if (FUNC2(directory_path) == false)
		return -1;

	if (FUNC1(&buffer, directory_path) < 0)
		return -1;

	data.filename = filename;
	data.filename_len = FUNC4(filename);

	error = FUNC3(&data, &buffer);

	FUNC0(&buffer);

	return error;
}