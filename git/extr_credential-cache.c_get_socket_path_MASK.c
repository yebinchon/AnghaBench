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
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct stat*) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*,char*) ; 

__attribute__((used)) static char *FUNC6(void)
{
	struct stat sb;
	char *old_dir, *socket;
	old_dir = FUNC1("~/.git-credential-cache", 0);
	if (old_dir && !FUNC3(old_dir, &sb) && FUNC0(sb.st_mode))
		socket = FUNC5("%s/socket", old_dir);
	else
		socket = FUNC4("credential/socket");
	FUNC2(old_dir);
	return socket;
}