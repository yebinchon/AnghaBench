
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct diff_options {int dummy; } ;
struct commit_list {int dummy; } ;
struct commit {int dummy; } ;


 int clear_commit_marks (struct commit*,int ) ;
 int diff_emit_submodule_error (struct diff_options*,char*) ;
 int free (struct repository*) ;
 int free_commit_list (struct commit_list*) ;
 struct repository* open_submodule (char const*) ;
 scalar_t__ prepare_submodule_summary (struct rev_info*,char const*,struct commit*,struct commit*,struct commit_list*) ;
 int print_submodule_summary (struct repository*,struct rev_info*,struct diff_options*) ;
 int repo_clear (struct repository*) ;
 int show_submodule_header (struct diff_options*,char const*,struct object_id*,struct object_id*,unsigned int,struct repository*,struct commit**,struct commit**,struct commit_list**) ;

void show_submodule_summary(struct diff_options *o, const char *path,
  struct object_id *one, struct object_id *two,
  unsigned dirty_submodule)
{
 struct rev_info rev;
 struct commit *left = ((void*)0), *right = ((void*)0);
 struct commit_list *merge_bases = ((void*)0);
 struct repository *sub;

 sub = open_submodule(path);
 show_submodule_header(o, path, one, two, dirty_submodule,
         sub, &left, &right, &merge_bases);






 if (!left || !right || !sub)
  goto out;


 if (prepare_submodule_summary(&rev, path, left, right, merge_bases)) {
  diff_emit_submodule_error(o, "(revision walker failed)\n");
  goto out;
 }

 print_submodule_summary(sub, &rev, o);

out:
 if (merge_bases)
  free_commit_list(merge_bases);
 clear_commit_marks(left, ~0);
 clear_commit_marks(right, ~0);
 if (sub) {
  repo_clear(sub);
  free(sub);
 }
}
