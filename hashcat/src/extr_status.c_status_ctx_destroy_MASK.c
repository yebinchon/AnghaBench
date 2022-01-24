#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hashcat_status_final; int /*<<< orphan*/  mux_hwmon; int /*<<< orphan*/  mux_display; int /*<<< orphan*/  mux_counter; int /*<<< orphan*/  mux_dispatcher; } ;
typedef  TYPE_1__ status_ctx_t ;
struct TYPE_6__ {TYPE_1__* status_ctx; } ;
typedef  TYPE_2__ hashcat_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC3 (hashcat_ctx_t *hashcat_ctx)
{
  status_ctx_t *status_ctx = hashcat_ctx->status_ctx;

  FUNC0 (status_ctx->mux_dispatcher);
  FUNC0 (status_ctx->mux_counter);
  FUNC0 (status_ctx->mux_display);
  FUNC0 (status_ctx->mux_hwmon);

  FUNC1 (status_ctx->hashcat_status_final);

  FUNC2 (status_ctx, 0, sizeof (status_ctx_t));
}