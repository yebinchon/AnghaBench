
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct line_log_data {int dummy; } ;
struct diff_queue_struct {int dummy; } ;
struct diff_options {int pathspec; scalar_t__ detect_rename; } ;
struct commit {int dummy; } ;


 int DIFF_QUEUE_CLEAR (int *) ;
 int assert (struct commit*) ;
 int clear_pathspec (int *) ;
 scalar_t__ diff_might_be_rename () ;
 int diff_queued_diff ;
 int diff_tree_oid (struct object_id*,struct object_id*,char*,struct diff_options*) ;
 int diffcore_std (struct diff_options*) ;
 int filter_diffs_for_paths (struct line_log_data*,int) ;
 struct object_id* get_commit_tree_oid (struct commit*) ;
 int move_diff_queue (struct diff_queue_struct*,int *) ;
 int parse_pathspec_from_ranges (int *,struct line_log_data*) ;
 int same_paths_in_pathspec_and_range (int *,struct line_log_data*) ;

__attribute__((used)) static void queue_diffs(struct line_log_data *range,
   struct diff_options *opt,
   struct diff_queue_struct *queue,
   struct commit *commit, struct commit *parent)
{
 struct object_id *tree_oid, *parent_tree_oid;

 assert(commit);

 tree_oid = get_commit_tree_oid(commit);
 parent_tree_oid = parent ? get_commit_tree_oid(parent) : ((void*)0);

 if (opt->detect_rename &&
     !same_paths_in_pathspec_and_range(&opt->pathspec, range)) {
  clear_pathspec(&opt->pathspec);
  parse_pathspec_from_ranges(&opt->pathspec, range);
 }
 DIFF_QUEUE_CLEAR(&diff_queued_diff);
 diff_tree_oid(parent_tree_oid, tree_oid, "", opt);
 if (opt->detect_rename && diff_might_be_rename()) {

  clear_pathspec(&opt->pathspec);
  DIFF_QUEUE_CLEAR(&diff_queued_diff);

  diff_tree_oid(parent_tree_oid, tree_oid, "", opt);

  filter_diffs_for_paths(range, 1);
  diffcore_std(opt);
  filter_diffs_for_paths(range, 0);
 }
 move_diff_queue(queue, &diff_queued_diff);
}
