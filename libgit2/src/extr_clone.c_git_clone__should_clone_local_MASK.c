#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ git_clone_local_t ;
struct TYPE_5__ {char* ptr; } ;
typedef  TYPE_1__ git_buf ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 scalar_t__ GIT_CLONE_LOCAL_AUTO ; 
 scalar_t__ GIT_CLONE_NO_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

int FUNC4(const char *url_or_path, git_clone_local_t local)
{
	git_buf fromurl = GIT_BUF_INIT;
	const char *path = url_or_path;
	bool is_url, is_local;

	if (local == GIT_CLONE_NO_LOCAL)
		return 0;

	if ((is_url = FUNC2(url_or_path)) != 0) {
		if (FUNC1(&fromurl, url_or_path) < 0) {
			is_local = -1;
			goto done;
		}

		path = fromurl.ptr;
	}

	is_local = (!is_url || local != GIT_CLONE_LOCAL_AUTO) &&
		FUNC3(path);

done:
	FUNC0(&fromurl);
	return is_local;
}