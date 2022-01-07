
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int hashcat_ctx_t ;


 int PROGRESS_MODE_KEYSPACE_KNOWN ;
 int PROGRESS_MODE_KEYSPACE_UNKNOWN ;
 scalar_t__ status_get_progress_end_relative_skip (int const*) ;

int status_get_progress_mode (const hashcat_ctx_t *hashcat_ctx)
{
  const u64 progress_end_relative_skip = status_get_progress_end_relative_skip (hashcat_ctx);

  if (progress_end_relative_skip > 0)
  {
    return PROGRESS_MODE_KEYSPACE_KNOWN;
  }
  return PROGRESS_MODE_KEYSPACE_UNKNOWN;
}
