
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvmlReturn_t ;
struct TYPE_3__ {char const* (* nvmlErrorString ) (int const) ;} ;
typedef TYPE_1__ NVML_PTR ;


 char const* stub1 (int const) ;

__attribute__((used)) static const char *hm_NVML_nvmlErrorString (NVML_PTR *nvml, const nvmlReturn_t nvml_rc)
{
  return nvml->nvmlErrorString (nvml_rc);
}
