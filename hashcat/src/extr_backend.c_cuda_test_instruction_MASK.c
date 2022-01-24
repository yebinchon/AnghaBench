#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ nvrtcResult ;
typedef  int /*<<< orphan*/  nvrtcProgram ;
struct TYPE_13__ {TYPE_2__* backend_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;
struct TYPE_14__ {scalar_t__ cuda; scalar_t__ nvrtc; } ;
typedef  TYPE_2__ backend_ctx_t ;
struct TYPE_16__ {scalar_t__ (* cuModuleLoadDataEx ) (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_15__ {scalar_t__ (* nvrtcCompileProgram ) (int /*<<< orphan*/ ,int,char const* const*) ;} ;
typedef  TYPE_3__ NVRTC_PTR ;
typedef  scalar_t__ CUresult ;
typedef  int /*<<< orphan*/  CUmodule ;
typedef  TYPE_4__ CUDA_PTR ;

/* Variables and functions */
 scalar_t__ const CUDA_SUCCESS ; 
 scalar_t__ const NVRTC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int const,int const) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,size_t*) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int,char const* const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC13 (hashcat_ctx_t *hashcat_ctx, const int sm_major, const int sm_minor, const char *kernel_buf)
{
  nvrtcProgram program;

  if (FUNC2 (hashcat_ctx, &program, kernel_buf, "test_instruction", 0, NULL, NULL) == -1) return false;

  char *nvrtc_options[4];

  nvrtc_options[0] = "--restrict";
  nvrtc_options[1] = "--gpu-architecture";

  FUNC0 (&nvrtc_options[2], "compute_%d%d", sm_major, sm_minor);

  nvrtc_options[3] = NULL;

  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  NVRTC_PTR *nvrtc = (NVRTC_PTR *) backend_ctx->nvrtc;

  const nvrtcResult NVRTC_err = nvrtc->nvrtcCompileProgram (program, 3, (const char * const *) nvrtc_options);

  FUNC8 (nvrtc_options[2]);

  size_t build_log_size = 0;

  FUNC7 (hashcat_ctx, program, &build_log_size);

  if (NVRTC_err != NVRTC_SUCCESS)
  {
    char *build_log = (char *) FUNC9 (build_log_size + 1);

    if (FUNC6 (hashcat_ctx, program, build_log) == -1) return false;

    FUNC10 (build_log);

    FUNC8 (build_log);

    FUNC3 (hashcat_ctx, &program);

    return false;
  }

  size_t binary_size;

  if (FUNC5 (hashcat_ctx, program, &binary_size) == -1) return false;

  char *binary = (char *) FUNC9 (binary_size);

  if (FUNC4 (hashcat_ctx, program, binary) == -1)
  {
    FUNC8 (binary);

    return false;
  }

  CUDA_PTR *cuda = (CUDA_PTR *) backend_ctx->cuda;

  CUmodule cuda_module;

  const CUresult CU_err = cuda->cuModuleLoadDataEx (&cuda_module, binary, 0, NULL, NULL);

  if (CU_err != CUDA_SUCCESS)
  {
    FUNC8 (binary);

    return false;
  }

  FUNC8 (binary);

  if (FUNC1 (hashcat_ctx, cuda_module) == -1) return false;

  if (FUNC3 (hashcat_ctx, &program) == -1) return false;

  return true;
}