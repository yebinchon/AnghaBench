
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wt_status {scalar_t__ detect_rename; scalar_t__ rename_limit; scalar_t__ rename_score; int pathspec; int ignore_submodule_arg; int show_untracked_files; int repo; } ;
struct TYPE_3__ {int dirty_submodules; int ignore_untracked_in_submodules; int override_submodule_config; } ;
struct TYPE_4__ {int ita_invisible_in_index; scalar_t__ detect_rename; scalar_t__ rename_limit; scalar_t__ rename_score; struct wt_status* format_callback_data; int format_callback; TYPE_1__ flags; int output_format; } ;
struct rev_info {int prune_data; TYPE_2__ diffopt; } ;


 int DIFF_FORMAT_CALLBACK ;
 int copy_pathspec (int *,int *) ;
 int handle_ignore_submodules_arg (TYPE_2__*,int ) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int run_diff_files (struct rev_info*,int ) ;
 int setup_revisions (int ,int *,struct rev_info*,int *) ;
 int wt_status_collect_changed_cb ;

__attribute__((used)) static void wt_status_collect_changes_worktree(struct wt_status *s)
{
 struct rev_info rev;

 repo_init_revisions(s->repo, &rev, ((void*)0));
 setup_revisions(0, ((void*)0), &rev, ((void*)0));
 rev.diffopt.output_format |= DIFF_FORMAT_CALLBACK;
 rev.diffopt.flags.dirty_submodules = 1;
 rev.diffopt.ita_invisible_in_index = 1;
 if (!s->show_untracked_files)
  rev.diffopt.flags.ignore_untracked_in_submodules = 1;
 if (s->ignore_submodule_arg) {
  rev.diffopt.flags.override_submodule_config = 1;
  handle_ignore_submodules_arg(&rev.diffopt, s->ignore_submodule_arg);
 }
 rev.diffopt.format_callback = wt_status_collect_changed_cb;
 rev.diffopt.format_callback_data = s;
 rev.diffopt.detect_rename = s->detect_rename >= 0 ? s->detect_rename : rev.diffopt.detect_rename;
 rev.diffopt.rename_limit = s->rename_limit >= 0 ? s->rename_limit : rev.diffopt.rename_limit;
 rev.diffopt.rename_score = s->rename_score >= 0 ? s->rename_score : rev.diffopt.rename_score;
 copy_pathspec(&rev.prune_data, &s->pathspec);
 run_diff_files(&rev, 0);
}
