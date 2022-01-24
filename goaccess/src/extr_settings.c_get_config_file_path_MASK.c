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
struct TYPE_2__ {char* iconfigfile; scalar_t__ load_global_config; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 () ; 
 char* FUNC5 () ; 
 char* FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

char *
FUNC8 (void)
{
  char *upath = NULL, *rpath = NULL;
  FILE *file;

  /* determine which config file to open, default or custom */
  if (conf.iconfigfile != NULL) {
    rpath = FUNC6 (conf.iconfigfile, NULL);
    if (rpath == NULL)
      FUNC0 ("Unable to open the specified config file. %s", FUNC7 (errno));
    return rpath;
  }

  /* attempt to use the user's config file */
  upath = FUNC5 ();
  rpath = FUNC6 (upath, NULL);
  if (upath) {
    FUNC3 (upath);
  }

  /* otherwise, fallback to global config file */
  if ((file = FUNC2 (rpath, "r")) == NULL && conf.load_global_config) {
    upath = FUNC4 ();
    rpath = FUNC6 (upath, NULL);
    if (upath) {
      FUNC3 (upath);
    }
  } else {
    FUNC1 (file);
  }

  return rpath;
}