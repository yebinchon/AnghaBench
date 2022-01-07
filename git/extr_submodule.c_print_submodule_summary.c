
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct rev_info {int date_mode; } ;
struct repository {int dummy; } ;
struct pretty_print_context {int output_encoding; int date_mode; int member_0; } ;
struct diff_options {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct commit {TYPE_1__ object; } ;


 struct strbuf STRBUF_INIT ;
 int SYMMETRIC_LEFT ;
 int diff_emit_submodule_add (struct diff_options*,int ) ;
 int diff_emit_submodule_del (struct diff_options*,int ) ;
 int get_log_output_encoding () ;
 struct commit* get_revision (struct rev_info*) ;
 int repo_format_commit_message (struct repository*,struct commit*,char const*,struct strbuf*,struct pretty_print_context*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int ) ;

__attribute__((used)) static void print_submodule_summary(struct repository *r, struct rev_info *rev, struct diff_options *o)
{
 static const char format[] = "  %m %s";
 struct strbuf sb = STRBUF_INIT;
 struct commit *commit;

 while ((commit = get_revision(rev))) {
  struct pretty_print_context ctx = {0};
  ctx.date_mode = rev->date_mode;
  ctx.output_encoding = get_log_output_encoding();
  strbuf_setlen(&sb, 0);
  repo_format_commit_message(r, commit, format, &sb,
          &ctx);
  strbuf_addch(&sb, '\n');
  if (commit->object.flags & SYMMETRIC_LEFT)
   diff_emit_submodule_del(o, sb.buf);
  else
   diff_emit_submodule_add(o, sb.buf);
 }
 strbuf_release(&sb);
}
