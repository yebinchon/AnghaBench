
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {scalar_t__ token; int no; int origin; int patternlen; int pattern; int field; struct grep_pat* next; } ;
struct grep_opt {struct grep_pat* pattern_list; struct grep_pat** pattern_tail; } ;


 scalar_t__ GREP_PATTERN_HEAD ;
 int append_grep_pat (struct grep_opt*,int ,int ,int ,int ,scalar_t__) ;
 int append_header_grep_pattern (struct grep_opt*,int ,int ) ;
 struct grep_opt* xmalloc (int) ;

struct grep_opt *grep_opt_dup(const struct grep_opt *opt)
{
 struct grep_pat *pat;
 struct grep_opt *ret = xmalloc(sizeof(struct grep_opt));
 *ret = *opt;

 ret->pattern_list = ((void*)0);
 ret->pattern_tail = &ret->pattern_list;

 for(pat = opt->pattern_list; pat != ((void*)0); pat = pat->next)
 {
  if(pat->token == GREP_PATTERN_HEAD)
   append_header_grep_pattern(ret, pat->field,
         pat->pattern);
  else
   append_grep_pat(ret, pat->pattern, pat->patternlen,
     pat->origin, pat->no, pat->token);
 }

 return ret;
}
