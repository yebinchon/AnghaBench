
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {scalar_t__ debug; } ;


 int compile_grep_patterns_real (struct grep_opt*) ;
 int dump_grep_expression (struct grep_opt*) ;

void compile_grep_patterns(struct grep_opt *opt)
{
 compile_grep_patterns_real(opt);
 if (opt->debug)
  dump_grep_expression(opt);
}
