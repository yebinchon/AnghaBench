
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct TYPE_4__ {struct collect_changed_submodules_cb_data* format_callback_data; int format_callback; int output_format; } ;
struct rev_info {TYPE_2__ diffopt; } ;
struct repository {int dummy; } ;
struct TYPE_3__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
struct collect_changed_submodules_cb_data {int * commit_oid; struct string_list* changed; struct repository* repo; } ;
struct argv_array {int argv; int argc; } ;


 int DIFF_FORMAT_CALLBACK ;
 int collect_changed_submodules_cb ;
 int die (char*) ;
 int diff_tree_combined_merge (struct commit const*,int,struct rev_info*) ;
 struct commit* get_revision (struct rev_info*) ;
 scalar_t__ prepare_revision_walk (struct rev_info*) ;
 int repo_init_revisions (struct repository*,struct rev_info*,int *) ;
 int reset_revision_walk () ;
 int setup_revisions (int ,int ,struct rev_info*,int *) ;

__attribute__((used)) static void collect_changed_submodules(struct repository *r,
           struct string_list *changed,
           struct argv_array *argv)
{
 struct rev_info rev;
 const struct commit *commit;

 repo_init_revisions(r, &rev, ((void*)0));
 setup_revisions(argv->argc, argv->argv, &rev, ((void*)0));
 if (prepare_revision_walk(&rev))
  die("revision walk setup failed");

 while ((commit = get_revision(&rev))) {
  struct rev_info diff_rev;
  struct collect_changed_submodules_cb_data data;
  data.repo = r;
  data.changed = changed;
  data.commit_oid = &commit->object.oid;

  repo_init_revisions(r, &diff_rev, ((void*)0));
  diff_rev.diffopt.output_format |= DIFF_FORMAT_CALLBACK;
  diff_rev.diffopt.format_callback = collect_changed_submodules_cb;
  diff_rev.diffopt.format_callback_data = &data;
  diff_tree_combined_merge(commit, 1, &diff_rev);
 }

 reset_revision_walk();
}
