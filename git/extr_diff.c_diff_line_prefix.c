
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;
struct diff_options {int output_prefix_data; struct strbuf* (* output_prefix ) (struct diff_options*,int ) ;} ;


 struct strbuf* stub1 (struct diff_options*,int ) ;

const char *diff_line_prefix(struct diff_options *opt)
{
 struct strbuf *msgbuf;
 if (!opt->output_prefix)
  return "";

 msgbuf = opt->output_prefix(opt, opt->output_prefix_data);
 return msgbuf->buf;
}
