
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;


 double status_get_msec_paused (int const*) ;
 double status_get_msec_running (int const*) ;

double status_get_msec_real (const hashcat_ctx_t *hashcat_ctx)
{
  const double msec_running = status_get_msec_running (hashcat_ctx);
  const double msec_paused = status_get_msec_paused (hashcat_ctx);

  const double msec_real = msec_running - msec_paused;

  return msec_real;
}
