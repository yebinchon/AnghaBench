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
struct stat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,int) ; 
 int FUNC1 (char const*,struct stat*) ; 

__attribute__((used)) static int FUNC2(const char *path, int len, struct stat *st, int skiplen)
{
	const char *slash = path + len;

	while (path < slash && *slash != '/')
		slash--;
	if (!FUNC0(path, slash - path, skiplen)) {
		errno = ENOENT;
		return -1;
	}
	return FUNC1(path, st);
}