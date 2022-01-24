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
typedef  int /*<<< orphan*/  mode_t ;

/* Variables and functions */
 int GIT_MKDIR_PATH ; 
 int GIT_MKDIR_SKIP_LAST ; 
 int GIT_MKDIR_VERIFY_DIR ; 
 int FUNC0 (char const*,int /*<<< orphan*/  const,int) ; 

int FUNC1(const char *file_path, const mode_t mode)
{
	return FUNC0(
		file_path, mode,
		GIT_MKDIR_PATH | GIT_MKDIR_SKIP_LAST | GIT_MKDIR_VERIFY_DIR);
}