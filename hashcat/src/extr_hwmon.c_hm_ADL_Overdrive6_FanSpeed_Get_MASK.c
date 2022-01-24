#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ hm_adl; } ;
typedef  TYPE_1__ hwmon_ctx_t ;
struct TYPE_7__ {TYPE_1__* hwmon_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;
struct TYPE_8__ {int (* ADL_Overdrive6_FanSpeed_Get ) (int,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_3__ ADL_PTR ;
typedef  int /*<<< orphan*/  ADLOD6FanSpeedInfo ;

/* Variables and functions */
 int const ADL_ERR_NOT_SUPPORTED ; 
 int const ADL_OK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int const) ; 
 int FUNC1 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2 (hashcat_ctx_t *hashcat_ctx, int iAdapterIndex, ADLOD6FanSpeedInfo *lpFanSpeedInfo)
{
  hwmon_ctx_t *hwmon_ctx = hashcat_ctx->hwmon_ctx;

  ADL_PTR *adl = (ADL_PTR *) hwmon_ctx->hm_adl;

  const int ADL_rc = adl->ADL_Overdrive6_FanSpeed_Get (iAdapterIndex, lpFanSpeedInfo);

  if ((ADL_rc != ADL_OK) && (ADL_rc != ADL_ERR_NOT_SUPPORTED)) // exception allowed only here
  {
    FUNC0 (hashcat_ctx, "ADL_Overdrive6_FanSpeed_Get(): %d", ADL_rc);

    return -1;
  }

  return 0;
}