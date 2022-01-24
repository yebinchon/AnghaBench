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
 int /*<<< orphan*/  LC_ALL ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  char *loc_ctype;

  FUNC2 (LC_ALL, "");
  FUNC0 (PACKAGE, LOCALEDIR);
  FUNC3 (PACKAGE);

  loc_ctype = FUNC1 ("LC_CTYPE");
  if (loc_ctype != NULL)
    FUNC2 (LC_CTYPE, loc_ctype);
  else if ((loc_ctype = FUNC1 ("LC_ALL")))
    FUNC2 (LC_CTYPE, loc_ctype);
  else
    FUNC2 (LC_CTYPE, "");
}