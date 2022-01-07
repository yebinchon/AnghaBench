; ModuleID = '/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hwmon_ctx_destroy.c'
source_filename = "/home/carl/AnghaBench/hashcat/src/extr_hwmon.c_hwmon_ctx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hwmon_ctx_destroy(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %4, i32 0, i32 0
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %6, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %61

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = call i32 @hm_NVML_nvmlShutdown(%struct.TYPE_13__* %18)
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %21 = call i32 @nvml_close(%struct.TYPE_13__* %20)
  br label %22

22:                                               ; preds = %17, %12
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %29 = call i32 @hm_NvAPI_Unload(%struct.TYPE_13__* %28)
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %31 = call i32 @nvapi_close(%struct.TYPE_13__* %30)
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %39 = call i32 @hm_ADL_Main_Control_Destroy(%struct.TYPE_13__* %38)
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %41 = call i32 @adl_close(%struct.TYPE_13__* %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = call i32 @sysfs_close(%struct.TYPE_13__* %48)
  br label %50

50:                                               ; preds = %47, %42
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @hcfree(i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @hcfree(i32 %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %60 = call i32 @memset(%struct.TYPE_12__* %59, i32 0, i32 48)
  br label %61

61:                                               ; preds = %50, %11
  ret void
}

declare dso_local i32 @hm_NVML_nvmlShutdown(%struct.TYPE_13__*) #1

declare dso_local i32 @nvml_close(%struct.TYPE_13__*) #1

declare dso_local i32 @hm_NvAPI_Unload(%struct.TYPE_13__*) #1

declare dso_local i32 @nvapi_close(%struct.TYPE_13__*) #1

declare dso_local i32 @hm_ADL_Main_Control_Destroy(%struct.TYPE_13__*) #1

declare dso_local i32 @adl_close(%struct.TYPE_13__*) #1

declare dso_local i32 @sysfs_close(%struct.TYPE_13__*) #1

declare dso_local i32 @hcfree(i32) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
