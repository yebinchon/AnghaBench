
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {int dummy; } ;
typedef int regmatch_t ;



__attribute__((used)) static int pcre1match(struct grep_pat *p, const char *line, const char *eol,
  regmatch_t *match, int eflags)
{
 return 1;
}
