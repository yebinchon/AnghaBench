
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* opts; } ;
typedef TYPE_1__ cli_state_t ;
typedef int cli_opt_t ;



void
cli_change_opts (cli_state_t *state_p,
                 const cli_opt_t *options_p)
{
  state_p->opts = options_p;
}
