
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {scalar_t__ all_match; struct grep_expr* pattern_expression; } ;
struct grep_expr {int dummy; } ;


 int dump_grep_expression_1 (struct grep_expr*,int ) ;
 int fflush (int *) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void dump_grep_expression(struct grep_opt *opt)
{
 struct grep_expr *x = opt->pattern_expression;

 if (opt->all_match)
  fprintf(stderr, "[all-match]\n");
 dump_grep_expression_1(x, 0);
 fflush(((void*)0));
}
