#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int browsers_hash_idx; void* user_browsers_hash; int /*<<< orphan*/  browsers_file; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int MAX_CUSTOM_BROWSERS ; 
 int /*<<< orphan*/  MAX_LINE_BROWSERS ; 
 int /*<<< orphan*/ ** browsers ; 
 void* browsers_hash ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 void* FUNC10 (int) ; 

void
FUNC11 (void)
{
  char line[MAX_LINE_BROWSERS + 1];
  FILE *file;
  int n = 0;
  size_t i, len = FUNC0 (browsers);

  browsers_hash = FUNC10 (FUNC0 (browsers) * sizeof (char **));
  /* load hash from the browser's array (default)  */
  for (i = 0; i < len; ++i) {
    FUNC7 (browsers_hash, i, browsers[i][0], browsers[i][1]);
  }

  if (!conf.browsers_file)
    return;

  /* could not open browsers file */
  if ((file = FUNC4 (conf.browsers_file, "r")) == NULL)
    FUNC1 ("Unable to open browser's file: %s", FUNC8 (errno));

  conf.user_browsers_hash = FUNC10 (MAX_CUSTOM_BROWSERS * sizeof (char **));
  /* load hash from the user's given browsers file  */
  while (FUNC3 (line, sizeof line, file) != NULL) {
    while (line[0] == ' ' || line[0] == '\t')
      FUNC5 (line, line + 1, FUNC9 (line));
    n++;

    if (line[0] == '\n' || line[0] == '\r' || line[0] == '#')
      continue;
    if (conf.browsers_hash_idx >= MAX_CUSTOM_BROWSERS)
      FUNC1 ("Maximum number of custom browsers has been reached");
    FUNC6 (conf.user_browsers_hash, line, n);
  }
  FUNC2 (file);
}