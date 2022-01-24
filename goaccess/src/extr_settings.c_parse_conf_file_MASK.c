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
struct TYPE_2__ {char* iconfigfile; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  MAX_LINE_CONF ; 
 int /*<<< orphan*/  FUNC1 (int*,scalar_t__*,char*) ; 
 TYPE_1__ conf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 () ; 
 scalar_t__ FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t) ; 
 int nargc ; 
 scalar_t__ nargv ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*) ; 
 scalar_t__ FUNC11 (char*,char*) ; 
 size_t FUNC12 (char*,char*) ; 
 size_t FUNC13 (char*) ; 
 char* FUNC14 (char*,char*) ; 
 size_t FUNC15 (char*,char*) ; 
 char* FUNC16 (char*) ; 
 char* FUNC17 (scalar_t__) ; 
 char* FUNC18 (char*) ; 

int
FUNC19 (int *argc, char ***argv)
{
  char line[MAX_LINE_CONF + 1];
  char *path = NULL, *val, *opt, *p;
  FILE *file;
  int i, n = 0;
  size_t idx;

  /* assumes program name is on argv[0], though, it is not guaranteed */
  FUNC1 (&nargc, &nargv, FUNC18 ((char *) *argv[0]));

  /* determine which config file to open, default or custom */
  path = FUNC6 ();
  if (path == NULL)
    return ENOENT;

  /* could not open conf file, if so prompt conf dialog */
  if ((file = FUNC4 (path, "r")) == NULL) {
    FUNC5 (path);
    return ENOENT;
  }

  while (FUNC3 (line, sizeof line, file) != NULL) {
    while (line[0] == ' ' || line[0] == '\t')
      FUNC8 (line, line + 1, FUNC13 (line));
    n++;
    if (line[0] == '\n' || line[0] == '\r' || line[0] == '#')
      continue;

    /* key */
    idx = FUNC12 (line, " \t");
    if (FUNC13 (line) == idx)
      FUNC0 ("Malformed config key at line: %d", n);

    line[idx] = '\0';

    /* make old config options backwards compatible by
     * substituting underscores with dashes */
    while ((p = FUNC14 (line, "_")) != NULL)
      *p = '-';

    /* Ignore the following options when reading the config file */
    if (FUNC7 (line))
      continue;

    /* value */
    val = line + (idx + 1);
    idx = FUNC15 (val, " \t");
    if (FUNC13 (line) == idx)
      FUNC0 ("Malformed config value at line: %d", n);
    val = val + idx;
    val = FUNC16 (val);

    if (FUNC11 ("false", val) == 0)
      continue;

    /* set it as command line options */
    opt = FUNC17 (FUNC9 (NULL, 0, "--%s", line) + 1);
    FUNC10 (opt, "--%s", line);

    FUNC1 (&nargc, &nargv, opt);
    if (FUNC11 ("true", val) != 0)
      FUNC1 (&nargc, &nargv, FUNC18 (val));
  }

  /* give priority to command line arguments */
  for (i = 1; i < *argc; i++)
    FUNC1 (&nargc, &nargv, FUNC18 ((char *) (*argv)[i]));

  *argc = nargc;
  *argv = (char **) nargv;

  FUNC2 (file);

  if (conf.iconfigfile == NULL)
    conf.iconfigfile = FUNC18 (path);

  FUNC5 (path);
  return 0;
}