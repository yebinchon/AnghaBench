
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct diffstat_t {int dummy; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct TYPE_2__ {int has_changes; scalar_t__ diff_from_contents; scalar_t__ exit_with_status; scalar_t__ dirstat_by_line; } ;
struct diff_options {int output_format; int close_file; TYPE_1__ flags; scalar_t__ found_changes; int file; int format_callback_data; int (* format_callback ) (struct diff_queue_struct*,struct diff_options*,int ) ;scalar_t__ stat_sep; scalar_t__ color_moved; } ;
struct diff_filepair {int dummy; } ;


 int DIFF_FORMAT_CALLBACK ;
 int DIFF_FORMAT_CHECKDIFF ;
 int DIFF_FORMAT_DIFFSTAT ;
 int DIFF_FORMAT_DIRSTAT ;
 int DIFF_FORMAT_NAME ;
 int DIFF_FORMAT_NAME_STATUS ;
 int DIFF_FORMAT_NO_OUTPUT ;
 int DIFF_FORMAT_NUMSTAT ;
 int DIFF_FORMAT_PATCH ;
 int DIFF_FORMAT_RAW ;
 int DIFF_FORMAT_SHORTSTAT ;
 int DIFF_FORMAT_SUMMARY ;
 int DIFF_QUEUE_CLEAR (struct diff_queue_struct*) ;
 int DIFF_SYMBOL_SEPARATOR ;
 int DIFF_SYMBOL_STAT_SEP ;
 scalar_t__ check_pair_status (struct diff_filepair*) ;
 int diff_flush_patch (struct diff_filepair*,struct diff_options*) ;
 int diff_flush_patch_all_file_pairs (struct diff_options*) ;
 int diff_flush_stat (struct diff_filepair*,struct diff_options*,struct diffstat_t*) ;
 int diff_free_filepair (struct diff_filepair*) ;
 struct diff_queue_struct diff_queued_diff ;
 int diff_summary (struct diff_options*,struct diff_filepair*) ;
 int emit_diff_symbol (struct diff_options*,int ,int *,int ,int ) ;
 int fclose (int ) ;
 int flush_one_pair (struct diff_filepair*,struct diff_options*) ;
 int free (struct diff_filepair**) ;
 int free_diffstat_info (struct diffstat_t*) ;
 int is_summary_empty (struct diff_queue_struct*) ;
 int memset (struct diffstat_t*,int ,int) ;
 int show_dirstat (struct diff_options*) ;
 int show_dirstat_by_line (struct diffstat_t*,struct diff_options*) ;
 int show_numstat (struct diffstat_t*,struct diff_options*) ;
 int show_shortstats (struct diffstat_t*,struct diff_options*) ;
 int show_stats (struct diffstat_t*,struct diff_options*) ;
 int stub1 (struct diff_queue_struct*,struct diff_options*,int ) ;
 int xfopen (char*,char*) ;

void diff_flush(struct diff_options *options)
{
 struct diff_queue_struct *q = &diff_queued_diff;
 int i, output_format = options->output_format;
 int separator = 0;
 int dirstat_by_line = 0;





 if (!q->nr)
  goto free_queue;

 if (output_format & (DIFF_FORMAT_RAW |
        DIFF_FORMAT_NAME |
        DIFF_FORMAT_NAME_STATUS |
        DIFF_FORMAT_CHECKDIFF)) {
  for (i = 0; i < q->nr; i++) {
   struct diff_filepair *p = q->queue[i];
   if (check_pair_status(p))
    flush_one_pair(p, options);
  }
  separator++;
 }

 if (output_format & DIFF_FORMAT_DIRSTAT && options->flags.dirstat_by_line)
  dirstat_by_line = 1;

 if (output_format & (DIFF_FORMAT_DIFFSTAT|DIFF_FORMAT_SHORTSTAT|DIFF_FORMAT_NUMSTAT) ||
     dirstat_by_line) {
  struct diffstat_t diffstat;

  memset(&diffstat, 0, sizeof(struct diffstat_t));
  for (i = 0; i < q->nr; i++) {
   struct diff_filepair *p = q->queue[i];
   if (check_pair_status(p))
    diff_flush_stat(p, options, &diffstat);
  }
  if (output_format & DIFF_FORMAT_NUMSTAT)
   show_numstat(&diffstat, options);
  if (output_format & DIFF_FORMAT_DIFFSTAT)
   show_stats(&diffstat, options);
  if (output_format & DIFF_FORMAT_SHORTSTAT)
   show_shortstats(&diffstat, options);
  if (output_format & DIFF_FORMAT_DIRSTAT && dirstat_by_line)
   show_dirstat_by_line(&diffstat, options);
  free_diffstat_info(&diffstat);
  separator++;
 }
 if ((output_format & DIFF_FORMAT_DIRSTAT) && !dirstat_by_line)
  show_dirstat(options);

 if (output_format & DIFF_FORMAT_SUMMARY && !is_summary_empty(q)) {
  for (i = 0; i < q->nr; i++) {
   diff_summary(options, q->queue[i]);
  }
  separator++;
 }

 if (output_format & DIFF_FORMAT_NO_OUTPUT &&
     options->flags.exit_with_status &&
     options->flags.diff_from_contents) {





  if (options->close_file)
   fclose(options->file);
  options->file = xfopen("/dev/null", "w");
  options->close_file = 1;
  options->color_moved = 0;
  for (i = 0; i < q->nr; i++) {
   struct diff_filepair *p = q->queue[i];
   if (check_pair_status(p))
    diff_flush_patch(p, options);
   if (options->found_changes)
    break;
  }
 }

 if (output_format & DIFF_FORMAT_PATCH) {
  if (separator) {
   emit_diff_symbol(options, DIFF_SYMBOL_SEPARATOR, ((void*)0), 0, 0);
   if (options->stat_sep)

    emit_diff_symbol(options, DIFF_SYMBOL_STAT_SEP,
       ((void*)0), 0, 0);
  }

  diff_flush_patch_all_file_pairs(options);
 }

 if (output_format & DIFF_FORMAT_CALLBACK)
  options->format_callback(q, options, options->format_callback_data);

 for (i = 0; i < q->nr; i++)
  diff_free_filepair(q->queue[i]);
free_queue:
 free(q->queue);
 DIFF_QUEUE_CLEAR(q);
 if (options->close_file)
  fclose(options->file);






 if (options->flags.diff_from_contents) {
  if (options->found_changes)
   options->flags.has_changes = 1;
  else
   options->flags.has_changes = 0;
 }
}
