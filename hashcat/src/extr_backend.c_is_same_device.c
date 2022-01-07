
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pcie_bus; scalar_t__ pcie_device; scalar_t__ pcie_function; } ;
typedef TYPE_1__ hc_device_param_t ;



__attribute__((used)) static bool is_same_device (const hc_device_param_t *src, const hc_device_param_t *dst)
{
  if (src->pcie_bus != dst->pcie_bus) return 0;
  if (src->pcie_device != dst->pcie_device) return 0;
  if (src->pcie_function != dst->pcie_function) return 0;

  return 1;
}
