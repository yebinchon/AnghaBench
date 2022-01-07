
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int line_log_data; } ;
struct line_log_data {int dummy; } ;
struct commit {int object; } ;


 int add_decoration (int *,int *,int *) ;
 int free_line_log_data (struct line_log_data*) ;
 struct line_log_data* lookup_decoration (int *,int *) ;

__attribute__((used)) static void clear_commit_line_range(struct rev_info *revs, struct commit *commit)
{
 struct line_log_data *r;
 r = lookup_decoration(&revs->line_log_data, &commit->object);
 if (!r)
  return;
 free_line_log_data(r);
 add_decoration(&revs->line_log_data, &commit->object, ((void*)0));
}
