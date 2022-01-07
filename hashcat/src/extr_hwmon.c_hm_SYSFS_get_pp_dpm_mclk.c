
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;
typedef int buf ;
typedef int HCFILE ;


 int HCBUFSIZ_TINY ;
 int errno ;
 int event_log_error (int *,char*,char*,int ) ;
 int hc_asprintf (char**,char*,char*) ;
 int hc_fclose (int *) ;
 int hc_feof (int *) ;
 char* hc_fgets (char*,int,int *) ;
 int hc_fopen (int *,char*,char*) ;
 int hcfree (char*) ;
 char* hm_SYSFS_get_syspath_device (int *,int const) ;
 int sscanf (char*,char*,int*,int*) ;
 int strerror (int ) ;
 size_t strlen (char*) ;

__attribute__((used)) static int hm_SYSFS_get_pp_dpm_mclk (hashcat_ctx_t *hashcat_ctx, const int backend_device_idx, int *val)
{
  char *syspath = hm_SYSFS_get_syspath_device (hashcat_ctx, backend_device_idx);

  if (syspath == ((void*)0)) return -1;

  char *path;

  hc_asprintf (&path, "%s/pp_dpm_mclk", syspath);

  hcfree (syspath);

  HCFILE fp;

  if (hc_fopen (&fp, path, "r") == 0)
  {
    event_log_error (hashcat_ctx, "%s: %s", path, strerror (errno));

    hcfree (path);

    return -1;
  }

  int clockfreq = 0;

  while (!hc_feof (&fp))
  {
    char buf[HCBUFSIZ_TINY];

    char *ptr = hc_fgets (buf, sizeof (buf), &fp);

    if (ptr == ((void*)0)) continue;

    size_t len = strlen (ptr);

    if (len < 2) continue;

    if (ptr[len - 2] != '*') continue;

    int profile = 0;

    int rc = sscanf (ptr, "%d: %dMHz", &profile, &clockfreq);

    if (rc == 2) break;
  }

  hc_fclose (&fp);

  *val = clockfreq;

  hcfree (path);

  return 0;
}
