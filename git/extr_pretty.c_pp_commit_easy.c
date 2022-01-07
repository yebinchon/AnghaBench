
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct pretty_print_context {int fmt; int member_0; } ;
struct commit {int dummy; } ;
typedef enum cmit_fmt { ____Placeholder_cmit_fmt } cmit_fmt ;


 int pretty_print_commit (struct pretty_print_context*,struct commit const*,struct strbuf*) ;

void pp_commit_easy(enum cmit_fmt fmt, const struct commit *commit,
      struct strbuf *sb)
{
 struct pretty_print_context pp = {0};
 pp.fmt = fmt;
 pretty_print_commit(&pp, commit, sb);
}
