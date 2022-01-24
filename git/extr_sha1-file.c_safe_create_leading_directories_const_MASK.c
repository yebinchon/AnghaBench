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
typedef  enum scld_error { ____Placeholder_scld_error } scld_error ;

/* Variables and functions */
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 

enum scld_error FUNC3(const char *path)
{
	int save_errno;
	/* path points to cache entries, so xstrdup before messing with it */
	char *buf = FUNC2(path);
	enum scld_error result = FUNC1(buf);

	save_errno = errno;
	FUNC0(buf);
	errno = save_errno;
	return result;
}