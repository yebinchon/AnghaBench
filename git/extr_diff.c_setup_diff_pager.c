
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int exit_with_status; } ;
struct diff_options {TYPE_1__ flags; } ;


 scalar_t__ check_pager_config (char*) ;
 int setup_pager () ;

void setup_diff_pager(struct diff_options *opt)
{
 if (!opt->flags.exit_with_status &&
     check_pager_config("diff") != 0)
  setup_pager();
}
