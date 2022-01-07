
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {int dummy; } ;
struct grep_opt {int pattern_tail; } ;
typedef enum grep_pat_token { ____Placeholder_grep_pat_token } grep_pat_token ;


 struct grep_pat* create_grep_pat (char const*,size_t,char const*,int,int,int ) ;
 int do_append_grep_pat (int *,struct grep_pat*) ;

void append_grep_pat(struct grep_opt *opt, const char *pat, size_t patlen,
       const char *origin, int no, enum grep_pat_token t)
{
 struct grep_pat *p = create_grep_pat(pat, patlen, origin, no, t, 0);
 do_append_grep_pat(&opt->pattern_tail, p);
}
