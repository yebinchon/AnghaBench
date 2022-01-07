
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* error; scalar_t__ argc; int ** argv; int * arg; } ;
typedef TYPE_1__ cli_state_t ;


 long strtol (int *,char**,int) ;

int
cli_consume_int (cli_state_t *state_p)
{
  if (state_p->error != ((void*)0))
  {
    return 0;
  }

  state_p->error = "Expected integer argument";

  if (state_p->argc <= 0)
  {
    state_p->arg = ((void*)0);
    return 0;
  }

  state_p->arg = state_p->argv[0];

  char *endptr;
  long int value = strtol (state_p->arg, &endptr, 10);

  if (*endptr != '\0')
  {
    return 0;
  }

  state_p->error = ((void*)0);
  state_p->argc--;
  state_p->argv++;
  return (int) value;
}
