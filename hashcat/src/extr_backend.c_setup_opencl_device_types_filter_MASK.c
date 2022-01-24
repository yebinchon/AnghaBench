#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  hashcat_ctx_t ;
typedef  unsigned int cl_device_type ;

/* Variables and functions */
 unsigned int CL_DEVICE_TYPE_ALL ; 
 unsigned int CL_DEVICE_TYPE_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int const) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char*,char*,char**) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC5 (hashcat_ctx_t *hashcat_ctx, const char *opencl_device_types, cl_device_type *out)
{
  cl_device_type opencl_device_types_filter = 0;

  if (opencl_device_types)
  {
    char *device_types = FUNC2 (opencl_device_types);

    if (device_types == NULL) return false;

    char *saveptr = NULL;

    char *next = FUNC3 (device_types, ",", &saveptr);

    do
    {
      const int device_type = (const int) FUNC4 (next, NULL, 10);

      if (device_type < 1 || device_type > 3)
      {
        FUNC0 (hashcat_ctx, "Invalid OpenCL device-type %d specified.", device_type);

        FUNC1 (device_types);

        return false;
      }

      opencl_device_types_filter |= 1U << device_type;

    } while ((next = FUNC3 (NULL, ",", &saveptr)) != NULL);

    FUNC1 (device_types);
  }
  else
  {
    // Do not use CPU by default, this often reduces GPU performance because
    // the CPU is too busy to handle GPU synchronization

    opencl_device_types_filter = CL_DEVICE_TYPE_ALL & ~CL_DEVICE_TYPE_CPU;
  }

  *out = opencl_device_types_filter;

  return true;
}