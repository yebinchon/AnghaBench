#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ pcie_bus; scalar_t__ pcie_device; scalar_t__ pcie_function; } ;
typedef  TYPE_1__ hc_device_param_t ;

/* Variables and functions */

__attribute__((used)) static bool FUNC0 (const hc_device_param_t *src, const hc_device_param_t *dst)
{
  if (src->pcie_bus      != dst->pcie_bus)      return false;
  if (src->pcie_device   != dst->pcie_device)   return false;
  if (src->pcie_function != dst->pcie_function) return false;

  return true;
}