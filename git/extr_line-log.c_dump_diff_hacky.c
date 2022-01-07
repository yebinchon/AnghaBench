
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct line_log_data {struct line_log_data* next; } ;


 int dump_diff_hacky_one (struct rev_info*,struct line_log_data*) ;
 int fprintf (int ,char*,char*) ;
 char* output_prefix (TYPE_1__*) ;

__attribute__((used)) static void dump_diff_hacky(struct rev_info *rev, struct line_log_data *range)
{
 fprintf(rev->diffopt.file, "%s\n", output_prefix(&rev->diffopt));
 while (range) {
  dump_diff_hacky_one(rev, range);
  range = range->next;
 }
}
