
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {struct grep_expr* pattern_expression; } ;
struct grep_expr {int dummy; } ;
typedef int ssize_t ;
typedef enum grep_context { ____Placeholder_grep_context } grep_context ;


 int match_expr_eval (struct grep_opt*,struct grep_expr*,char*,char*,int,int *,int *,int) ;

__attribute__((used)) static int match_expr(struct grep_opt *opt, char *bol, char *eol,
        enum grep_context ctx, ssize_t *col,
        ssize_t *icol, int collect_hits)
{
 struct grep_expr *x = opt->pattern_expression;
 return match_expr_eval(opt, x, bol, eol, ctx, col, icol, collect_hits);
}
