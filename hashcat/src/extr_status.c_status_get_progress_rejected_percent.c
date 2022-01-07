
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int hashcat_ctx_t ;


 scalar_t__ status_get_progress_cur (int const*) ;
 scalar_t__ status_get_progress_rejected (int const*) ;

double status_get_progress_rejected_percent (const hashcat_ctx_t *hashcat_ctx)
{
  const u64 progress_cur = status_get_progress_cur (hashcat_ctx);
  const u64 progress_rejected = status_get_progress_rejected (hashcat_ctx);

  double percent_rejected = 0;

  if (progress_cur)
  {
    percent_rejected = ((double) (progress_rejected) / (double) progress_cur) * 100;
  }

  return percent_rejected;
}
