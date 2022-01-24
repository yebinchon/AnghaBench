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
typedef  scalar_t__ nvrtcResult ;
typedef  int /*<<< orphan*/  nvrtcProgram ;
struct TYPE_6__ {TYPE_2__* backend_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;
struct TYPE_7__ {scalar_t__ nvrtc; } ;
typedef  TYPE_2__ backend_ctx_t ;
struct TYPE_8__ {scalar_t__ (* nvrtcCompileProgram ) (int /*<<< orphan*/ ,int,char const* const*) ;int /*<<< orphan*/  (* nvrtcGetErrorString ) (scalar_t__ const) ;} ;
typedef  TYPE_3__ NVRTC_PTR ;

/* Variables and functions */
 scalar_t__ const NVRTC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,char const* const*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__ const) ; 

int FUNC3 (hashcat_ctx_t *hashcat_ctx, nvrtcProgram prog, int numOptions, const char * const *options)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  NVRTC_PTR *nvrtc = (NVRTC_PTR *) backend_ctx->nvrtc;

  const nvrtcResult NVRTC_err = nvrtc->nvrtcCompileProgram (prog, numOptions, options);

  if (NVRTC_err != NVRTC_SUCCESS)
  {
    FUNC0 (hashcat_ctx, "nvrtcCompileProgram(): %s", nvrtc->nvrtcGetErrorString (NVRTC_err));

    return -1;
  }

  return 0;
}