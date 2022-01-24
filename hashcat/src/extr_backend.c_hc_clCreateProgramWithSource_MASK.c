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
struct TYPE_6__ {TYPE_2__* backend_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;
typedef  int /*<<< orphan*/  cl_uint ;
typedef  int /*<<< orphan*/  cl_program ;
typedef  scalar_t__ cl_int ;
typedef  int /*<<< orphan*/  cl_context ;
struct TYPE_7__ {scalar_t__ ocl; } ;
typedef  TYPE_2__ backend_ctx_t ;
struct TYPE_8__ {int /*<<< orphan*/  (* clCreateProgramWithSource ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,size_t const*,scalar_t__*) ;} ;
typedef  TYPE_3__ OCL_PTR ;

/* Variables and functions */
 scalar_t__ CL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**,size_t const*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

int FUNC3 (hashcat_ctx_t *hashcat_ctx, cl_context context, cl_uint count, const char **strings, const size_t *lengths, cl_program *program)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  OCL_PTR *ocl = (OCL_PTR *) backend_ctx->ocl;

  cl_int CL_err;

  *program = ocl->clCreateProgramWithSource (context, count, strings, lengths, &CL_err);

  if (CL_err != CL_SUCCESS)
  {
    FUNC0 (hashcat_ctx, "clCreateProgramWithSource(): %s", FUNC2 (CL_err));

    return -1;
  }

  return 0;
}