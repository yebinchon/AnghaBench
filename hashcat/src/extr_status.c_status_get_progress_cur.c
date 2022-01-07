
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const u64 ;
typedef int hashcat_ctx_t ;


 scalar_t__ const status_get_progress_done (int const*) ;
 scalar_t__ const status_get_progress_rejected (int const*) ;
 scalar_t__ const status_get_progress_restored (int const*) ;

u64 status_get_progress_cur (const hashcat_ctx_t *hashcat_ctx)
{
  const u64 progress_done = status_get_progress_done (hashcat_ctx);
  const u64 progress_rejected = status_get_progress_rejected (hashcat_ctx);
  const u64 progress_restored = status_get_progress_restored (hashcat_ctx);

  const u64 progress_cur = progress_done + progress_rejected + progress_restored;

  return progress_cur;
}
