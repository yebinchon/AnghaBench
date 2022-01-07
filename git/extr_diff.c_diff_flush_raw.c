
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct diff_options {int line_termination; int output_format; int file; int prefix_length; int abbrev; } ;
struct diff_filepair {int status; TYPE_2__* two; TYPE_1__* one; scalar_t__ score; } ;
struct TYPE_4__ {int mode; char* path; int oid; } ;
struct TYPE_3__ {int mode; char* path; int oid; } ;


 int DIFF_FORMAT_NAME_STATUS ;
 scalar_t__ DIFF_STATUS_COPIED ;
 scalar_t__ DIFF_STATUS_RENAMED ;
 char* diff_aligned_abbrev (int *,int ) ;
 char* diff_line_prefix (struct diff_options*) ;
 int fprintf (int ,char*,...) ;
 int similarity_index (struct diff_filepair*) ;
 int strip_prefix (int ,char const**,char const**) ;
 int write_name_quoted (char const*,int ,int) ;

__attribute__((used)) static void diff_flush_raw(struct diff_filepair *p, struct diff_options *opt)
{
 int line_termination = opt->line_termination;
 int inter_name_termination = line_termination ? '\t' : '\0';

 fprintf(opt->file, "%s", diff_line_prefix(opt));
 if (!(opt->output_format & DIFF_FORMAT_NAME_STATUS)) {
  fprintf(opt->file, ":%06o %06o %s ", p->one->mode, p->two->mode,
   diff_aligned_abbrev(&p->one->oid, opt->abbrev));
  fprintf(opt->file, "%s ",
   diff_aligned_abbrev(&p->two->oid, opt->abbrev));
 }
 if (p->score) {
  fprintf(opt->file, "%c%03d%c", p->status, similarity_index(p),
   inter_name_termination);
 } else {
  fprintf(opt->file, "%c%c", p->status, inter_name_termination);
 }

 if (p->status == DIFF_STATUS_COPIED ||
     p->status == DIFF_STATUS_RENAMED) {
  const char *name_a, *name_b;
  name_a = p->one->path;
  name_b = p->two->path;
  strip_prefix(opt->prefix_length, &name_a, &name_b);
  write_name_quoted(name_a, opt->file, inter_name_termination);
  write_name_quoted(name_b, opt->file, line_termination);
 } else {
  const char *name_a, *name_b;
  name_a = p->one->mode ? p->one->path : p->two->path;
  name_b = ((void*)0);
  strip_prefix(opt->prefix_length, &name_a, &name_b);
  write_name_quoted(name_a, opt->file, line_termination);
 }
}
