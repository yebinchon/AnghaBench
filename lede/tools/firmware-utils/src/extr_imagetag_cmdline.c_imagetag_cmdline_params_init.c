
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imagetag_cmdline_params {int initialize; int check_required; int print_errors; scalar_t__ check_ambiguity; scalar_t__ override; } ;



void
imagetag_cmdline_params_init(struct imagetag_cmdline_params *params)
{
  if (params)
    {
      params->override = 0;
      params->initialize = 1;
      params->check_required = 1;
      params->check_ambiguity = 0;
      params->print_errors = 1;
    }
}
