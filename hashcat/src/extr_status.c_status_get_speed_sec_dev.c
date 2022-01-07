
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;


 int HCBUFSIZ_TINY ;
 int format_speed_display (double const,char*,int ) ;
 scalar_t__ hcmalloc (int ) ;
 double status_get_hashes_msec_dev (int const*,int const) ;

char *status_get_speed_sec_dev (const hashcat_ctx_t *hashcat_ctx, const int backend_devices_idx)
{
  const double hashes_msec_dev = status_get_hashes_msec_dev (hashcat_ctx, backend_devices_idx);

  char *display = (char *) hcmalloc (HCBUFSIZ_TINY);

  format_speed_display (hashes_msec_dev * 1000, display, HCBUFSIZ_TINY);

  return display;
}
