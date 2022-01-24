#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* backend_ctx; } ;
typedef  TYPE_1__ hashcat_ctx_t ;
struct TYPE_8__ {scalar_t__ ocl; } ;
typedef  TYPE_2__ backend_ctx_t ;
struct TYPE_9__ {int /*<<< orphan*/ * lib; } ;
typedef  TYPE_3__ OCL_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  OCL_CLBUILDPROGRAM ; 
 int /*<<< orphan*/  OCL_CLCREATEBUFFER ; 
 int /*<<< orphan*/  OCL_CLCREATECOMMANDQUEUE ; 
 int /*<<< orphan*/  OCL_CLCREATECONTEXT ; 
 int /*<<< orphan*/  OCL_CLCREATEKERNEL ; 
 int /*<<< orphan*/  OCL_CLCREATEPROGRAMWITHBINARY ; 
 int /*<<< orphan*/  OCL_CLCREATEPROGRAMWITHSOURCE ; 
 int /*<<< orphan*/  OCL_CLENQUEUECOPYBUFFER ; 
 int /*<<< orphan*/  OCL_CLENQUEUEMAPBUFFER ; 
 int /*<<< orphan*/  OCL_CLENQUEUENDRANGEKERNEL ; 
 int /*<<< orphan*/  OCL_CLENQUEUEREADBUFFER ; 
 int /*<<< orphan*/  OCL_CLENQUEUEUNMAPMEMOBJECT ; 
 int /*<<< orphan*/  OCL_CLENQUEUEWRITEBUFFER ; 
 int /*<<< orphan*/  OCL_CLFINISH ; 
 int /*<<< orphan*/  OCL_CLFLUSH ; 
 int /*<<< orphan*/  OCL_CLGETDEVICEIDS ; 
 int /*<<< orphan*/  OCL_CLGETDEVICEINFO ; 
 int /*<<< orphan*/  OCL_CLGETEVENTINFO ; 
 int /*<<< orphan*/  OCL_CLGETEVENTPROFILINGINFO ; 
 int /*<<< orphan*/  OCL_CLGETKERNELWORKGROUPINFO ; 
 int /*<<< orphan*/  OCL_CLGETPLATFORMIDS ; 
 int /*<<< orphan*/  OCL_CLGETPLATFORMINFO ; 
 int /*<<< orphan*/  OCL_CLGETPROGRAMBUILDINFO ; 
 int /*<<< orphan*/  OCL_CLGETPROGRAMINFO ; 
 int /*<<< orphan*/  OCL_CLRELEASECOMMANDQUEUE ; 
 int /*<<< orphan*/  OCL_CLRELEASECONTEXT ; 
 int /*<<< orphan*/  OCL_CLRELEASEEVENT ; 
 int /*<<< orphan*/  OCL_CLRELEASEKERNEL ; 
 int /*<<< orphan*/  OCL_CLRELEASEMEMOBJECT ; 
 int /*<<< orphan*/  OCL_CLRELEASEPROGRAM ; 
 int /*<<< orphan*/  OCL_CLSETKERNELARG ; 
 int /*<<< orphan*/  OCL_CLWAITFOREVENTS ; 
 int /*<<< orphan*/  OpenCL ; 
 int /*<<< orphan*/  clBuildProgram ; 
 int /*<<< orphan*/  clCreateBuffer ; 
 int /*<<< orphan*/  clCreateCommandQueue ; 
 int /*<<< orphan*/  clCreateContext ; 
 int /*<<< orphan*/  clCreateKernel ; 
 int /*<<< orphan*/  clCreateProgramWithBinary ; 
 int /*<<< orphan*/  clCreateProgramWithSource ; 
 int /*<<< orphan*/  clEnqueueCopyBuffer ; 
 int /*<<< orphan*/  clEnqueueMapBuffer ; 
 int /*<<< orphan*/  clEnqueueNDRangeKernel ; 
 int /*<<< orphan*/  clEnqueueReadBuffer ; 
 int /*<<< orphan*/  clEnqueueUnmapMemObject ; 
 int /*<<< orphan*/  clEnqueueWriteBuffer ; 
 int /*<<< orphan*/  clFinish ; 
 int /*<<< orphan*/  clFlush ; 
 int /*<<< orphan*/  clGetDeviceIDs ; 
 int /*<<< orphan*/  clGetDeviceInfo ; 
 int /*<<< orphan*/  clGetEventInfo ; 
 int /*<<< orphan*/  clGetEventProfilingInfo ; 
 int /*<<< orphan*/  clGetKernelWorkGroupInfo ; 
 int /*<<< orphan*/  clGetPlatformIDs ; 
 int /*<<< orphan*/  clGetPlatformInfo ; 
 int /*<<< orphan*/  clGetProgramBuildInfo ; 
 int /*<<< orphan*/  clGetProgramInfo ; 
 int /*<<< orphan*/  clReleaseCommandQueue ; 
 int /*<<< orphan*/  clReleaseContext ; 
 int /*<<< orphan*/  clReleaseEvent ; 
 int /*<<< orphan*/  clReleaseKernel ; 
 int /*<<< orphan*/  clReleaseMemObject ; 
 int /*<<< orphan*/  clReleaseProgram ; 
 int /*<<< orphan*/  clSetKernelArg ; 
 int /*<<< orphan*/  clWaitForEvents ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

