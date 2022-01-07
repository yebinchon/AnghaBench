
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int output_format; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct line_log_data {int dummy; } ;
struct commit {int dummy; } ;


 int DIFF_FORMAT_NO_OUTPUT ;
 int dump_diff_hacky (struct rev_info*,struct line_log_data*) ;
 struct line_log_data* lookup_line_range (struct rev_info*,struct commit*) ;
 int show_log (struct rev_info*) ;

int line_log_print(struct rev_info *rev, struct commit *commit)
{

 show_log(rev);
 if (!(rev->diffopt.output_format & DIFF_FORMAT_NO_OUTPUT)) {
  struct line_log_data *range = lookup_line_range(rev, commit);
  dump_diff_hacky(rev, range);
 }
 return 1;
}
