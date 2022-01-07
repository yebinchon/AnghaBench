
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_source {int dummy; } ;
struct grep_opt {int pattern_expression; int all_match; } ;


 int chk_hit_marker (int ) ;
 int clr_hit_marker (int ) ;
 int grep_source_1 (struct grep_opt*,struct grep_source*,int) ;

int grep_source(struct grep_opt *opt, struct grep_source *gs)
{




 if (!opt->all_match)
  return grep_source_1(opt, gs, 0);




 clr_hit_marker(opt->pattern_expression);
 grep_source_1(opt, gs, 1);

 if (!chk_hit_marker(opt->pattern_expression))
  return 0;

 return grep_source_1(opt, gs, 0);
}
