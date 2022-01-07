
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * error; int * arg; } ;
typedef TYPE_1__ cli_state_t ;


 int JERRY_LOG_LEVEL_ERROR ;
 int jerry_port_log (int ,char*,int *,...) ;

__attribute__((used)) static bool
check_cli_error (const cli_state_t *const cli_state_p)
{
  if (cli_state_p->error != ((void*)0))
  {
    if (cli_state_p->arg != ((void*)0))
    {
      jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Error: %s %s\n", cli_state_p->error, cli_state_p->arg);
    }
    else
    {
      jerry_port_log (JERRY_LOG_LEVEL_ERROR, "Error: %s\n", cli_state_p->error);
    }

    return 1;
  }

  return 0;
}
