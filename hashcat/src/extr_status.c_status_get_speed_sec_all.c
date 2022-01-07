
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;


 int HCBUFSIZ_TINY ;
 int format_speed_display (double const,char*,int ) ;
 scalar_t__ hcmalloc (int ) ;
 double status_get_hashes_msec_all (int const*) ;

char *status_get_speed_sec_all (const hashcat_ctx_t *hashcat_ctx)
{
  const double hashes_msec_all = status_get_hashes_msec_all (hashcat_ctx);

  char *display = (char *) hcmalloc (HCBUFSIZ_TINY);

  format_speed_display (hashes_msec_all * 1000, display, HCBUFSIZ_TINY);

  return display;
}
