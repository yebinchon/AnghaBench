
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int line_log_data; } ;
struct line_log_data {int ranges; struct line_log_data* next; } ;
struct commit {int object; } ;


 struct line_log_data* lookup_decoration (int *,int *) ;
 int range_set_check_invariants (int *) ;

__attribute__((used)) static struct line_log_data *lookup_line_range(struct rev_info *revs,
            struct commit *commit)
{
 struct line_log_data *ret = ((void*)0);
 struct line_log_data *d;

 ret = lookup_decoration(&revs->line_log_data, &commit->object);

 for (d = ret; d; d = d->next)
  range_set_check_invariants(&d->ranges);

 return ret;
}
