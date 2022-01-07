
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct strbuf {int len; int buf; } ;
struct TYPE_4__ {int output_format; int file; int output_prefix_data; struct strbuf* (* output_prefix ) (TYPE_1__*,int ) ;} ;
struct rev_info {scalar_t__ commit_format; TYPE_1__ diffopt; scalar_t__ shown_dashes; scalar_t__ verbose_header; int no_commit_id; scalar_t__ loginfo; } ;


 scalar_t__ CMIT_FMT_ONELINE ;
 int DIFF_FORMAT_DIFFSTAT ;
 int DIFF_FORMAT_NO_OUTPUT ;
 int DIFF_FORMAT_PATCH ;
 int commit_format_is_empty (scalar_t__) ;
 int diff_flush (TYPE_1__*) ;
 scalar_t__ diff_queue_is_empty () ;
 int diffcore_std (TYPE_1__*) ;
 int fprintf (int ,char*) ;
 int fwrite (int ,int ,int,int ) ;
 int putc (char,int ) ;
 int show_log (struct rev_info*) ;
 struct strbuf* stub1 (TYPE_1__*,int ) ;

int log_tree_diff_flush(struct rev_info *opt)
{
 opt->shown_dashes = 0;
 diffcore_std(&opt->diffopt);

 if (diff_queue_is_empty()) {
  int saved_fmt = opt->diffopt.output_format;
  opt->diffopt.output_format = DIFF_FORMAT_NO_OUTPUT;
  diff_flush(&opt->diffopt);
  opt->diffopt.output_format = saved_fmt;
  return 0;
 }

 if (opt->loginfo && !opt->no_commit_id) {
  show_log(opt);
  if ((opt->diffopt.output_format & ~DIFF_FORMAT_NO_OUTPUT) &&
      opt->verbose_header &&
      opt->commit_format != CMIT_FMT_ONELINE &&
      !commit_format_is_empty(opt->commit_format)) {






   int pch = DIFF_FORMAT_DIFFSTAT | DIFF_FORMAT_PATCH;
   if (opt->diffopt.output_prefix) {
    struct strbuf *msg = ((void*)0);
    msg = opt->diffopt.output_prefix(&opt->diffopt,
     opt->diffopt.output_prefix_data);
    fwrite(msg->buf, msg->len, 1, opt->diffopt.file);
   }
   if (!opt->shown_dashes &&
       (pch & opt->diffopt.output_format) == pch)
    fprintf(opt->diffopt.file, "---");
   putc('\n', opt->diffopt.file);
  }
 }
 diff_flush(&opt->diffopt);
 return 1;
}
