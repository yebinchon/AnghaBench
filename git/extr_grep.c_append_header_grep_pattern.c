
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grep_pat {int dummy; } ;
struct grep_opt {int use_reflog_filter; int header_tail; } ;
typedef enum grep_header_field { ____Placeholder_grep_header_field } grep_header_field ;


 int GREP_HEADER_REFLOG ;
 int GREP_PATTERN_HEAD ;
 struct grep_pat* create_grep_pat (char const*,int ,char*,int ,int ,int) ;
 int do_append_grep_pat (int *,struct grep_pat*) ;
 int strlen (char const*) ;

void append_header_grep_pattern(struct grep_opt *opt,
    enum grep_header_field field, const char *pat)
{
 struct grep_pat *p = create_grep_pat(pat, strlen(pat), "header", 0,
          GREP_PATTERN_HEAD, field);
 if (field == GREP_HEADER_REFLOG)
  opt->use_reflog_filter = 1;
 do_append_grep_pat(&opt->header_tail, p);
}
