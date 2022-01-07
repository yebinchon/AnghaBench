; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_device.c__omap_device_notifier_call.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_omap_device.c__omap_device_notifier_call.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }
%struct.platform_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.omap_device = type { i32, i32 }

@OMAP_DEVICE_STATE_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"enabled after unload, idling\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"failed to idle\0A\00", align 1
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @_omap_device_notifier_call to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_omap_device_notifier_call(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.omap_device*, align 8
  %9 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.platform_device* @to_platform_device(i8* %10)
  store %struct.platform_device* %11, %struct.platform_device** %7, align 8
  %12 = load i64, i64* %5, align 8
  switch i64 %12, label %82 [
    i64 129, label %13
    i64 128, label %26
    i64 130, label %49
    i64 131, label %70
  ]

13:                                               ; preds = %3
  %14 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %13
  %20 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @omap_device_delete(i32 %23)
  br label %25

25:                                               ; preds = %19, %13
  br label %93

26:                                               ; preds = %3
  %27 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %28 = call %struct.omap_device* @to_omap_device(%struct.platform_device* %27)
  store %struct.omap_device* %28, %struct.omap_device** %8, align 8
  %29 = load %struct.omap_device*, %struct.omap_device** %8, align 8
  %30 = icmp ne %struct.omap_device* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.omap_device*, %struct.omap_device** %8, align 8
  %33 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @OMAP_DEVICE_STATE_ENABLED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %31
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @dev_info(i8* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %41 = call i32 @omap_device_idle(%struct.platform_device* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %37
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @dev_err(i8* %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %37
  br label %48

48:                                               ; preds = %47, %31, %26
  br label %93

49:                                               ; preds = %3
  %50 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %51 = call %struct.omap_device* @to_omap_device(%struct.platform_device* %50)
  store %struct.omap_device* %51, %struct.omap_device** %8, align 8
  %52 = load %struct.omap_device*, %struct.omap_device** %8, align 8
  %53 = icmp ne %struct.omap_device* %52, null
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load %struct.omap_device*, %struct.omap_device** %8, align 8
  %56 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @OMAP_DEVICE_STATE_ENABLED, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %69

60:                                               ; preds = %54
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @pm_runtime_status_suspended(i8* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.omap_device*, %struct.omap_device** %8, align 8
  %66 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %65, i32 0, i32 0
  store i32 130, i32* %66, align 4
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @pm_runtime_set_active(i8* %67)
  br label %69

69:                                               ; preds = %64, %60, %54, %49
  br label %93

70:                                               ; preds = %3
  %71 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %78 = call i32 @omap_device_build_from_dt(%struct.platform_device* %77)
  br label %79

79:                                               ; preds = %76, %70
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 @omap_auxdata_legacy_init(i8* %80)
  br label %82

82:                                               ; preds = %3, %79
  %83 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %84 = call %struct.omap_device* @to_omap_device(%struct.platform_device* %83)
  store %struct.omap_device* %84, %struct.omap_device** %8, align 8
  %85 = load %struct.omap_device*, %struct.omap_device** %8, align 8
  %86 = icmp ne %struct.omap_device* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load i64, i64* %5, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.omap_device*, %struct.omap_device** %8, align 8
  %91 = getelementptr inbounds %struct.omap_device, %struct.omap_device* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %69, %48, %25
  %94 = load i32, i32* @NOTIFY_DONE, align 4
  ret i32 %94
}

declare dso_local %struct.platform_device* @to_platform_device(i8*) #1

declare dso_local i32 @omap_device_delete(i32) #1

declare dso_local %struct.omap_device* @to_omap_device(%struct.platform_device*) #1

declare dso_local i32 @dev_info(i8*, i8*) #1

declare dso_local i32 @omap_device_idle(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i8*, i8*) #1

declare dso_local i32 @pm_runtime_status_suspended(i8*) #1

declare dso_local i32 @pm_runtime_set_active(i8*) #1

declare dso_local i32 @omap_device_build_from_dt(%struct.platform_device*) #1

declare dso_local i32 @omap_auxdata_legacy_init(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
