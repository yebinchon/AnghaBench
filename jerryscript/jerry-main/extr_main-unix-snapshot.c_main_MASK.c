#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* error; } ;
typedef  TYPE_1__ cli_state_t ;

/* Variables and functions */
#define  CLI_OPT_DEFAULT 129 
 int CLI_OPT_END ; 
 int /*<<< orphan*/  JERRY_LOG_LEVEL_ERROR ; 
 int JERRY_STANDALONE_EXIT_CODE_FAIL ; 
 int JERRY_STANDALONE_EXIT_CODE_OK ; 
#define  OPT_MERGE_HELP 128 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 char* FUNC2 (TYPE_1__*) ; 
 TYPE_1__ FUNC3 (int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  main_opts ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (TYPE_1__*,int,char*) ; 
 int FUNC7 (TYPE_1__*,int,char*) ; 
 int FUNC8 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*) ; 

int
FUNC10 (int argc, /**< number of arguments */
      char **argv) /**< argument list */
{
  cli_state_t cli_state = FUNC3 (main_opts, argc - 1, argv + 1);

  for (int id = FUNC1 (&cli_state); id != CLI_OPT_END; id = FUNC1 (&cli_state))
  {
    switch (id)
    {
      case OPT_MERGE_HELP:
      {
        /* Help is always printed if no command is provided. */
        break;
      }
      case CLI_OPT_DEFAULT:
      {
        const char *command_p = FUNC2 (&cli_state);

        if (cli_state.error != NULL)
        {
          break;
        }

        if (!FUNC9 ("merge", command_p))
        {
          return FUNC8 (&cli_state, argc, argv[0]);
        }
        else if (!FUNC9 ("litdump", command_p))
        {
          return FUNC7 (&cli_state, argc, argv[0]);
        }
        else if (!FUNC9 ("generate", command_p))
        {
          return FUNC6 (&cli_state, argc, argv[0]);
        }

        FUNC4 (JERRY_LOG_LEVEL_ERROR, "Error: unknown command: %s\n\n", command_p);
        FUNC5 (argv[0]);

        return JERRY_STANDALONE_EXIT_CODE_FAIL;
      }
      default:
      {
        cli_state.error = "Internal error";
        break;
      }
    }
  }

  if (FUNC0 (&cli_state))
  {
    return JERRY_STANDALONE_EXIT_CODE_FAIL;
  }

  FUNC5 (argv[0]);
  return JERRY_STANDALONE_EXIT_CODE_OK;
}