
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct rev_info {scalar_t__ total; scalar_t__* subject_prefix; int nr; } ;


 int digits_in_number (scalar_t__) ;
 int strbuf_addf (struct strbuf*,char*,scalar_t__*,...) ;
 int strbuf_addstr (struct strbuf*,char*) ;

void fmt_output_email_subject(struct strbuf *sb, struct rev_info *opt)
{
 if (opt->total > 0) {
  strbuf_addf(sb, "Subject: [%s%s%0*d/%d] ",
       opt->subject_prefix,
       *opt->subject_prefix ? " " : "",
       digits_in_number(opt->total),
       opt->nr, opt->total);
 } else if (opt->total == 0 && opt->subject_prefix && *opt->subject_prefix) {
  strbuf_addf(sb, "Subject: [%s] ",
       opt->subject_prefix);
 } else {
  strbuf_addstr(sb, "Subject: ");
 }
}
