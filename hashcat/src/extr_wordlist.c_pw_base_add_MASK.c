#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pw_pre_t ;
struct TYPE_3__ {scalar_t__ pws_base_cnt; scalar_t__ kernel_power; scalar_t__ pws_base_buf; } ;
typedef  TYPE_1__ hc_device_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC2 (hc_device_param_t *device_param, pw_pre_t *pw_pre)
{
  if (device_param->pws_base_cnt < device_param->kernel_power)
  {
    FUNC1 (device_param->pws_base_buf + device_param->pws_base_cnt, pw_pre, sizeof (pw_pre_t));

    device_param->pws_base_cnt++;
  }
  else
  {
    FUNC0 (stderr, "BUG pw_base_add()!!\n");

    return;
  }
}