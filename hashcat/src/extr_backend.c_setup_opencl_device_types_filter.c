
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashcat_ctx_t ;
typedef unsigned int cl_device_type ;


 unsigned int CL_DEVICE_TYPE_ALL ;
 unsigned int CL_DEVICE_TYPE_CPU ;
 int event_log_error (int *,char*,int const) ;
 int hcfree (char*) ;
 char* hcstrdup (char const*) ;
 char* strtok_r (char*,char*,char**) ;
 scalar_t__ strtol (char*,int *,int) ;

__attribute__((used)) static bool setup_opencl_device_types_filter (hashcat_ctx_t *hashcat_ctx, const char *opencl_device_types, cl_device_type *out)
{
  cl_device_type opencl_device_types_filter = 0;

  if (opencl_device_types)
  {
    char *device_types = hcstrdup (opencl_device_types);

    if (device_types == ((void*)0)) return 0;

    char *saveptr = ((void*)0);

    char *next = strtok_r (device_types, ",", &saveptr);

    do
    {
      const int device_type = (const int) strtol (next, ((void*)0), 10);

      if (device_type < 1 || device_type > 3)
      {
        event_log_error (hashcat_ctx, "Invalid OpenCL device-type %d specified.", device_type);

        hcfree (device_types);

        return 0;
      }

      opencl_device_types_filter |= 1U << device_type;

    } while ((next = strtok_r (((void*)0), ",", &saveptr)) != ((void*)0));

    hcfree (device_types);
  }
  else
  {



    opencl_device_types_filter = CL_DEVICE_TYPE_ALL & ~CL_DEVICE_TYPE_CPU;
  }

  *out = opencl_device_types_filter;

  return 1;
}
