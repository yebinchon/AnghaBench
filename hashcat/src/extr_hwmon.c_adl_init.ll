; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_adl_init.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_adl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i8* }

@ADL_Main_Control_Destroy = common dso_local global i32 0, align 4
@ADL_MAIN_CONTROL_DESTROY = common dso_local global i32 0, align 4
@ADL = common dso_local global i32 0, align 4
@ADL_Main_Control_Create = common dso_local global i32 0, align 4
@ADL_MAIN_CONTROL_CREATE = common dso_local global i32 0, align 4
@ADL_Adapter_NumberOfAdapters_Get = common dso_local global i32 0, align 4
@ADL_ADAPTER_NUMBEROFADAPTERS_GET = common dso_local global i32 0, align 4
@ADL_Adapter_AdapterInfo_Get = common dso_local global i32 0, align 4
@ADL_ADAPTER_ADAPTERINFO_GET = common dso_local global i32 0, align 4
@ADL_Display_DisplayInfo_Get = common dso_local global i32 0, align 4
@ADL_DISPLAY_DISPLAYINFO_GET = common dso_local global i32 0, align 4
@ADL_Adapter_ID_Get = common dso_local global i32 0, align 4
@ADL_ADAPTER_ID_GET = common dso_local global i32 0, align 4
@ADL_Adapter_VideoBiosInfo_Get = common dso_local global i32 0, align 4
@ADL_ADAPTER_VIDEOBIOSINFO_GET = common dso_local global i32 0, align 4
@ADL_Overdrive5_ThermalDevices_Enum = common dso_local global i32 0, align 4
@ADL_OVERDRIVE5_THERMALDEVICES_ENUM = common dso_local global i32 0, align 4
@ADL_Overdrive5_Temperature_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE5_TEMPERATURE_GET = common dso_local global i32 0, align 4
@ADL_Overdrive6_Temperature_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE6_TEMPERATURE_GET = common dso_local global i32 0, align 4
@ADL_Overdrive5_CurrentActivity_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE5_CURRENTACTIVITY_GET = common dso_local global i32 0, align 4
@ADL_Overdrive5_FanSpeedInfo_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE5_FANSPEEDINFO_GET = common dso_local global i32 0, align 4
@ADL_Overdrive5_FanSpeed_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE5_FANSPEED_GET = common dso_local global i32 0, align 4
@ADL_Overdrive6_FanSpeed_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE6_FANSPEED_GET = common dso_local global i32 0, align 4
@ADL_Adapter_Active_Get = common dso_local global i32 0, align 4
@ADL_ADAPTER_ACTIVE_GET = common dso_local global i32 0, align 4
@ADL_Overdrive_Caps = common dso_local global i32 0, align 4
@ADL_OVERDRIVE_CAPS = common dso_local global i32 0, align 4
@ADL_Overdrive6_Capabilities_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE6_CAPABILITIES_GET = common dso_local global i32 0, align 4
@ADL_Overdrive6_StateInfo_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE6_STATEINFO_GET = common dso_local global i32 0, align 4
@ADL_Overdrive6_CurrentStatus_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE6_CURRENTSTATUS_GET = common dso_local global i32 0, align 4
@ADL_Overdrive6_TargetTemperatureData_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE6_TARGETTEMPERATUREDATA_GET = common dso_local global i32 0, align 4
@ADL_Overdrive6_TargetTemperatureRangeInfo_Get = common dso_local global i32 0, align 4
@ADL_OVERDRIVE6_TARGETTEMPERATURERANGEINFO_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @adl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adl_init(%struct.TYPE_8__* %0) #0 {
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
  br label %126

