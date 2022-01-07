
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wt_status {char* ignore_submodule_arg; scalar_t__ detect_rename; scalar_t__ rename_limit; scalar_t__ rename_score; int pathspec; int reference; scalar_t__ is_initial; int repo; } ;
struct setup_revision_opt {int def; } ;
struct TYPE_3__ {int override_submodule_config; } ;
struct TYPE_4__ {int ita_invisible_in_index; scalar_t__ detect_rename; scalar_t__ rename_limit; scalar_t__ rename_score; struct wt_status* format_callback_data; int format_callback; int output_format; TYPE_1__ flags; } ;
struct rev_info {int prune_data; TYPE_2__ diffopt; } ;
typedef int opt ;


 int DIFF_FORMAT_CALLBACK ;
 int copy_pathspec (int *,int *) ;
 int empty_tree_oid_hex () ;
 int handle_ignore_submodules_arg (TYPE_2__*,char*) ;
 int memset (struct setup_revision_opt*,int ,int) ;
 int repo_init_revisions (int ,struct rev_info*,int *) ;
 int run_diff_index (struct rev_info*,int) ;
 int setup_revisions (int ,int *,struct rev_info*,struct setup_revision_opt*) ;
 int wt_status_collect_updated_cb ;

__attribute__((used)) static void wt_status_collect_changes_index(struct wt_status *s)
{
 struct rev_info rev;
 struct setup_revision_opt opt;

 repo_init_revisions(s->repo, &rev, ((void*)0));
 memset(&opt, 0, sizeof(opt));
 opt.def = s->is_initial ? empty_tree_oid_hex() : s->reference;
 setup_revisions(0, ((void*)0), &rev, &opt);

 rev.diffopt.flags.override_submodule_config = 1;
 rev.diffopt.ita_invisible_in_index = 1;
 if (s->ignore_submodule_arg) {
  handle_ignore_submodules_arg(&rev.diffopt, s->ignore_submodule_arg);
 } else {
  handle_ignore_submodules_arg(&rev.diffopt, "dirty");
 }

 rev.diffopt.output_format |= DIFF_FORMAT_CALLBACK;
 rev.diffopt.format_callback = wt_status_collect_updated_cb;
 rev.diffopt.format_callback_data = s;
 rev.diffopt.detect_rename = s->detect_rename >= 0 ? s->detect_rename : rev.diffopt.detect_rename;
 rev.diffopt.rename_limit = s->rename_limit >= 0 ? s->rename_limit : rev.diffopt.rename_limit;
 rev.diffopt.rename_score = s->rename_score >= 0 ? s->rename_score : rev.diffopt.rename_score;
 copy_pathspec(&rev.prune_data, &s->pathspec);
 run_diff_index(&rev, 1);
}
