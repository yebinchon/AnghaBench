
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {int token; int pattern; struct grep_pat* next; } ;
struct grep_opt {int extended; int all_match; struct grep_expr* pattern_expression; struct grep_pat* pattern_list; int debug; } ;
struct grep_expr {int dummy; } ;





 struct grep_expr* compile_pattern_expr (struct grep_pat**) ;
 int compile_regexp (struct grep_pat*,struct grep_opt*) ;
 int die (char*,int ) ;
 struct grep_expr* grep_or_expr (struct grep_expr*,struct grep_expr*) ;
 struct grep_expr* grep_splice_or (struct grep_expr*,struct grep_expr*) ;
 struct grep_expr* prep_header_patterns (struct grep_opt*) ;

__attribute__((used)) static void compile_grep_patterns_real(struct grep_opt *opt)
{
 struct grep_pat *p;
 struct grep_expr *header_expr = prep_header_patterns(opt);

 for (p = opt->pattern_list; p; p = p->next) {
  switch (p->token) {
  case 130:
  case 128:
  case 129:
   compile_regexp(p, opt);
   break;
  default:
   opt->extended = 1;
   break;
  }
 }

 if (opt->all_match || header_expr)
  opt->extended = 1;
 else if (!opt->extended && !opt->debug)
  return;

 p = opt->pattern_list;
 if (p)
  opt->pattern_expression = compile_pattern_expr(&p);
 if (p)
  die("incomplete pattern expression: %s", p->pattern);

 if (!header_expr)
  return;

 if (!opt->pattern_expression)
  opt->pattern_expression = header_expr;
 else if (opt->all_match)
  opt->pattern_expression = grep_splice_or(header_expr,
        opt->pattern_expression);
 else
  opt->pattern_expression = grep_or_expr(opt->pattern_expression,
             header_expr);
 opt->all_match = 1;
}
