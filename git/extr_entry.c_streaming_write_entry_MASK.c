#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stream_filter {int dummy; } ;
struct stat {int dummy; } ;
struct checkout {int dummy; } ;
struct cache_entry {int /*<<< orphan*/  oid; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int,struct checkout const*,struct stat*) ; 
 int FUNC2 (char*,struct cache_entry const*,int) ; 
 int FUNC3 (int,int /*<<< orphan*/ *,struct stream_filter*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(const struct cache_entry *ce, char *path,
				 struct stream_filter *filter,
				 const struct checkout *state, int to_tempfile,
				 int *fstat_done, struct stat *statbuf)
{
	int result = 0;
	int fd;

	fd = FUNC2(path, ce, to_tempfile);
	if (fd < 0)
		return -1;

	result |= FUNC3(fd, &ce->oid, filter, 1);
	*fstat_done = FUNC1(fd, state, statbuf);
	result |= FUNC0(fd);

	if (result)
		FUNC4(path);
	return result;
}