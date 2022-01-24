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
 int BROWSER_TYPE_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char*,char*) ; 
 char* FUNC3 (char const*) ; 

int
FUNC4 (const char *agent)
{
  char type[BROWSER_TYPE_LEN];
  char *browser, *a;

  if (agent == NULL || *agent == '\0')
    return 0;

  if ((a = FUNC3 (agent), browser = FUNC2 (a, type)) != NULL)
    FUNC0 (browser);
  FUNC0 (a);

  return FUNC1 (type, "Crawlers") == 0 ? 1 : 0;
}