
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int hashcat_ctx_t ;


 scalar_t__ status_get_progress_cur (int const*) ;
 scalar_t__ status_get_progress_skip (int const*) ;

u64 status_get_progress_cur_relative_skip (const hashcat_ctx_t *hashcat_ctx)
{
  const u64 progress_skip = status_get_progress_skip (hashcat_ctx);
  const u64 progress_cur = status_get_progress_cur (hashcat_ctx);

  u64 progress_cur_relative_skip = 0;

  if (progress_cur > 0)
  {
    progress_cur_relative_skip = progress_cur - progress_skip;
  }

  return progress_cur_relative_skip;
}
