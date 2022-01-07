; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_nvml_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_nvml_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i8* }

@nvmlErrorString = common dso_local global i32 0, align 4
@NVML_ERROR_STRING = common dso_local global i32 0, align 4
@NVML = common dso_local global i32 0, align 4
@nvmlInit = common dso_local global i32 0, align 4
@NVML_INIT = common dso_local global i32 0, align 4
@nvmlShutdown = common dso_local global i32 0, align 4
@NVML_SHUTDOWN = common dso_local global i32 0, align 4
@nvmlDeviceGetCount = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_COUNT = common dso_local global i32 0, align 4
@nvmlDeviceGetName = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_NAME = common dso_local global i32 0, align 4
@nvmlDeviceGetHandleByIndex = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_HANDLE_BY_INDEX = common dso_local global i32 0, align 4
@nvmlDeviceGetTemperature = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_TEMPERATURE = common dso_local global i32 0, align 4
@nvmlDeviceGetFanSpeed = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_FAN_SPEED = common dso_local global i32 0, align 4
@nvmlDeviceGetUtilizationRates = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_UTILIZATION_RATES = common dso_local global i32 0, align 4
@nvmlDeviceGetClockInfo = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_CLOCKINFO = common dso_local global i32 0, align 4
@nvmlDeviceGetTemperatureThreshold = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_THRESHOLD = common dso_local global i32 0, align 4
@nvmlDeviceGetCurrPcieLinkGeneration = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_CURRPCIELINKGENERATION = common dso_local global i32 0, align 4
@nvmlDeviceGetCurrPcieLinkWidth = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_CURRPCIELINKWIDTH = common dso_local global i32 0, align 4
@nvmlDeviceGetCurrentClocksThrottleReasons = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_CURRENTCLOCKSTHROTTLEREASONS = common dso_local global i32 0, align 4
@nvmlDeviceGetSupportedClocksThrottleReasons = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_SUPPORTEDCLOCKSTHROTTLEREASONS = common dso_local global i32 0, align 4
@nvmlDeviceGetPciInfo = common dso_local global i32 0, align 4
@NVML_DEVICE_GET_PCIINFO = common dso_local global i32 0, align 4
@CCP_PROC_CYGDRIVE = common dso_local global i32 0, align 4
@CCP_WIN_A_TO_POSIX = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@HKEY_LOCAL_MACHINE = common dso_local global i32 0, align 4
@KEY_QUERY_VALUE = common dso_local global i32 0, align 4
@REG_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @nvml_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvml_init(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = call i32 @memset(%struct.TYPE_9__* %13, i32 0, i32 8)
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %101

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = load i32, i32* @nvmlErrorString, align 4
  %23 = load i32, i32* @NVML_ERROR_STRING, align 4
  %24 = load i32, i32* @NVML, align 4
  %25 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %21, i32 %22, i32 %23, i32 %24, i32 0)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i32, i32* @nvmlInit, align 4
  %28 = load i32, i32* @NVML_INIT, align 4
  %29 = load i32, i32* @NVML, align 4
  %30 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %26, i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = load i32, i32* @nvmlShutdown, align 4
  %33 = load i32, i32* @NVML_SHUTDOWN, align 4
  %34 = load i32, i32* @NVML, align 4
  %35 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %31, i32 %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = load i32, i32* @nvmlDeviceGetCount, align 4
  %38 = load i32, i32* @NVML_DEVICE_GET_COUNT, align 4
  %39 = load i32, i32* @NVML, align 4
  %40 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %36, i32 %37, i32 %38, i32 %39, i32 0)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = load i32, i32* @nvmlDeviceGetName, align 4
  %43 = load i32, i32* @NVML_DEVICE_GET_NAME, align 4
  %44 = load i32, i32* @NVML, align 4
  %45 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %41, i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = load i32, i32* @nvmlDeviceGetHandleByIndex, align 4
  %48 = load i32, i32* @NVML_DEVICE_GET_HANDLE_BY_INDEX, align 4
  %49 = load i32, i32* @NVML, align 4
  %50 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %46, i32 %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = load i32, i32* @nvmlDeviceGetTemperature, align 4
  %53 = load i32, i32* @NVML_DEVICE_GET_TEMPERATURE, align 4
  %54 = load i32, i32* @NVML, align 4
  %55 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %51, i32 %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = load i32, i32* @nvmlDeviceGetFanSpeed, align 4
  %58 = load i32, i32* @NVML_DEVICE_GET_FAN_SPEED, align 4
  %59 = load i32, i32* @NVML, align 4
  %60 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %56, i32 %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = load i32, i32* @nvmlDeviceGetUtilizationRates, align 4
  %63 = load i32, i32* @NVML_DEVICE_GET_UTILIZATION_RATES, align 4
  %64 = load i32, i32* @NVML, align 4
  %65 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %61, i32 %62, i32 %63, i32 %64, i32 0)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = load i32, i32* @nvmlDeviceGetClockInfo, align 4
  %68 = load i32, i32* @NVML_DEVICE_GET_CLOCKINFO, align 4
  %69 = load i32, i32* @NVML, align 4
  %70 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %66, i32 %67, i32 %68, i32 %69, i32 0)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = load i32, i32* @nvmlDeviceGetTemperatureThreshold, align 4
  %73 = load i32, i32* @NVML_DEVICE_GET_THRESHOLD, align 4
  %74 = load i32, i32* @NVML, align 4
  %75 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %71, i32 %72, i32 %73, i32 %74, i32 0)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = load i32, i32* @nvmlDeviceGetCurrPcieLinkGeneration, align 4
  %78 = load i32, i32* @NVML_DEVICE_GET_CURRPCIELINKGENERATION, align 4
  %79 = load i32, i32* @NVML, align 4
  %80 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %76, i32 %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = load i32, i32* @nvmlDeviceGetCurrPcieLinkWidth, align 4
  %83 = load i32, i32* @NVML_DEVICE_GET_CURRPCIELINKWIDTH, align 4
  %84 = load i32, i32* @NVML, align 4
  %85 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %81, i32 %82, i32 %83, i32 %84, i32 0)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = load i32, i32* @nvmlDeviceGetCurrentClocksThrottleReasons, align 4
  %88 = load i32, i32* @NVML_DEVICE_GET_CURRENTCLOCKSTHROTTLEREASONS, align 4
  %89 = load i32, i32* @NVML, align 4
  %90 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %86, i32 %87, i32 %88, i32 %89, i32 0)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = load i32, i32* @nvmlDeviceGetSupportedClocksThrottleReasons, align 4
  %93 = load i32, i32* @NVML_DEVICE_GET_SUPPORTEDCLOCKSTHROTTLEREASONS, align 4
  %94 = load i32, i32* @NVML, align 4
  %95 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %91, i32 %92, i32 %93, i32 %94, i32 0)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = load i32, i32* @nvmlDeviceGetPciInfo, align 4
  %98 = load i32, i32* @NVML_DEVICE_GET_PCIINFO, align 4
  %99 = load i32, i32* @NVML, align 4
  %100 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %96, i32 %97, i32 %98, i32 %99, i32 0)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %20, %19
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @HC_LOAD_FUNC(%struct.TYPE_9__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
