
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int is_cuda; scalar_t__ is_opencl; scalar_t__ device_processors; scalar_t__ device_maxclock_frequency; scalar_t__ device_maxworkgroup_size; scalar_t__ sm_major; scalar_t__ sm_minor; scalar_t__ kernel_exec_timeout; int opencl_driver_version; int opencl_device_version; int opencl_device_vendor; int device_name; } ;
typedef TYPE_1__ hc_device_param_t ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static bool is_same_device_type (const hc_device_param_t *src, const hc_device_param_t *dst)
{
  if (strcmp (src->device_name, dst->device_name) != 0) return 0;

  if (src->is_cuda != dst->is_cuda) return 0;
  if (src->is_opencl != dst->is_opencl) return 0;

  if (src->is_cuda == 1)
  {
    if (strcmp (src->opencl_device_vendor, dst->opencl_device_vendor) != 0) return 0;
    if (strcmp (src->opencl_device_version, dst->opencl_device_version) != 0) return 0;
    if (strcmp (src->opencl_driver_version, dst->opencl_driver_version) != 0) return 0;
  }

  if (src->device_processors != dst->device_processors) return 0;
  if (src->device_maxclock_frequency != dst->device_maxclock_frequency) return 0;
  if (src->device_maxworkgroup_size != dst->device_maxworkgroup_size) return 0;





  if (src->sm_major != dst->sm_major) return 0;
  if (src->sm_minor != dst->sm_minor) return 0;

  if (src->kernel_exec_timeout != dst->kernel_exec_timeout) return 0;

  return 1;
}
