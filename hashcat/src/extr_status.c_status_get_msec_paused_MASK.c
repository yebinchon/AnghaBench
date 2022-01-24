#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {double msec_paused; scalar_t__ devices_status; int /*<<< orphan*/  timer_paused; } ;
typedef  TYPE_1__ status_ctx_t ;
struct TYPE_5__ {TYPE_1__* status_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 scalar_t__ STATUS_PAUSED ; 
 double FUNC0 (int /*<<< orphan*/ ) ; 

double FUNC1 (const hashcat_ctx_t *hashcat_ctx)
{
  const status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  double msec_paused = status_ctx->msec_paused;

  if (status_ctx->devices_status == STATUS_PAUSED)
  {
    double msec_paused_tmp = FUNC0 (status_ctx->timer_paused);

    msec_paused += msec_paused_tmp;
  }

  return msec_paused;
}