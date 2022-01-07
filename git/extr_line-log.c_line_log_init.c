
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct string_list {int dummy; } ;
struct TYPE_2__ {int pathspec; int repo; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct line_log_data {int dummy; } ;
struct commit {int dummy; } ;


 int add_line_range (struct rev_info*,struct commit*,struct line_log_data*) ;
 struct commit* check_single_commit (struct rev_info*) ;
 struct line_log_data* parse_lines (int ,struct commit*,char const*,struct string_list*) ;
 int parse_pathspec_from_ranges (int *,struct line_log_data*) ;

void line_log_init(struct rev_info *rev, const char *prefix, struct string_list *args)
{
 struct commit *commit = ((void*)0);
 struct line_log_data *range;

 commit = check_single_commit(rev);
 range = parse_lines(rev->diffopt.repo, commit, prefix, args);
 add_line_range(rev, commit, range);

 parse_pathspec_from_ranges(&rev->diffopt.pathspec, range);
}
