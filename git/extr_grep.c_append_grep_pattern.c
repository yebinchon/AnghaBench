
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_opt {int dummy; } ;
typedef enum grep_pat_token { ____Placeholder_grep_pat_token } grep_pat_token ;


 int append_grep_pat (struct grep_opt*,char const*,int ,char const*,int,int) ;
 int strlen (char const*) ;

void append_grep_pattern(struct grep_opt *opt, const char *pat,
    const char *origin, int no, enum grep_pat_token t)
{
 append_grep_pat(opt, pat, strlen(pat), origin, no, t);
}
