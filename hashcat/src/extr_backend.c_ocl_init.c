
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* backend_ctx; } ;
typedef TYPE_1__ hashcat_ctx_t ;
struct TYPE_8__ {scalar_t__ ocl; } ;
typedef TYPE_2__ backend_ctx_t ;
struct TYPE_9__ {int * lib; } ;
typedef TYPE_3__ OCL_PTR ;


 int HC_LOAD_FUNC (TYPE_3__*,int ,int ,int ,int) ;
 int OCL_CLBUILDPROGRAM ;
 int OCL_CLCREATEBUFFER ;
 int OCL_CLCREATECOMMANDQUEUE ;
 int OCL_CLCREATECONTEXT ;
 int OCL_CLCREATEKERNEL ;
 int OCL_CLCREATEPROGRAMWITHBINARY ;
 int OCL_CLCREATEPROGRAMWITHSOURCE ;
 int OCL_CLENQUEUECOPYBUFFER ;
 int OCL_CLENQUEUEMAPBUFFER ;
 int OCL_CLENQUEUENDRANGEKERNEL ;
 int OCL_CLENQUEUEREADBUFFER ;
 int OCL_CLENQUEUEUNMAPMEMOBJECT ;
 int OCL_CLENQUEUEWRITEBUFFER ;
 int OCL_CLFINISH ;
 int OCL_CLFLUSH ;
 int OCL_CLGETDEVICEIDS ;
 int OCL_CLGETDEVICEINFO ;
 int OCL_CLGETEVENTINFO ;
 int OCL_CLGETEVENTPROFILINGINFO ;
 int OCL_CLGETKERNELWORKGROUPINFO ;
 int OCL_CLGETPLATFORMIDS ;
 int OCL_CLGETPLATFORMINFO ;
 int OCL_CLGETPROGRAMBUILDINFO ;
 int OCL_CLGETPROGRAMINFO ;
 int OCL_CLRELEASECOMMANDQUEUE ;
 int OCL_CLRELEASECONTEXT ;
 int OCL_CLRELEASEEVENT ;
 int OCL_CLRELEASEKERNEL ;
 int OCL_CLRELEASEMEMOBJECT ;
 int OCL_CLRELEASEPROGRAM ;
 int OCL_CLSETKERNELARG ;
 int OCL_CLWAITFOREVENTS ;
 int OpenCL ;
 int clBuildProgram ;
 int clCreateBuffer ;
 int clCreateCommandQueue ;
 int clCreateContext ;
 int clCreateKernel ;
 int clCreateProgramWithBinary ;
 int clCreateProgramWithSource ;
 int clEnqueueCopyBuffer ;
 int clEnqueueMapBuffer ;
 int clEnqueueNDRangeKernel ;
 int clEnqueueReadBuffer ;
 int clEnqueueUnmapMemObject ;
 int clEnqueueWriteBuffer ;
 int clFinish ;
 int clFlush ;
 int clGetDeviceIDs ;
 int clGetDeviceInfo ;
 int clGetEventInfo ;
 int clGetEventProfilingInfo ;
 int clGetKernelWorkGroupInfo ;
 int clGetPlatformIDs ;
 int clGetPlatformInfo ;
 int clGetProgramBuildInfo ;
 int clGetProgramInfo ;
 int clReleaseCommandQueue ;
 int clReleaseContext ;
 int clReleaseEvent ;
 int clReleaseKernel ;
 int clReleaseMemObject ;
 int clReleaseProgram ;
 int clSetKernelArg ;
 int clWaitForEvents ;
 void* hc_dlopen (char*) ;
 int memset (TYPE_3__*,int ,int) ;

int ocl_init (hashcat_ctx_t *hashcat_ctx)
{
  backend_ctx_t *backend_ctx = hashcat_ctx->backend_ctx;

  OCL_PTR *ocl = (OCL_PTR *) backend_ctx->ocl;

  memset (ocl, 0, sizeof (OCL_PTR));
  ocl->lib = hc_dlopen ("libOpenCL.so");

  if (ocl->lib == ((void*)0)) ocl->lib = hc_dlopen ("libOpenCL.so.1");


  if (ocl->lib == ((void*)0)) return -1;

  HC_LOAD_FUNC (ocl, clBuildProgram, OCL_CLBUILDPROGRAM, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clCreateBuffer, OCL_CLCREATEBUFFER, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clCreateCommandQueue, OCL_CLCREATECOMMANDQUEUE, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clCreateContext, OCL_CLCREATECONTEXT, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clCreateKernel, OCL_CLCREATEKERNEL, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clCreateProgramWithBinary, OCL_CLCREATEPROGRAMWITHBINARY, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clCreateProgramWithSource, OCL_CLCREATEPROGRAMWITHSOURCE, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clEnqueueCopyBuffer, OCL_CLENQUEUECOPYBUFFER, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clEnqueueMapBuffer, OCL_CLENQUEUEMAPBUFFER, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clEnqueueNDRangeKernel, OCL_CLENQUEUENDRANGEKERNEL, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clEnqueueReadBuffer, OCL_CLENQUEUEREADBUFFER, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clEnqueueUnmapMemObject, OCL_CLENQUEUEUNMAPMEMOBJECT, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clEnqueueWriteBuffer, OCL_CLENQUEUEWRITEBUFFER, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clFinish, OCL_CLFINISH, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clFlush, OCL_CLFLUSH, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clGetDeviceIDs, OCL_CLGETDEVICEIDS, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clGetDeviceInfo, OCL_CLGETDEVICEINFO, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clGetEventInfo, OCL_CLGETEVENTINFO, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clGetKernelWorkGroupInfo, OCL_CLGETKERNELWORKGROUPINFO, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clGetPlatformIDs, OCL_CLGETPLATFORMIDS, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clGetPlatformInfo, OCL_CLGETPLATFORMINFO, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clGetProgramBuildInfo, OCL_CLGETPROGRAMBUILDINFO, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clGetProgramInfo, OCL_CLGETPROGRAMINFO, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clReleaseCommandQueue, OCL_CLRELEASECOMMANDQUEUE, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clReleaseContext, OCL_CLRELEASECONTEXT, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clReleaseKernel, OCL_CLRELEASEKERNEL, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clReleaseMemObject, OCL_CLRELEASEMEMOBJECT, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clReleaseProgram, OCL_CLRELEASEPROGRAM, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clSetKernelArg, OCL_CLSETKERNELARG, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clWaitForEvents, OCL_CLWAITFOREVENTS, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clGetEventProfilingInfo, OCL_CLGETEVENTPROFILINGINFO, OpenCL, 1);
  HC_LOAD_FUNC (ocl, clReleaseEvent, OCL_CLRELEASEEVENT, OpenCL, 1);

  return 0;
}
