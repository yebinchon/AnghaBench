#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int enabled; int /*<<< orphan*/  hm_device; int /*<<< orphan*/  od_clock_mem_status; scalar_t__ hm_sysfs; scalar_t__ hm_adl; scalar_t__ hm_nvapi; scalar_t__ hm_nvml; } ;
typedef  TYPE_1__ hwmon_ctx_t ;
struct TYPE_13__ {TYPE_1__* hwmon_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void FUNC9 (hashcat_ctx_t *hashcat_ctx)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;

  if (hwmon_ctx->enabled == false) return;

  // unload shared libraries

  if (hwmon_ctx->hm_nvml)
  {
    FUNC3 (hashcat_ctx);

    FUNC7 (hashcat_ctx);
  }

  if (hwmon_ctx->hm_nvapi)
  {
    FUNC4 (hashcat_ctx);

    FUNC6 (hashcat_ctx);
  }

  if (hwmon_ctx->hm_adl)
  {
    FUNC2 (hashcat_ctx);

    FUNC0 (hashcat_ctx);
  }

  if (hwmon_ctx->hm_sysfs)
  {

    FUNC8 (hashcat_ctx);
  }

  // free memory

  FUNC1 (hwmon_ctx->od_clock_mem_status);

  FUNC1 (hwmon_ctx->hm_device);

  FUNC5 (hwmon_ctx, 0, sizeof (hwmon_ctx_t));
}