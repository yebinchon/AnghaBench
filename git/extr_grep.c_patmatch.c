
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {int regexp; scalar_t__ pcre2_pattern; scalar_t__ pcre1_regexp; } ;
typedef int regmatch_t ;


 int pcre1match (struct grep_pat*,char*,char*,int *,int) ;
 int pcre2match (struct grep_pat*,char*,char*,int *,int) ;
 int regexec_buf (int *,char*,int,int,int *,int) ;

__attribute__((used)) static int patmatch(struct grep_pat *p, char *line, char *eol,
      regmatch_t *match, int eflags)
{
 int hit;

 if (p->pcre1_regexp)
  hit = !pcre1match(p, line, eol, match, eflags);
 else if (p->pcre2_pattern)
  hit = !pcre2match(p, line, eol, match, eflags);
 else
  hit = !regexec_buf(&p->regexp, line, eol - line, 1, match,
       eflags);

 return hit;
}
