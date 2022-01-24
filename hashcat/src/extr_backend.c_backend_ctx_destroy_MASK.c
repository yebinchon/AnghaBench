#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* backend_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;
struct TYPE_9__ {int enabled; int /*<<< orphan*/  opencl_platforms_version; int /*<<< orphan*/  opencl_platforms_vendor_id; int /*<<< orphan*/  opencl_platforms_vendor; int /*<<< orphan*/  opencl_platforms_name; int /*<<< orphan*/  opencl_platforms_devices_cnt; int /*<<< orphan*/  opencl_platforms_devices; int /*<<< orphan*/  opencl_platforms; scalar_t__ ocl; int /*<<< orphan*/  devices_param; } ;
typedef  TYPE_2__ backend_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

void FUNC5 (hashcat_ctx_t *hashcat_ctx)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  if (backend_ctx->enabled == false) return;

  FUNC1 (backend_ctx->devices_param);

  if (backend_ctx->ocl)
  {
    FUNC1 (backend_ctx->opencl_platforms);
    FUNC1 (backend_ctx->opencl_platforms_devices);
    FUNC1 (backend_ctx->opencl_platforms_devices_cnt);
    FUNC1 (backend_ctx->opencl_platforms_name);
    FUNC1 (backend_ctx->opencl_platforms_vendor);
    FUNC1 (backend_ctx->opencl_platforms_vendor_id);
    FUNC1 (backend_ctx->opencl_platforms_version);
  }

  FUNC3 (hashcat_ctx);
  FUNC0  (hashcat_ctx);
  FUNC4   (hashcat_ctx);

  FUNC2 (backend_ctx, 0, sizeof (backend_ctx_t));
}