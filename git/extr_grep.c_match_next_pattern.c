
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct grep_pat {int dummy; } ;
struct TYPE_4__ {scalar_t__ rm_so; scalar_t__ rm_eo; } ;
typedef TYPE_1__ regmatch_t ;
typedef enum grep_context { ____Placeholder_grep_context } grep_context ;


 int match_one_pattern (struct grep_pat*,char*,char*,int,TYPE_1__*,int) ;

__attribute__((used)) static int match_next_pattern(struct grep_pat *p, char *bol, char *eol,
         enum grep_context ctx,
         regmatch_t *pmatch, int eflags)
{
 regmatch_t match;

 if (!match_one_pattern(p, bol, eol, ctx, &match, eflags))
  return 0;
 if (match.rm_so < 0 || match.rm_eo < 0)
  return 0;
 if (pmatch->rm_so >= 0 && pmatch->rm_eo >= 0) {
  if (match.rm_so > pmatch->rm_so)
   return 1;
  if (match.rm_so == pmatch->rm_so && match.rm_eo < pmatch->rm_eo)
   return 1;
 }
 pmatch->rm_so = match.rm_so;
 pmatch->rm_eo = match.rm_eo;
 return 1;
}
