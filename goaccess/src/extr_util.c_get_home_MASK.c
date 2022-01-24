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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 
 char* FUNC4 (scalar_t__) ; 

char *
FUNC5 (void)
{
  char *user_home = NULL, *path = NULL;

  user_home = FUNC1 ("HOME");
  if (user_home == NULL)
    FUNC0 ("Unable to determine the HOME environment variable.");

  path = FUNC4 (FUNC2 (NULL, 0, "%s/.goaccessrc", user_home) + 1);
  FUNC3 (path, "%s/.goaccessrc", user_home);

  return path;
}