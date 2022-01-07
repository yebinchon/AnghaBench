
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u64 ;
typedef int hashcat_ctx_t ;


 int event_log_error (int *,char*,int const) ;
 int hcfree (char*) ;
 char* hcstrdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;
 scalar_t__ strtol (char*,int *,int) ;

__attribute__((used)) static bool setup_backend_devices_filter (hashcat_ctx_t *hashcat_ctx, const char *backend_devices, u64 *out)
{
  u64 backend_devices_filter = 0;

  if (backend_devices)
  {
    char *devices = hcstrdup (backend_devices);

    if (devices == ((void*)0)) return 0;

    char *saveptr = ((void*)0);

    char *next = strtok_r (devices, ",", &saveptr);

    do
    {
      const int backend_device_id = (const int) strtol (next, ((void*)0), 10);

      if ((backend_device_id <= 0) || (backend_device_id >= 64))
      {
        event_log_error (hashcat_ctx, "Invalid device_id %d specified.", backend_device_id);

        hcfree (devices);

        return 0;
      }

      backend_devices_filter |= 1ULL << (backend_device_id - 1);

    } while ((next = strtok_r ((char *) ((void*)0), ",", &saveptr)) != ((void*)0));

    hcfree (devices);
  }
  else
  {
    backend_devices_filter = -1ULL;
  }

  *out = backend_devices_filter;

  return 1;
}
