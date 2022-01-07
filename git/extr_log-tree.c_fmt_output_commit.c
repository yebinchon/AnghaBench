
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct rev_info {int dummy; } ;
struct pretty_print_context {int member_0; } ;
struct commit {int dummy; } ;


 struct strbuf STRBUF_INIT ;
 int fmt_output_subject (struct strbuf*,int ,struct rev_info*) ;
 int format_commit_message (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ;
 int strbuf_release (struct strbuf*) ;

void fmt_output_commit(struct strbuf *filename,
         struct commit *commit,
         struct rev_info *info)
{
 struct pretty_print_context ctx = {0};
 struct strbuf subject = STRBUF_INIT;

 format_commit_message(commit, "%f", &subject, &ctx);
 fmt_output_subject(filename, subject.buf, info);
 strbuf_release(&subject);
}
