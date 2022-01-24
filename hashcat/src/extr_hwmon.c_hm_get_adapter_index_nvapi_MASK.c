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
typedef  scalar_t__ NvU32 ;
typedef  int /*<<< orphan*/  HM_ADAPTER_NVAPI ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static int FUNC2 (hashcat_ctx_t *hashcat_ctx, HM_ADAPTER_NVAPI *nvapiGPUHandle)
{
  NvU32 pGpuCount;

  if (FUNC1 (hashcat_ctx, nvapiGPUHandle, &pGpuCount) == -1) return 0;

  if (pGpuCount == 0)
  {
    FUNC0 (hashcat_ctx, "No NvAPI adapters found.");

    return 0;
  }

  return (pGpuCount);
}