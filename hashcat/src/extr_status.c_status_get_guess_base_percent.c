
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;


 int status_get_guess_base_count (int const*) ;
 int status_get_guess_base_offset (int const*) ;

double status_get_guess_base_percent (const hashcat_ctx_t *hashcat_ctx)
{
  const int guess_base_offset = status_get_guess_base_offset (hashcat_ctx);
  const int guess_base_count = status_get_guess_base_count (hashcat_ctx);

  if (guess_base_count == 0) return 0;

  return ((double) guess_base_offset / (double) guess_base_count) * 100;
}