int FUNC3 (hashcat_ctx_t *hashcat_ctx)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  OCL_PTR *ocl = (OCL_PTR *) backend_ctx->ocl;

  FUNC2 (ocl, 0, sizeof (OCL_PTR));

  #if   defined (_WIN)
  ocl->lib = hc_dlopen ("OpenCL");
  #elif defined (__APPLE__)
  ocl->lib = hc_dlopen ("/System/Library/Frameworks/OpenCL.framework/OpenCL");
  #elif defined (__CYGWIN__)
  ocl->lib = hc_dlopen ("opencl.dll");

  if (ocl->lib == NULL) ocl->lib = hc_dlopen ("cygOpenCL-1.dll");
  #else
  ocl->lib = FUNC1 ("libOpenCL.so");

  if (ocl->lib == NULL) ocl->lib = FUNC1 ("libOpenCL.so.1");
  #endif

  if (ocl->lib == NULL) return -1;

  FUNC0 (ocl, clBuildProgram,            OCL_CLBUILDPROGRAM,             OpenCL, 1);
  FUNC0 (ocl, clCreateBuffer,            OCL_CLCREATEBUFFER,             OpenCL, 1);
  FUNC0 (ocl, clCreateCommandQueue,      OCL_CLCREATECOMMANDQUEUE,       OpenCL, 1);
  FUNC0 (ocl, clCreateContext,           OCL_CLCREATECONTEXT,            OpenCL, 1);
  FUNC0 (ocl, clCreateKernel,            OCL_CLCREATEKERNEL,             OpenCL, 1);
  FUNC0 (ocl, clCreateProgramWithBinary, OCL_CLCREATEPROGRAMWITHBINARY,  OpenCL, 1);
  FUNC0 (ocl, clCreateProgramWithSource, OCL_CLCREATEPROGRAMWITHSOURCE,  OpenCL, 1);
  FUNC0 (ocl, clEnqueueCopyBuffer,       OCL_CLENQUEUECOPYBUFFER,        OpenCL, 1);
  FUNC0 (ocl, clEnqueueMapBuffer,        OCL_CLENQUEUEMAPBUFFER,         OpenCL, 1);
  FUNC0 (ocl, clEnqueueNDRangeKernel,    OCL_CLENQUEUENDRANGEKERNEL,     OpenCL, 1);
  FUNC0 (ocl, clEnqueueReadBuffer,       OCL_CLENQUEUEREADBUFFER,        OpenCL, 1);
  FUNC0 (ocl, clEnqueueUnmapMemObject,   OCL_CLENQUEUEUNMAPMEMOBJECT,    OpenCL, 1);
  FUNC0 (ocl, clEnqueueWriteBuffer,      OCL_CLENQUEUEWRITEBUFFER,       OpenCL, 1);
  FUNC0 (ocl, clFinish,                  OCL_CLFINISH,                   OpenCL, 1);
  FUNC0 (ocl, clFlush,                   OCL_CLFLUSH,                    OpenCL, 1);
  FUNC0 (ocl, clGetDeviceIDs,            OCL_CLGETDEVICEIDS,             OpenCL, 1);
  FUNC0 (ocl, clGetDeviceInfo,           OCL_CLGETDEVICEINFO,            OpenCL, 1);
  FUNC0 (ocl, clGetEventInfo,            OCL_CLGETEVENTINFO,             OpenCL, 1);
  FUNC0 (ocl, clGetKernelWorkGroupInfo,  OCL_CLGETKERNELWORKGROUPINFO,   OpenCL, 1);
  FUNC0 (ocl, clGetPlatformIDs,          OCL_CLGETPLATFORMIDS,           OpenCL, 1);
  FUNC0 (ocl, clGetPlatformInfo,         OCL_CLGETPLATFORMINFO,          OpenCL, 1);
  FUNC0 (ocl, clGetProgramBuildInfo,     OCL_CLGETPROGRAMBUILDINFO,      OpenCL, 1);
  FUNC0 (ocl, clGetProgramInfo,          OCL_CLGETPROGRAMINFO,           OpenCL, 1);
  FUNC0 (ocl, clReleaseCommandQueue,     OCL_CLRELEASECOMMANDQUEUE,      OpenCL, 1);
  FUNC0 (ocl, clReleaseContext,          OCL_CLRELEASECONTEXT,           OpenCL, 1);
  FUNC0 (ocl, clReleaseKernel,           OCL_CLRELEASEKERNEL,            OpenCL, 1);
  FUNC0 (ocl, clReleaseMemObject,        OCL_CLRELEASEMEMOBJECT,         OpenCL, 1);
  FUNC0 (ocl, clReleaseProgram,          OCL_CLRELEASEPROGRAM,           OpenCL, 1);
  FUNC0 (ocl, clSetKernelArg,            OCL_CLSETKERNELARG,             OpenCL, 1);
  FUNC0 (ocl, clWaitForEvents,           OCL_CLWAITFOREVENTS,            OpenCL, 1);
  FUNC0 (ocl, clGetEventProfilingInfo,   OCL_CLGETEVENTPROFILINGINFO,    OpenCL, 1);
  FUNC0 (ocl, clReleaseEvent,            OCL_CLRELEASEEVENT,             OpenCL, 1);

  return 0;
}