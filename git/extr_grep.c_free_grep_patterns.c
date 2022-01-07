
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {int token; struct grep_pat* pattern; int regexp; int pcre2_pattern; int pcre1_regexp; struct grep_pat* next; } ;
struct grep_opt {int pattern_expression; int extended; struct grep_pat* pattern_list; } ;





 int free (struct grep_pat*) ;
 int free_pattern_expr (int ) ;
 int free_pcre1_regexp (struct grep_pat*) ;
 int free_pcre2_pattern (struct grep_pat*) ;
 int regfree (int *) ;

void free_grep_patterns(struct grep_opt *opt)
{
 struct grep_pat *p, *n;

 for (p = opt->pattern_list; p; p = n) {
  n = p->next;
  switch (p->token) {
  case 130:
  case 128:
  case 129:
   if (p->pcre1_regexp)
    free_pcre1_regexp(p);
   else if (p->pcre2_pattern)
    free_pcre2_pattern(p);
   else
    regfree(&p->regexp);
   free(p->pattern);
   break;
  default:
   break;
  }
  free(p);
 }

 if (!opt->extended)
  return;
 free_pattern_expr(opt->pattern_expression);
}
