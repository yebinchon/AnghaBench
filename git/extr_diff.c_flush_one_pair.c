
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct diff_options {int output_format; int line_termination; int file; int prefix_length; } ;
struct diff_filepair {TYPE_1__* two; } ;
struct TYPE_2__ {char* path; } ;


 int DIFF_FORMAT_CHECKDIFF ;
 int DIFF_FORMAT_NAME ;
 int DIFF_FORMAT_NAME_STATUS ;
 int DIFF_FORMAT_RAW ;
 int diff_flush_checkdiff (struct diff_filepair*,struct diff_options*) ;
 int diff_flush_raw (struct diff_filepair*,struct diff_options*) ;
 char* diff_line_prefix (struct diff_options*) ;
 int fprintf (int ,char*,char*) ;
 int strip_prefix (int ,char const**,char const**) ;
 int write_name_quoted (char const*,int ,int ) ;

__attribute__((used)) static void flush_one_pair(struct diff_filepair *p, struct diff_options *opt)
{
 int fmt = opt->output_format;

 if (fmt & DIFF_FORMAT_CHECKDIFF)
  diff_flush_checkdiff(p, opt);
 else if (fmt & (DIFF_FORMAT_RAW | DIFF_FORMAT_NAME_STATUS))
  diff_flush_raw(p, opt);
 else if (fmt & DIFF_FORMAT_NAME) {
  const char *name_a, *name_b;
  name_a = p->two->path;
  name_b = ((void*)0);
  strip_prefix(opt->prefix_length, &name_a, &name_b);
  fprintf(opt->file, "%s", diff_line_prefix(opt));
  write_name_quoted(name_a, opt->file, opt->line_termination);
 }
}
