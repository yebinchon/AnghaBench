
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* error; scalar_t__ argc; char const* arg; char const** argv; } ;
typedef TYPE_1__ cli_state_t ;



const char *
cli_consume_string (cli_state_t *state_p)
{
  if (state_p->error != ((void*)0))
  {
    return ((void*)0);
  }

  if (state_p->argc <= 0)
  {
    state_p->error = "Expected string argument";
    state_p->arg = ((void*)0);
    return ((void*)0);
  }

  state_p->arg = state_p->argv[0];

  state_p->argc--;
  state_p->argv++;
  return state_p->arg;
}
