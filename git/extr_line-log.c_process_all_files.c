
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rev_info {int dummy; } ;
struct line_log_data {int diff; int pair; struct line_log_data* next; int path; } ;
struct diff_ranges {int dummy; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_filepair {TYPE_1__* two; } ;
struct TYPE_2__ {int path; } ;


 int assert (struct line_log_data*) ;
 int diff_filepair_dup (struct diff_filepair*) ;
 int free (struct diff_ranges*) ;
 struct line_log_data* line_log_data_copy (struct line_log_data*) ;
 int memcpy (int *,struct diff_ranges*,int) ;
 scalar_t__ process_diff_filepair (struct rev_info*,struct diff_filepair*,struct line_log_data*,struct diff_ranges**) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int process_all_files(struct line_log_data **range_out,
        struct rev_info *rev,
        struct diff_queue_struct *queue,
        struct line_log_data *range)
{
 int i, changed = 0;

 *range_out = line_log_data_copy(range);

 for (i = 0; i < queue->nr; i++) {
  struct diff_ranges *pairdiff = ((void*)0);
  struct diff_filepair *pair = queue->queue[i];
  if (process_diff_filepair(rev, pair, *range_out, &pairdiff)) {
   struct line_log_data *rg = range;
   changed++;
   while (rg && strcmp(rg->path, pair->two->path))
    rg = rg->next;
   assert(rg);
   rg->pair = diff_filepair_dup(queue->queue[i]);
   memcpy(&rg->diff, pairdiff, sizeof(struct diff_ranges));
  }
  free(pairdiff);
 }

 return changed;
}
