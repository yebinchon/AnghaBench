
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {char* buf; scalar_t__ len; } ;
struct TYPE_4__ {scalar_t__ header_list; scalar_t__ use_reflog_filter; int pattern_list; } ;
struct rev_info {scalar_t__ invert_grep; TYPE_2__ grep_filter; scalar_t__ show_notes; int mailmap; int reflog_info; } ;
struct TYPE_3__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 struct strbuf STRBUF_INIT ;
 int commit_rewrite_person (struct strbuf*,char*,int ) ;
 int format_display_notes (int *,struct strbuf*,char const*,int) ;
 char* get_log_output_encoding () ;
 int get_reflog_message (struct strbuf*,int ) ;
 int grep_buffer (TYPE_2__*,char*,scalar_t__) ;
 char* logmsg_reencode (struct commit*,int *,char const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strlen (char const*) ;
 int unuse_commit_buffer (struct commit*,char const*) ;

__attribute__((used)) static int commit_match(struct commit *commit, struct rev_info *opt)
{
 int retval;
 const char *encoding;
 const char *message;
 struct strbuf buf = STRBUF_INIT;

 if (!opt->grep_filter.pattern_list && !opt->grep_filter.header_list)
  return 1;


 if (opt->grep_filter.use_reflog_filter) {
  strbuf_addstr(&buf, "reflog ");
  get_reflog_message(&buf, opt->reflog_info);
  strbuf_addch(&buf, '\n');
 }
 encoding = get_log_output_encoding();
 message = logmsg_reencode(commit, ((void*)0), encoding);


 if (buf.len)
  strbuf_addstr(&buf, message);

 if (opt->grep_filter.header_list && opt->mailmap) {
  if (!buf.len)
   strbuf_addstr(&buf, message);

  commit_rewrite_person(&buf, "\nauthor ", opt->mailmap);
  commit_rewrite_person(&buf, "\ncommitter ", opt->mailmap);
 }


 if (opt->show_notes) {
  if (!buf.len)
   strbuf_addstr(&buf, message);
  format_display_notes(&commit->object.oid, &buf, encoding, 1);
 }
 if (buf.len)
  retval = grep_buffer(&opt->grep_filter, buf.buf, buf.len);
 else
  retval = grep_buffer(&opt->grep_filter,
         (char *)message, strlen(message));
 strbuf_release(&buf);
 unuse_commit_buffer(commit, message);
 return opt->invert_grep ? !retval : retval;
}
