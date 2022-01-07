
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct TYPE_2__ {int type; } ;
struct pretty_print_context {TYPE_1__ date_mode; int member_0; } ;
struct commit {int dummy; } ;


 int DATE_NORMAL ;
 struct strbuf STRBUF_INIT ;
 int format_commit_message (struct commit*,char*,struct strbuf*,struct pretty_print_context*) ;
 int printf (char*,char*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void print_commit(struct commit *commit)
{
 struct strbuf sb = STRBUF_INIT;
 struct pretty_print_context ctx = {0};
 ctx.date_mode.type = DATE_NORMAL;
 format_commit_message(commit, " %m %s", &sb, &ctx);
 printf("%s\n", sb.buf);
 strbuf_release(&sb);
}