20:                                               ; preds = %1
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = load i32, i32* @ADL_Main_Control_Destroy, align 4
  %23 = load i32, i32* @ADL_MAIN_CONTROL_DESTROY, align 4
  %24 = load i32, i32* @ADL, align 4
  %25 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %21, i32 %22, i32 %23, i32 %24, i32 0)
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = load i32, i32* @ADL_Main_Control_Create, align 4
  %28 = load i32, i32* @ADL_MAIN_CONTROL_CREATE, align 4
  %29 = load i32, i32* @ADL, align 4
  %30 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %26, i32 %27, i32 %28, i32 %29, i32 0)
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = load i32, i32* @ADL_Adapter_NumberOfAdapters_Get, align 4
  %33 = load i32, i32* @ADL_ADAPTER_NUMBEROFADAPTERS_GET, align 4
  %34 = load i32, i32* @ADL, align 4
  %35 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %31, i32 %32, i32 %33, i32 %34, i32 0)
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = load i32, i32* @ADL_Adapter_AdapterInfo_Get, align 4
  %38 = load i32, i32* @ADL_ADAPTER_ADAPTERINFO_GET, align 4
  %39 = load i32, i32* @ADL, align 4
  %40 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %36, i32 %37, i32 %38, i32 %39, i32 0)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = load i32, i32* @ADL_Display_DisplayInfo_Get, align 4
  %43 = load i32, i32* @ADL_DISPLAY_DISPLAYINFO_GET, align 4
  %44 = load i32, i32* @ADL, align 4
  %45 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %41, i32 %42, i32 %43, i32 %44, i32 0)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = load i32, i32* @ADL_Adapter_ID_Get, align 4
  %48 = load i32, i32* @ADL_ADAPTER_ID_GET, align 4
  %49 = load i32, i32* @ADL, align 4
  %50 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %46, i32 %47, i32 %48, i32 %49, i32 0)
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %52 = load i32, i32* @ADL_Adapter_VideoBiosInfo_Get, align 4
  %53 = load i32, i32* @ADL_ADAPTER_VIDEOBIOSINFO_GET, align 4
  %54 = load i32, i32* @ADL, align 4
  %55 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %51, i32 %52, i32 %53, i32 %54, i32 0)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = load i32, i32* @ADL_Overdrive5_ThermalDevices_Enum, align 4
  %58 = load i32, i32* @ADL_OVERDRIVE5_THERMALDEVICES_ENUM, align 4
  %59 = load i32, i32* @ADL, align 4
  %60 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %56, i32 %57, i32 %58, i32 %59, i32 0)
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = load i32, i32* @ADL_Overdrive5_Temperature_Get, align 4
  %63 = load i32, i32* @ADL_OVERDRIVE5_TEMPERATURE_GET, align 4
  %64 = load i32, i32* @ADL, align 4
  %65 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %61, i32 %62, i32 %63, i32 %64, i32 0)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = load i32, i32* @ADL_Overdrive6_Temperature_Get, align 4
  %68 = load i32, i32* @ADL_OVERDRIVE6_TEMPERATURE_GET, align 4
  %69 = load i32, i32* @ADL, align 4
  %70 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %66, i32 %67, i32 %68, i32 %69, i32 0)
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = load i32, i32* @ADL_Overdrive5_CurrentActivity_Get, align 4
  %73 = load i32, i32* @ADL_OVERDRIVE5_CURRENTACTIVITY_GET, align 4
  %74 = load i32, i32* @ADL, align 4
  %75 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %71, i32 %72, i32 %73, i32 %74, i32 0)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = load i32, i32* @ADL_Overdrive5_FanSpeedInfo_Get, align 4
  %78 = load i32, i32* @ADL_OVERDRIVE5_FANSPEEDINFO_GET, align 4
  %79 = load i32, i32* @ADL, align 4
  %80 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %76, i32 %77, i32 %78, i32 %79, i32 0)
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = load i32, i32* @ADL_Overdrive5_FanSpeed_Get, align 4
  %83 = load i32, i32* @ADL_OVERDRIVE5_FANSPEED_GET, align 4
  %84 = load i32, i32* @ADL, align 4
  %85 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %81, i32 %82, i32 %83, i32 %84, i32 0)
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %87 = load i32, i32* @ADL_Overdrive6_FanSpeed_Get, align 4
  %88 = load i32, i32* @ADL_OVERDRIVE6_FANSPEED_GET, align 4
  %89 = load i32, i32* @ADL, align 4
  %90 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %86, i32 %87, i32 %88, i32 %89, i32 0)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = load i32, i32* @ADL_Adapter_Active_Get, align 4
  %93 = load i32, i32* @ADL_ADAPTER_ACTIVE_GET, align 4
  %94 = load i32, i32* @ADL, align 4
  %95 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %91, i32 %92, i32 %93, i32 %94, i32 0)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = load i32, i32* @ADL_Overdrive_Caps, align 4
  %98 = load i32, i32* @ADL_OVERDRIVE_CAPS, align 4
  %99 = load i32, i32* @ADL, align 4
  %100 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %96, i32 %97, i32 %98, i32 %99, i32 0)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %102 = load i32, i32* @ADL_Overdrive6_Capabilities_Get, align 4
  %103 = load i32, i32* @ADL_OVERDRIVE6_CAPABILITIES_GET, align 4
  %104 = load i32, i32* @ADL, align 4
  %105 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %101, i32 %102, i32 %103, i32 %104, i32 0)
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %107 = load i32, i32* @ADL_Overdrive6_StateInfo_Get, align 4
  %108 = load i32, i32* @ADL_OVERDRIVE6_STATEINFO_GET, align 4
  %109 = load i32, i32* @ADL, align 4
  %110 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %106, i32 %107, i32 %108, i32 %109, i32 0)
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %112 = load i32, i32* @ADL_Overdrive6_CurrentStatus_Get, align 4
  %113 = load i32, i32* @ADL_OVERDRIVE6_CURRENTSTATUS_GET, align 4
  %114 = load i32, i32* @ADL, align 4
  %115 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %111, i32 %112, i32 %113, i32 %114, i32 0)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = load i32, i32* @ADL_Overdrive6_TargetTemperatureData_Get, align 4
  %118 = load i32, i32* @ADL_OVERDRIVE6_TARGETTEMPERATUREDATA_GET, align 4
  %119 = load i32, i32* @ADL, align 4
  %120 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %116, i32 %117, i32 %118, i32 %119, i32 0)
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %122 = load i32, i32* @ADL_Overdrive6_TargetTemperatureRangeInfo_Get, align 4
  %123 = load i32, i32* @ADL_OVERDRIVE6_TARGETTEMPERATURERANGEINFO_GET, align 4
  %124 = load i32, i32* @ADL, align 4
  %125 = call i32 @HC_LOAD_FUNC(%struct.TYPE_9__* %121, i32 %122, i32 %123, i32 %124, i32 0)
  store i32 0, i32* %2, align 4
  br label %126

126:                                              ; preds = %20, %19
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @HC_LOAD_FUNC(%struct.TYPE_9__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
