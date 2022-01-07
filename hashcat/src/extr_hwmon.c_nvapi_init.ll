; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_nvapi_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_nvapi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i8* }

@.str = private unnamed_addr constant [9 x i8] c"nvapi.so\00", align 1
@nvapi_QueryInterface = common dso_local global i32 0, align 4
@NVAPI_QUERYINTERFACE = common dso_local global i32 0, align 4
@NVAPI = common dso_local global i32 0, align 4
@NvAPI_Initialize = common dso_local global i32 0, align 4
@NVAPI_INITIALIZE = common dso_local global i32 0, align 4
@NvAPI_Unload = common dso_local global i32 0, align 4
@NVAPI_UNLOAD = common dso_local global i32 0, align 4
@NvAPI_GetErrorMessage = common dso_local global i32 0, align 4
@NVAPI_GETERRORMESSAGE = common dso_local global i32 0, align 4
@NvAPI_EnumPhysicalGPUs = common dso_local global i32 0, align 4
@NVAPI_ENUMPHYSICALGPUS = common dso_local global i32 0, align 4
@NvAPI_GPU_GetPerfPoliciesInfo = common dso_local global i32 0, align 4
@NVAPI_GPU_GETPERFPOLICIESINFO = common dso_local global i32 0, align 4
@NvAPI_GPU_GetPerfPoliciesStatus = common dso_local global i32 0, align 4
@NVAPI_GPU_GETPERFPOLICIESSTATUS = common dso_local global i32 0, align 4
@NvAPI_GPU_GetBusId = common dso_local global i32 0, align 4
@NVAPI_GPU_GETBUSID = common dso_local global i32 0, align 4
@NvAPI_GPU_GetBusSlotId = common dso_local global i32 0, align 4
@NVAPI_GPU_GETBUSSLOTID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @nvapi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvapi_init(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %5, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = call i32 @memset(%struct.TYPE_10__* %13, i32 0, i32 8)
  %15 = call i8* @hc_dlopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %25 = load i32, i32* @nvapi_QueryInterface, align 4
  %26 = load i32, i32* @NVAPI_QUERYINTERFACE, align 4
  %27 = load i32, i32* @NVAPI, align 4
  %28 = call i32 @HC_LOAD_FUNC(%struct.TYPE_10__* %24, i32 %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = load i32, i32* @NvAPI_Initialize, align 4
  %31 = load i32, i32* @NVAPI_INITIALIZE, align 4
  %32 = load i32, i32* @nvapi_QueryInterface, align 4
  %33 = load i32, i32* @NVAPI, align 4
  %34 = call i32 @HC_LOAD_ADDR(%struct.TYPE_10__* %29, i32 %30, i32 %31, i32 %32, i32 22079528, i32 %33, i32 0)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = load i32, i32* @NvAPI_Unload, align 4
  %37 = load i32, i32* @NVAPI_UNLOAD, align 4
  %38 = load i32, i32* @nvapi_QueryInterface, align 4
  %39 = load i32, i32* @NVAPI, align 4
  %40 = call i32 @HC_LOAD_ADDR(%struct.TYPE_10__* %35, i32 %36, i32 %37, i32 %38, i32 -768877186, i32 %39, i32 0)
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %42 = load i32, i32* @NvAPI_GetErrorMessage, align 4
  %43 = load i32, i32* @NVAPI_GETERRORMESSAGE, align 4
  %44 = load i32, i32* @nvapi_QueryInterface, align 4
  %45 = load i32, i32* @NVAPI, align 4
  %46 = call i32 @HC_LOAD_ADDR(%struct.TYPE_10__* %41, i32 %42, i32 %43, i32 %44, i32 1814889612, i32 %45, i32 0)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %48 = load i32, i32* @NvAPI_EnumPhysicalGPUs, align 4
  %49 = load i32, i32* @NVAPI_ENUMPHYSICALGPUS, align 4
  %50 = load i32, i32* @nvapi_QueryInterface, align 4
  %51 = load i32, i32* @NVAPI, align 4
  %52 = call i32 @HC_LOAD_ADDR(%struct.TYPE_10__* %47, i32 %48, i32 %49, i32 %50, i32 -441675233, i32 %51, i32 0)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = load i32, i32* @NvAPI_GPU_GetPerfPoliciesInfo, align 4
  %55 = load i32, i32* @NVAPI_GPU_GETPERFPOLICIESINFO, align 4
  %56 = load i32, i32* @nvapi_QueryInterface, align 4
  %57 = load i32, i32* @NVAPI, align 4
  %58 = call i32 @HC_LOAD_ADDR(%struct.TYPE_10__* %53, i32 %54, i32 %55, i32 %56, i32 1084069953, i32 %57, i32 0)
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %60 = load i32, i32* @NvAPI_GPU_GetPerfPoliciesStatus, align 4
  %61 = load i32, i32* @NVAPI_GPU_GETPERFPOLICIESSTATUS, align 4
  %62 = load i32, i32* @nvapi_QueryInterface, align 4
  %63 = load i32, i32* @NVAPI, align 4
  %64 = call i32 @HC_LOAD_ADDR(%struct.TYPE_10__* %59, i32 %60, i32 %61, i32 %62, i32 1026918924, i32 %63, i32 0)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load i32, i32* @NvAPI_GPU_GetBusId, align 4
  %67 = load i32, i32* @NVAPI_GPU_GETBUSID, align 4
  %68 = load i32, i32* @nvapi_QueryInterface, align 4
  %69 = load i32, i32* @NVAPI, align 4
  %70 = call i32 @HC_LOAD_ADDR(%struct.TYPE_10__* %65, i32 %66, i32 %67, i32 %68, i32 467712229, i32 %69, i32 0)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = load i32, i32* @NvAPI_GPU_GetBusSlotId, align 4
  %73 = load i32, i32* @NVAPI_GPU_GETBUSSLOTID, align 4
  %74 = load i32, i32* @nvapi_QueryInterface, align 4
  %75 = load i32, i32* @NVAPI, align 4
  %76 = call i32 @HC_LOAD_ADDR(%struct.TYPE_10__* %71, i32 %72, i32 %73, i32 %74, i32 705312015, i32 %75, i32 0)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %23, %22
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i8* @hc_dlopen(i8*) #1

declare dso_local i32 @HC_LOAD_FUNC(%struct.TYPE_10__*, i32, i32, i32, i32) #1

declare dso_local i32 @HC_LOAD_ADDR(%struct.TYPE_10__*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
