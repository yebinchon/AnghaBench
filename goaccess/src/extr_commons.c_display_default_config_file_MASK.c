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
 char* ERR_NODEF_CONF_FILE ; 
 char* ERR_NODEF_CONF_FILE_DESC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC3 (void)
{
  char *path = FUNC2 ();

  if (!path) {
    FUNC0 (stdout, "%s\n", ERR_NODEF_CONF_FILE);
    FUNC0 (stdout, "%s `-p /path/goaccess.conf`\n", ERR_NODEF_CONF_FILE_DESC);
  } else {
    FUNC0 (stdout, "%s\n", path);
    FUNC1 (path);
  }
}