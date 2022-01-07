
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ignore_submodules; int ignore_untracked_in_submodules; int ignore_dirty_submodules; } ;
struct diff_options {TYPE_1__ flags; } ;


 int die (char*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

void handle_ignore_submodules_arg(struct diff_options *diffopt,
      const char *arg)
{
 diffopt->flags.ignore_submodules = 0;
 diffopt->flags.ignore_untracked_in_submodules = 0;
 diffopt->flags.ignore_dirty_submodules = 0;

 if (!strcmp(arg, "all"))
  diffopt->flags.ignore_submodules = 1;
 else if (!strcmp(arg, "untracked"))
  diffopt->flags.ignore_untracked_in_submodules = 1;
 else if (!strcmp(arg, "dirty"))
  diffopt->flags.ignore_dirty_submodules = 1;
 else if (strcmp(arg, "none"))
  die("bad --ignore-submodules argument: %s", arg);




}
