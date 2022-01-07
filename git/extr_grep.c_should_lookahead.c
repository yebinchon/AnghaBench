
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {scalar_t__ token; struct grep_pat* next; } ;
struct grep_opt {struct grep_pat* pattern_list; scalar_t__ invert; scalar_t__ extended; } ;


 scalar_t__ GREP_PATTERN ;

__attribute__((used)) static int should_lookahead(struct grep_opt *opt)
{
 struct grep_pat *p;

 if (opt->extended)
  return 0;
 if (opt->invert)
  return 0;
 for (p = opt->pattern_list; p; p = p->next) {
  if (p->token != GREP_PATTERN)
   return 0;
 }
 return 1;
}
