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
typedef  unsigned int u32 ;
typedef  int /*<<< orphan*/  hashcat_ctx_t ;
typedef  int /*<<< orphan*/  HM_ADAPTER_NVML ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3 (hashcat_ctx_t *hashcat_ctx, HM_ADAPTER_NVML *nvmlGPUHandle)
{
  unsigned int deviceCount = 0;

  FUNC1 (hashcat_ctx, &deviceCount);

  if (deviceCount == 0)
  {
    FUNC0 (hashcat_ctx, "No NVML adapters found.");

    return 0;
  }

  for (u32 i = 0; i < deviceCount; i++)
  {
    if (FUNC2 (hashcat_ctx, i, &nvmlGPUHandle[i]) == -1) break;

    // can be used to determine if the device by index matches the cuda device by index
    // char name[100]; memset (name, 0, sizeof (name));
    // hm_NVML_nvmlDeviceGetName (hashcat_ctx, nvGPUHandle[i], name, sizeof (name) - 1);
  }

  return (deviceCount);
}