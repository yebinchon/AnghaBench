
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ has_changes; scalar_t__ quick; } ;
struct diff_options {TYPE_1__ flags; int filter; } ;



int diff_can_quit_early(struct diff_options *opt)
{
 return (opt->flags.quick &&
  !opt->filter &&
  opt->flags.has_changes);
}
