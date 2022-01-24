#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
typedef  int git_dir_flag ;
struct TYPE_6__ {char* ptr; int size; } ;
struct TYPE_5__ {char* path; char* basename; int is_dir; TYPE_2__ full; } ;
typedef  TYPE_1__ git_attr_path ;

/* Variables and functions */
#define  GIT_DIR_FLAG_FALSE 130 
#define  GIT_DIR_FLAG_TRUE 129 
#define  GIT_DIR_FLAG_UNKNOWN 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char const*,char const*,int*) ; 
 char* FUNC3 (char*,char) ; 

int FUNC4(
	git_attr_path *info, const char *path, const char *base, git_dir_flag dir_flag)
{
	ssize_t root;

	/* build full path as best we can */
	FUNC0(&info->full, 0);

	if (FUNC2(&info->full, path, base, &root) < 0)
		return -1;

	info->path = info->full.ptr + root;

	/* remove trailing slashes */
	while (info->full.size > 0) {
		if (info->full.ptr[info->full.size - 1] != '/')
			break;
		info->full.size--;
	}
	info->full.ptr[info->full.size] = '\0';

	/* skip leading slashes in path */
	while (*info->path == '/')
		info->path++;

	/* find trailing basename component */
	info->basename = FUNC3(info->path, '/');
	if (info->basename)
		info->basename++;
	if (!info->basename || !*info->basename)
		info->basename = info->path;

	switch (dir_flag)
	{
	case GIT_DIR_FLAG_FALSE:
		info->is_dir = 0;
		break;

	case GIT_DIR_FLAG_TRUE:
		info->is_dir = 1;
		break;

	case GIT_DIR_FLAG_UNKNOWN:
	default:
		info->is_dir = (int)FUNC1(info->full.ptr);
		break;
	}

	return 0;
}