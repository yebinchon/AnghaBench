
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ignore_submodules; int override_submodule_config; int quick; } ;
struct TYPE_5__ {TYPE_1__ flags; } ;
struct rev_info {TYPE_2__ diffopt; } ;
struct repository {int dummy; } ;


 int diff_result_code (TYPE_2__*,int) ;
 int diff_setup_done (TYPE_2__*) ;
 int repo_init_revisions (struct repository*,struct rev_info*,int *) ;
 int run_diff_files (struct rev_info*,int ) ;

int has_unstaged_changes(struct repository *r, int ignore_submodules)
{
 struct rev_info rev_info;
 int result;

 repo_init_revisions(r, &rev_info, ((void*)0));
 if (ignore_submodules) {
  rev_info.diffopt.flags.ignore_submodules = 1;
  rev_info.diffopt.flags.override_submodule_config = 1;
 }
 rev_info.diffopt.flags.quick = 1;
 diff_setup_done(&rev_info.diffopt);
 result = run_diff_files(&rev_info, 0);
 return diff_result_code(&rev_info.diffopt, result);
}
