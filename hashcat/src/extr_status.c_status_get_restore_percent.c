
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int hashcat_ctx_t ;


 scalar_t__ status_get_restore_point (int const*) ;
 scalar_t__ status_get_restore_total (int const*) ;

double status_get_restore_percent (const hashcat_ctx_t *hashcat_ctx)
{
  double restore_percent = 0;

  const u64 restore_point = status_get_restore_point (hashcat_ctx);
  const u64 restore_total = status_get_restore_total (hashcat_ctx);

  if (restore_total > 0)
  {
    restore_percent = ((double) restore_point / (double) restore_total) * 100;
  }

  return restore_percent;
}
