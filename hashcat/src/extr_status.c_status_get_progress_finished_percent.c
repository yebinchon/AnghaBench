
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int hashcat_ctx_t ;


 scalar_t__ status_get_progress_cur_relative_skip (int const*) ;
 scalar_t__ status_get_progress_end_relative_skip (int const*) ;

double status_get_progress_finished_percent (const hashcat_ctx_t *hashcat_ctx)
{
  const u64 progress_cur_relative_skip = status_get_progress_cur_relative_skip (hashcat_ctx);
  const u64 progress_end_relative_skip = status_get_progress_end_relative_skip (hashcat_ctx);

  double progress_finished_percent = 0;

  if (progress_end_relative_skip > 0)
  {
    progress_finished_percent = ((double) progress_cur_relative_skip / (double) progress_end_relative_skip) * 100;
  }

  return progress_finished_percent;
}
