
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int diffopt; } ;
struct line_log_data {int dummy; } ;
struct diff_queue_struct {int dummy; } ;
struct commit {TYPE_1__* parents; } ;
struct TYPE_2__ {struct commit* item; } ;


 int add_line_range (struct rev_info*,struct commit*,struct line_log_data*) ;
 int free_line_log_data (struct line_log_data*) ;
 int process_all_files (struct line_log_data**,struct rev_info*,struct diff_queue_struct*,struct line_log_data*) ;
 int queue_diffs (struct line_log_data*,int *,struct diff_queue_struct*,struct commit*,struct commit*) ;

__attribute__((used)) static int process_ranges_ordinary_commit(struct rev_info *rev, struct commit *commit,
       struct line_log_data *range)
{
 struct commit *parent = ((void*)0);
 struct diff_queue_struct queue;
 struct line_log_data *parent_range;
 int changed;

 if (commit->parents)
  parent = commit->parents->item;

 queue_diffs(range, &rev->diffopt, &queue, commit, parent);
 changed = process_all_files(&parent_range, rev, &queue, range);
 if (parent)
  add_line_range(rev, parent, parent_range);
 free_line_log_data(parent_range);
 return changed;
}
