; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_backend.c_ocl_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_backend.c_ocl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"libOpenCL.so\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"libOpenCL.so.1\00", align 1
@clBuildProgram = common dso_local global i32 0, align 4
@OCL_CLBUILDPROGRAM = common dso_local global i32 0, align 4
@OpenCL = common dso_local global i32 0, align 4
@clCreateBuffer = common dso_local global i32 0, align 4
@OCL_CLCREATEBUFFER = common dso_local global i32 0, align 4
@clCreateCommandQueue = common dso_local global i32 0, align 4
@OCL_CLCREATECOMMANDQUEUE = common dso_local global i32 0, align 4
@clCreateContext = common dso_local global i32 0, align 4
@OCL_CLCREATECONTEXT = common dso_local global i32 0, align 4
@clCreateKernel = common dso_local global i32 0, align 4
@OCL_CLCREATEKERNEL = common dso_local global i32 0, align 4
@clCreateProgramWithBinary = common dso_local global i32 0, align 4
@OCL_CLCREATEPROGRAMWITHBINARY = common dso_local global i32 0, align 4
@clCreateProgramWithSource = common dso_local global i32 0, align 4
@OCL_CLCREATEPROGRAMWITHSOURCE = common dso_local global i32 0, align 4
@clEnqueueCopyBuffer = common dso_local global i32 0, align 4
@OCL_CLENQUEUECOPYBUFFER = common dso_local global i32 0, align 4
@clEnqueueMapBuffer = common dso_local global i32 0, align 4
@OCL_CLENQUEUEMAPBUFFER = common dso_local global i32 0, align 4
@clEnqueueNDRangeKernel = common dso_local global i32 0, align 4
@OCL_CLENQUEUENDRANGEKERNEL = common dso_local global i32 0, align 4
@clEnqueueReadBuffer = common dso_local global i32 0, align 4
@OCL_CLENQUEUEREADBUFFER = common dso_local global i32 0, align 4
@clEnqueueUnmapMemObject = common dso_local global i32 0, align 4
@OCL_CLENQUEUEUNMAPMEMOBJECT = common dso_local global i32 0, align 4
@clEnqueueWriteBuffer = common dso_local global i32 0, align 4
@OCL_CLENQUEUEWRITEBUFFER = common dso_local global i32 0, align 4
@clFinish = common dso_local global i32 0, align 4
@OCL_CLFINISH = common dso_local global i32 0, align 4
@clFlush = common dso_local global i32 0, align 4
@OCL_CLFLUSH = common dso_local global i32 0, align 4
@clGetDeviceIDs = common dso_local global i32 0, align 4
@OCL_CLGETDEVICEIDS = common dso_local global i32 0, align 4
@clGetDeviceInfo = common dso_local global i32 0, align 4
@OCL_CLGETDEVICEINFO = common dso_local global i32 0, align 4
@clGetEventInfo = common dso_local global i32 0, align 4
@OCL_CLGETEVENTINFO = common dso_local global i32 0, align 4
@clGetKernelWorkGroupInfo = common dso_local global i32 0, align 4
@OCL_CLGETKERNELWORKGROUPINFO = common dso_local global i32 0, align 4
@clGetPlatformIDs = common dso_local global i32 0, align 4
@OCL_CLGETPLATFORMIDS = common dso_local global i32 0, align 4
@clGetPlatformInfo = common dso_local global i32 0, align 4
@OCL_CLGETPLATFORMINFO = common dso_local global i32 0, align 4
@clGetProgramBuildInfo = common dso_local global i32 0, align 4
@OCL_CLGETPROGRAMBUILDINFO = common dso_local global i32 0, align 4
@clGetProgramInfo = common dso_local global i32 0, align 4
@OCL_CLGETPROGRAMINFO = common dso_local global i32 0, align 4
@clReleaseCommandQueue = common dso_local global i32 0, align 4
@OCL_CLRELEASECOMMANDQUEUE = common dso_local global i32 0, align 4
@clReleaseContext = common dso_local global i32 0, align 4
@OCL_CLRELEASECONTEXT = common dso_local global i32 0, align 4
@clReleaseKernel = common dso_local global i32 0, align 4
@OCL_CLRELEASEKERNEL = common dso_local global i32 0, align 4
@clReleaseMemObject = common dso_local global i32 0, align 4
@OCL_CLRELEASEMEMOBJECT = common dso_local global i32 0, align 4
@clReleaseProgram = common dso_local global i32 0, align 4
@OCL_CLRELEASEPROGRAM = common dso_local global i32 0, align 4
@clSetKernelArg = common dso_local global i32 0, align 4
@OCL_CLSETKERNELARG = common dso_local global i32 0, align 4
@clWaitForEvents = common dso_local global i32 0, align 4
@OCL_CLWAITFOREVENTS = common dso_local global i32 0, align 4
@clGetEventProfilingInfo = common dso_local global i32 0, align 4
@OCL_CLGETEVENTPROFILINGINFO = common dso_local global i32 0, align 4
@clReleaseEvent = common dso_local global i32 0, align 4
@OCL_CLRELEASEEVENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocl_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = call i32 @memset(%struct.TYPE_9__* %13, i32 0, i32 8)
  %15 = call i8* @hc_dlopen(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  store i32* %16, i32** %18, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = call i8* @hc_dlopen(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32* %25, i32** %27, align 8
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %195

34:                                               ; preds = %28
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = load i32, i32* @clBuildProgram, align 4
  %37 = load i32, i32* @OCL_CLBUILDPROGRAM, align 4
  %38 = load i32, i32* @OpenCL, align 4
  %39 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %35, i32 %36, i32 %37, i32 %38, i32 1)
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = load i32, i32* @clCreateBuffer, align 4
  %42 = load i32, i32* @OCL_CLCREATEBUFFER, align 4
  %43 = load i32, i32* @OpenCL, align 4
  %44 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %40, i32 %41, i32 %42, i32 %43, i32 1)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = load i32, i32* @clCreateCommandQueue, align 4
  %47 = load i32, i32* @OCL_CLCREATECOMMANDQUEUE, align 4
  %48 = load i32, i32* @OpenCL, align 4
  %49 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %45, i32 %46, i32 %47, i32 %48, i32 1)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load i32, i32* @clCreateContext, align 4
  %52 = load i32, i32* @OCL_CLCREATECONTEXT, align 4
  %53 = load i32, i32* @OpenCL, align 4
  %54 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %50, i32 %51, i32 %52, i32 %53, i32 1)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = load i32, i32* @clCreateKernel, align 4
  %57 = load i32, i32* @OCL_CLCREATEKERNEL, align 4
  %58 = load i32, i32* @OpenCL, align 4
  %59 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %55, i32 %56, i32 %57, i32 %58, i32 1)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = load i32, i32* @clCreateProgramWithBinary, align 4
  %62 = load i32, i32* @OCL_CLCREATEPROGRAMWITHBINARY, align 4
  %63 = load i32, i32* @OpenCL, align 4
  %64 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %60, i32 %61, i32 %62, i32 %63, i32 1)
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = load i32, i32* @clCreateProgramWithSource, align 4
  %67 = load i32, i32* @OCL_CLCREATEPROGRAMWITHSOURCE, align 4
  %68 = load i32, i32* @OpenCL, align 4
  %69 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %65, i32 %66, i32 %67, i32 %68, i32 1)
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = load i32, i32* @clEnqueueCopyBuffer, align 4
  %72 = load i32, i32* @OCL_CLENQUEUECOPYBUFFER, align 4
  %73 = load i32, i32* @OpenCL, align 4
  %74 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %70, i32 %71, i32 %72, i32 %73, i32 1)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = load i32, i32* @clEnqueueMapBuffer, align 4
  %77 = load i32, i32* @OCL_CLENQUEUEMAPBUFFER, align 4
  %78 = load i32, i32* @OpenCL, align 4
  %79 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %75, i32 %76, i32 %77, i32 %78, i32 1)
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = load i32, i32* @clEnqueueNDRangeKernel, align 4
  %82 = load i32, i32* @OCL_CLENQUEUENDRANGEKERNEL, align 4
  %83 = load i32, i32* @OpenCL, align 4
  %84 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %80, i32 %81, i32 %82, i32 %83, i32 1)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %86 = load i32, i32* @clEnqueueReadBuffer, align 4
  %87 = load i32, i32* @OCL_CLENQUEUEREADBUFFER, align 4
  %88 = load i32, i32* @OpenCL, align 4
  %89 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %85, i32 %86, i32 %87, i32 %88, i32 1)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %91 = load i32, i32* @clEnqueueUnmapMemObject, align 4
  %92 = load i32, i32* @OCL_CLENQUEUEUNMAPMEMOBJECT, align 4
  %93 = load i32, i32* @OpenCL, align 4
  %94 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %90, i32 %91, i32 %92, i32 %93, i32 1)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = load i32, i32* @clEnqueueWriteBuffer, align 4
  %97 = load i32, i32* @OCL_CLENQUEUEWRITEBUFFER, align 4
  %98 = load i32, i32* @OpenCL, align 4
  %99 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %95, i32 %96, i32 %97, i32 %98, i32 1)
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = load i32, i32* @clFinish, align 4
  %102 = load i32, i32* @OCL_CLFINISH, align 4
  %103 = load i32, i32* @OpenCL, align 4
  %104 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %100, i32 %101, i32 %102, i32 %103, i32 1)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %106 = load i32, i32* @clFlush, align 4
  %107 = load i32, i32* @OCL_CLFLUSH, align 4
  %108 = load i32, i32* @OpenCL, align 4
  %109 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %105, i32 %106, i32 %107, i32 %108, i32 1)
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = load i32, i32* @clGetDeviceIDs, align 4
  %112 = load i32, i32* @OCL_CLGETDEVICEIDS, align 4
  %113 = load i32, i32* @OpenCL, align 4
  %114 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %110, i32 %111, i32 %112, i32 %113, i32 1)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %116 = load i32, i32* @clGetDeviceInfo, align 4
  %117 = load i32, i32* @OCL_CLGETDEVICEINFO, align 4
  %118 = load i32, i32* @OpenCL, align 4
  %119 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %115, i32 %116, i32 %117, i32 %118, i32 1)
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %121 = load i32, i32* @clGetEventInfo, align 4
  %122 = load i32, i32* @OCL_CLGETEVENTINFO, align 4
  %123 = load i32, i32* @OpenCL, align 4
  %124 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %120, i32 %121, i32 %122, i32 %123, i32 1)
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %126 = load i32, i32* @clGetKernelWorkGroupInfo, align 4
  %127 = load i32, i32* @OCL_CLGETKERNELWORKGROUPINFO, align 4
  %128 = load i32, i32* @OpenCL, align 4
  %129 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %125, i32 %126, i32 %127, i32 %128, i32 1)
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %131 = load i32, i32* @clGetPlatformIDs, align 4
  %132 = load i32, i32* @OCL_CLGETPLATFORMIDS, align 4
  %133 = load i32, i32* @OpenCL, align 4
  %134 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %130, i32 %131, i32 %132, i32 %133, i32 1)
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = load i32, i32* @clGetPlatformInfo, align 4
  %137 = load i32, i32* @OCL_CLGETPLATFORMINFO, align 4
  %138 = load i32, i32* @OpenCL, align 4
  %139 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %135, i32 %136, i32 %137, i32 %138, i32 1)
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %141 = load i32, i32* @clGetProgramBuildInfo, align 4
  %142 = load i32, i32* @OCL_CLGETPROGRAMBUILDINFO, align 4
  %143 = load i32, i32* @OpenCL, align 4
  %144 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %140, i32 %141, i32 %142, i32 %143, i32 1)
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %146 = load i32, i32* @clGetProgramInfo, align 4
  %147 = load i32, i32* @OCL_CLGETPROGRAMINFO, align 4
  %148 = load i32, i32* @OpenCL, align 4
  %149 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %145, i32 %146, i32 %147, i32 %148, i32 1)
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %151 = load i32, i32* @clReleaseCommandQueue, align 4
  %152 = load i32, i32* @OCL_CLRELEASECOMMANDQUEUE, align 4
  %153 = load i32, i32* @OpenCL, align 4
  %154 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %150, i32 %151, i32 %152, i32 %153, i32 1)
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %156 = load i32, i32* @clReleaseContext, align 4
  %157 = load i32, i32* @OCL_CLRELEASECONTEXT, align 4
  %158 = load i32, i32* @OpenCL, align 4
  %159 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %155, i32 %156, i32 %157, i32 %158, i32 1)
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = load i32, i32* @clReleaseKernel, align 4
  %162 = load i32, i32* @OCL_CLRELEASEKERNEL, align 4
  %163 = load i32, i32* @OpenCL, align 4
  %164 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %160, i32 %161, i32 %162, i32 %163, i32 1)
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = load i32, i32* @clReleaseMemObject, align 4
  %167 = load i32, i32* @OCL_CLRELEASEMEMOBJECT, align 4
  %168 = load i32, i32* @OpenCL, align 4
  %169 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %165, i32 %166, i32 %167, i32 %168, i32 1)
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %171 = load i32, i32* @clReleaseProgram, align 4
  %172 = load i32, i32* @OCL_CLRELEASEPROGRAM, align 4
  %173 = load i32, i32* @OpenCL, align 4
  %174 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %170, i32 %171, i32 %172, i32 %173, i32 1)
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %176 = load i32, i32* @clSetKernelArg, align 4
  %177 = load i32, i32* @OCL_CLSETKERNELARG, align 4
  %178 = load i32, i32* @OpenCL, align 4
  %179 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %175, i32 %176, i32 %177, i32 %178, i32 1)
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = load i32, i32* @clWaitForEvents, align 4
  %182 = load i32, i32* @OCL_CLWAITFOREVENTS, align 4
  %183 = load i32, i32* @OpenCL, align 4
  %184 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %180, i32 %181, i32 %182, i32 %183, i32 1)
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %186 = load i32, i32* @clGetEventProfilingInfo, align 4
  %187 = load i32, i32* @OCL_CLGETEVENTPROFILINGINFO, align 4
  %188 = load i32, i32* @OpenCL, align 4
  %189 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %185, i32 %186, i32 %187, i32 %188, i32 1)
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %191 = load i32, i32* @clReleaseEvent, align 4
  %192 = load i32, i32* @OCL_CLRELEASEEVENT, align 4
  %193 = load i32, i32* @OpenCL, align 4
  %194 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %190, i32 %191, i32 %192, i32 %193, i32 1)
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %34, %33
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @hc_dlopen(i8*) #1

declare dso_local i32 @HC_LOAD_FUNC(%struct.TYPE_9__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
