#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ id; char* opt; char* longopt; char* meta; int /*<<< orphan*/ * help; } ;
typedef  TYPE_1__ cli_opt_t ;

/* Variables and functions */
 int CLI_LINE_INDENT ; 
 int CLI_LINE_TAB ; 
 scalar_t__ CLI_OPT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char*) ; 

void
FUNC5 (const char *prog_name_p, /**< program name, typically argv[0] */
          const char *command_name_p, /**< command name if available */
          const cli_opt_t *options_p) /**< array of command line option definitions, terminated by CLI_OPT_DEFAULT */
{
  FUNC0 (prog_name_p, command_name_p, options_p);

  const cli_opt_t *opt_p = options_p;

  while (opt_p->id != CLI_OPT_DEFAULT)
  {
    int length = CLI_LINE_INDENT;
    FUNC2 (CLI_LINE_INDENT);

    if (opt_p->opt != NULL)
    {
      FUNC3 ("-%s", opt_p->opt);
      length += (int) (FUNC4 (opt_p->opt) + 1);
    }

    if (opt_p->opt != NULL && opt_p->longopt != NULL)
    {
      FUNC3 (", ");
      length += 2;
    }

    if (opt_p->longopt != NULL)
    {
      FUNC3 ("--%s", opt_p->longopt);
      length += (int) (FUNC4 (opt_p->longopt) + 2);
    }

    if (opt_p->meta != NULL)
    {
      FUNC3 (" %s", opt_p->meta);
      length += 1 + (int) FUNC4 (opt_p->meta);
    }

    if (opt_p->help != NULL)
    {
      if (length >= CLI_LINE_TAB)
      {
        FUNC3 ("\n");
        length = 0;
      }
      FUNC2 (CLI_LINE_TAB - length);
      length = CLI_LINE_TAB;

      FUNC1 (opt_p->help);
    }

    FUNC3 ("\n");
    opt_p++;
  }

  if (opt_p->help != NULL)
  {
    int length = 0;

    if (opt_p->meta != NULL)
    {
      length = (int) (CLI_LINE_INDENT + FUNC4 (opt_p->meta));

      FUNC2 (CLI_LINE_INDENT);
      FUNC3 ("%s", opt_p->meta);
    }

    if (length >= CLI_LINE_TAB)
    {
      FUNC3 ("\n");
      length = 0;
    }

    FUNC2 (CLI_LINE_TAB - length);

    FUNC1 (opt_p->help);
    FUNC3 ("\n");
  }
}