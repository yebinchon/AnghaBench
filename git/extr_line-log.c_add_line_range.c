
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int line_log_data; } ;
struct line_log_data {int dummy; } ;
struct commit {int object; } ;


 int add_decoration (int *,int *,struct line_log_data*) ;
 int free_line_log_data (struct line_log_data*) ;
 struct line_log_data* line_log_data_copy (struct line_log_data*) ;
 struct line_log_data* line_log_data_merge (struct line_log_data*,struct line_log_data*) ;
 struct line_log_data* lookup_decoration (int *,int *) ;

__attribute__((used)) static void add_line_range(struct rev_info *revs, struct commit *commit,
      struct line_log_data *range)
{
 struct line_log_data *old_line = ((void*)0);
 struct line_log_data *new_line = ((void*)0);

 old_line = lookup_decoration(&revs->line_log_data, &commit->object);
 if (old_line && range) {
  new_line = line_log_data_merge(old_line, range);
  free_line_log_data(old_line);
 } else if (range)
  new_line = line_log_data_copy(range);

 if (new_line)
  add_decoration(&revs->line_log_data, &commit->object, new_line);
}
