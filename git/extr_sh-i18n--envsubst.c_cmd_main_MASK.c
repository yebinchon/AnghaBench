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
 scalar_t__ EBADF ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  EXIT_SUCCESS ; 
 int /*<<< orphan*/  all_variables ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int
FUNC10 (int argc, const char *argv[])
{
  /* Default values for command line options.  */
  /* unsigned short int show_variables = 0; */

  FUNC9("sh-i18n--envsubst");

  switch (argc)
	{
	case 1:
	  FUNC0 ("we won't substitute all variables on stdin for you");
	  break;
	  /*
	  all_variables = 1;
      subst_from_stdin ();
	  */
	case 2:
	  /* echo '$foo and $bar' | git sh-i18n--envsubst --variables '$foo and $bar' */
	  all_variables = 0;
	  FUNC5 (argv[1]);
      FUNC8 ();
	  break;
	case 3:
	  /* git sh-i18n--envsubst --variables '$foo and $bar' */
	  if (FUNC7(argv[1], "--variables"))
		FUNC0 ("first argument must be --variables when two are given");
	  /* show_variables = 1; */
      FUNC6 (argv[2]);
	  break;
	default:
	  FUNC0 ("too many arguments");
	  break;
	}

  /* Close standard error.  This is simpler than fwriteerror_no_ebadf, because
     upon failure we don't need an errno - all we can do at this point is to
     set an exit status.  */
  errno = 0;
  if (FUNC3 (stderr) || FUNC4 (stderr))
    {
      FUNC2 (stderr);
      FUNC1 (EXIT_FAILURE);
    }
  if (FUNC2 (stderr) && errno != EBADF)
    FUNC1 (EXIT_FAILURE);

  FUNC1 (EXIT_SUCCESS);
}