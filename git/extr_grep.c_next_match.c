
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct grep_pat {int token; struct grep_pat* next; } ;
struct grep_opt {struct grep_pat* pattern_list; } ;
struct TYPE_4__ {int rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;
typedef enum grep_context { ____Placeholder_grep_context } grep_context ;





 int match_next_pattern (struct grep_pat*,char*,char*,int,TYPE_1__*,int) ;

__attribute__((used)) static int next_match(struct grep_opt *opt, char *bol, char *eol,
        enum grep_context ctx, regmatch_t *pmatch, int eflags)
{
 struct grep_pat *p;
 int hit = 0;

 pmatch->rm_so = pmatch->rm_eo = -1;
 if (bol < eol) {
  for (p = opt->pattern_list; p; p = p->next) {
   switch (p->token) {
   case 130:
   case 128:
   case 129:
    hit |= match_next_pattern(p, bol, eol, ctx,
         pmatch, eflags);
    break;
   default:
    break;
   }
  }
 }
 return hit;
}
