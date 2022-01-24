#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_10__ {scalar_t__ depth; int /*<<< orphan*/  level; int /*<<< orphan*/  repo; int /*<<< orphan*/  entries; TYPE_1__* file; } ;
typedef  TYPE_2__ config_file_parse_data ;
struct TYPE_11__ {void* path; int /*<<< orphan*/  includes; } ;
typedef  TYPE_3__ config_file ;
struct TYPE_9__ {int /*<<< orphan*/  includes; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(config_file_parse_data *parse_data, const char *file)
{
	config_file *include;
	git_buf path = GIT_BUF_INIT;
	char *dir;
	int result;

	if (!file)
		return 0;

	if ((result = FUNC7(&path, parse_data->file->path)) < 0)
		return result;

	dir = FUNC5(&path);
	result = FUNC8(&path, dir, file);
	FUNC2(dir);

	if (result < 0)
		return result;

	include = FUNC3(parse_data->file->includes);
	FUNC0(include);
	FUNC9(include, 0, sizeof(*include));
	FUNC4(include->includes);
	include->path = FUNC5(&path);

	result = FUNC1(parse_data->entries, parse_data->repo, include,
				  parse_data->level, parse_data->depth+1);

	if (result == GIT_ENOTFOUND) {
		FUNC6();
		result = 0;
	}

	return result;
}