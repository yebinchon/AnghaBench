
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {char* error; } ;
typedef TYPE_1__ cli_state_t ;



 int CLI_OPT_END ;
 int JERRY_LOG_LEVEL_ERROR ;
 int JERRY_STANDALONE_EXIT_CODE_FAIL ;
 int JERRY_STANDALONE_EXIT_CODE_OK ;

 scalar_t__ check_cli_error (TYPE_1__*) ;
 int cli_consume_option (TYPE_1__*) ;
 char* cli_consume_string (TYPE_1__*) ;
 TYPE_1__ cli_init (int ,int,char**) ;
 int jerry_port_log (int ,char*,char const*) ;
 int main_opts ;
 int print_commands (char*) ;
 int process_generate (TYPE_1__*,int,char*) ;
 int process_literal_dump (TYPE_1__*,int,char*) ;
 int process_merge (TYPE_1__*,int,char*) ;
 int strcmp (char*,char const*) ;

int
main (int argc,
      char **argv)
{
  cli_state_t cli_state = cli_init (main_opts, argc - 1, argv + 1);

  for (int id = cli_consume_option (&cli_state); id != CLI_OPT_END; id = cli_consume_option (&cli_state))
  {
    switch (id)
    {
      case 128:
      {

        break;
      }
      case 129:
      {
        const char *command_p = cli_consume_string (&cli_state);

        if (cli_state.error != ((void*)0))
        {
          break;
        }

        if (!strcmp ("merge", command_p))
        {
          return process_merge (&cli_state, argc, argv[0]);
        }
        else if (!strcmp ("litdump", command_p))
        {
          return process_literal_dump (&cli_state, argc, argv[0]);
        }
        else if (!strcmp ("generate", command_p))
        {
          return process_generate (&cli_state, argc, argv[0]);
        }

        jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Error: unknown command: %s\n\n", command_p);
        print_commands (argv[0]);

        return JERRY_STANDALONE_EXIT_CODE_FAIL;
      }
      default:
      {
        cli_state.error = "Internal error";
        break;
      }
    }
  }

  if (check_cli_error (&cli_state))
  {
    return JERRY_STANDALONE_EXIT_CODE_FAIL;
  }

  print_commands (argv[0]);
  return JERRY_STANDALONE_EXIT_CODE_OK;
}
