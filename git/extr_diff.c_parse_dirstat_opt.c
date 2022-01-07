
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct diff_options {int output_format; } ;


 int DIFF_FORMAT_DIRSTAT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,int ) ;
 scalar_t__ parse_dirstat_params (struct diff_options*,char const*,struct strbuf*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static int parse_dirstat_opt(struct diff_options *options, const char *params)
{
 struct strbuf errmsg = STRBUF_INIT;
 if (parse_dirstat_params(options, params, &errmsg))
  die(_("Failed to parse --dirstat/-X option parameter:\n%s"),
      errmsg.buf);
 strbuf_release(&errmsg);




 options->output_format |= DIFF_FORMAT_DIRSTAT;
 return 1;
}
