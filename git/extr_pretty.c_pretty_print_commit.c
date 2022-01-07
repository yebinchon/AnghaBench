
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {unsigned long len; } ;
struct pretty_print_context {int need_8bit_cte; scalar_t__ fmt; int print_email_subject; } ;
struct commit {int dummy; } ;


 scalar_t__ CMIT_FMT_ONELINE ;
 scalar_t__ CMIT_FMT_USERFORMAT ;
 scalar_t__ cmit_fmt_is_mail (scalar_t__) ;
 int format_commit_message (struct commit const*,int ,struct strbuf*,struct pretty_print_context*) ;
 char* get_log_output_encoding () ;
 char* logmsg_reencode (struct commit const*,int *,char const*) ;
 scalar_t__ non_ascii (int) ;
 int pp_header (struct pretty_print_context*,char const*,struct commit const*,char const**,struct strbuf*) ;
 int pp_remainder (struct pretty_print_context*,char const**,struct strbuf*,int) ;
 int pp_title_line (struct pretty_print_context*,char const**,struct strbuf*,char const*,int) ;
 char* skip_blank_lines (char const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_rtrim (struct strbuf*) ;
 int unuse_commit_buffer (struct commit const*,char const*) ;
 int user_format ;

void pretty_print_commit(struct pretty_print_context *pp,
    const struct commit *commit,
    struct strbuf *sb)
{
 unsigned long beginning_of_body;
 int indent = 4;
 const char *msg;
 const char *reencoded;
 const char *encoding;
 int need_8bit_cte = pp->need_8bit_cte;

 if (pp->fmt == CMIT_FMT_USERFORMAT) {
  format_commit_message(commit, user_format, sb, pp);
  return;
 }

 encoding = get_log_output_encoding();
 msg = reencoded = logmsg_reencode(commit, ((void*)0), encoding);

 if (pp->fmt == CMIT_FMT_ONELINE || cmit_fmt_is_mail(pp->fmt))
  indent = 0;





 if (cmit_fmt_is_mail(pp->fmt) && need_8bit_cte == 0) {
  int i, ch, in_body;

  for (in_body = i = 0; (ch = msg[i]); i++) {
   if (!in_body) {




    if (ch == '\n' && msg[i+1] == '\n')
     in_body = 1;
   }
   else if (non_ascii(ch)) {
    need_8bit_cte = 1;
    break;
   }
  }
 }

 pp_header(pp, encoding, commit, &msg, sb);
 if (pp->fmt != CMIT_FMT_ONELINE && !pp->print_email_subject) {
  strbuf_addch(sb, '\n');
 }


 msg = skip_blank_lines(msg);


 if (pp->fmt == CMIT_FMT_ONELINE || cmit_fmt_is_mail(pp->fmt))
  pp_title_line(pp, &msg, sb, encoding, need_8bit_cte);

 beginning_of_body = sb->len;
 if (pp->fmt != CMIT_FMT_ONELINE)
  pp_remainder(pp, &msg, sb, indent);
 strbuf_rtrim(sb);


 if (pp->fmt != CMIT_FMT_ONELINE)
  strbuf_addch(sb, '\n');






 if (cmit_fmt_is_mail(pp->fmt) && sb->len <= beginning_of_body)
  strbuf_addch(sb, '\n');

 unuse_commit_buffer(commit, reencoded);
}
