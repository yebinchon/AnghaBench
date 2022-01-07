
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;
typedef int HCFILE ;


 int errno ;
 int event_log_error (int *,char*,char*,...) ;
 int hc_asprintf (char**,char*,char*) ;
 int hc_fclose (int *) ;
 int hc_fopen (int *,char*,char*) ;
 int hc_fscanf (int *,char*,int*) ;
 int hcfree (char*) ;
 char* hm_SYSFS_get_syspath_hwmon (int *,int const) ;
 int strerror (int ) ;

__attribute__((used)) static int hm_SYSFS_get_temperature_current (hashcat_ctx_t *hashcat_ctx, const int backend_device_idx, int *val)
{
  char *syspath = hm_SYSFS_get_syspath_hwmon (hashcat_ctx, backend_device_idx);

  if (syspath == ((void*)0)) return -1;

  char *path;

  hc_asprintf (&path, "%s/temp1_input", syspath);

  hcfree (syspath);

  HCFILE fp;

  if (hc_fopen (&fp, path, "r") == 0)
  {
    event_log_error (hashcat_ctx, "%s: %s", path, strerror (errno));

    hcfree (path);

    return -1;
  }

  int temperature = 0;

  if (hc_fscanf (&fp, "%d", &temperature) != 1)
  {
    hc_fclose (&fp);

    event_log_error (hashcat_ctx, "%s: unexpected data.", path);

    hcfree (path);

    return -1;
  }

  hc_fclose (&fp);

  *val = temperature / 1000;

  hcfree (path);

  return 0;
}
