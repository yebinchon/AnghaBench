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
struct TYPE_4__ {int run_main_level1; int run_main_level2; int run_main_level3; int run_thread_level1; int run_thread_level2; int shutdown_inner; int shutdown_outer; int checkpoint_shutdown; int /*<<< orphan*/  mux_hwmon; int /*<<< orphan*/  mux_display; int /*<<< orphan*/  mux_counter; int /*<<< orphan*/  mux_dispatcher; int /*<<< orphan*/ * hashcat_status_final; int /*<<< orphan*/  devices_status; } ;
typedef  TYPE_1__ status_ctx_t ;
typedef  int /*<<< orphan*/  hashcat_status_t ;
struct TYPE_5__ {TYPE_1__* status_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 

int FUNC2 (hashcat_ctx_t *hashcat_ctx)
{
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  status_ctx->devices_status = STATUS_INIT;

  status_ctx->run_main_level1     = true;
  status_ctx->run_main_level2     = true;
  status_ctx->run_main_level3     = true;
  status_ctx->run_thread_level1   = true;
  status_ctx->run_thread_level2   = true;

  status_ctx->shutdown_inner      = false;
  status_ctx->shutdown_outer      = false;

  status_ctx->checkpoint_shutdown = false;

  status_ctx->hashcat_status_final = (hashcat_status_t *) FUNC1 (sizeof (hashcat_status_t));

  FUNC0 (status_ctx->mux_dispatcher);
  FUNC0 (status_ctx->mux_counter);
  FUNC0 (status_ctx->mux_display);
  FUNC0 (status_ctx->mux_hwmon);

  return 0;
}