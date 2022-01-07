
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
struct diff_options {int output_prefix_data; struct strbuf* (* output_prefix ) (struct diff_options*,int ) ;} ;


 struct strbuf* stub1 (struct diff_options*,int ) ;

__attribute__((used)) static char *output_prefix(struct diff_options *opt)
{
 char *prefix = "";

 if (opt->output_prefix) {
  struct strbuf *sb = opt->output_prefix(opt, opt->output_prefix_data);
  prefix = sb->buf;
 }

 return prefix;
}
