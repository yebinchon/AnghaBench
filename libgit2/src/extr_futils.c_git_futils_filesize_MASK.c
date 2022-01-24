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
struct stat {int st_size; } ;
typedef  int git_off_t ;
typedef  int /*<<< orphan*/  git_file ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct stat*) ; 

git_off_t FUNC2(git_file fd)
{
	struct stat sb;

	if (FUNC1(fd, &sb)) {
		FUNC0(GIT_ERROR_OS, "failed to stat file descriptor");
		return -1;
	}

	return sb.st_size;
}