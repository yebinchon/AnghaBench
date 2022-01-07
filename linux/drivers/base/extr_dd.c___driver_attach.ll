; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___driver_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___driver_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.device_driver* }
%struct.device_driver = type { i32 }

@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Device match requests probe deferral\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Bus failed to match device: %d\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"probing driver %s asynchronously\0A\00", align 1
@__driver_attach_async_helper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__driver_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__driver_attach(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.device_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.device_driver*
  store %struct.device_driver* %9, %struct.device_driver** %6, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @driver_match_device(%struct.device_driver* %10, %struct.device* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %70

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @EPROBE_DEFER, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = call i32 @driver_deferred_probe_add(%struct.device* %24)
  br label %35

26:                                               ; preds = %16
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %70

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %38 = call i64 @driver_allows_async_probing(%struct.device_driver* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %66

40:                                               ; preds = %36
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %43 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = call i32 @device_lock(%struct.device* %46)
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = getelementptr inbounds %struct.device, %struct.device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %40
  %53 = load %struct.device*, %struct.device** %4, align 8
  %54 = call i32 @get_device(%struct.device* %53)
  %55 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %56 = load %struct.device*, %struct.device** %4, align 8
  %57 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store %struct.device_driver* %55, %struct.device_driver** %59, align 8
  %60 = load i32, i32* @__driver_attach_async_helper, align 4
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @async_schedule_dev(i32 %60, %struct.device* %61)
  br label %63

63:                                               ; preds = %52, %40
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @device_unlock(%struct.device* %64)
  store i32 0, i32* %3, align 4
  br label %70

66:                                               ; preds = %36
  %67 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @device_driver_attach(%struct.device_driver* %67, %struct.device* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %63, %29, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @driver_match_device(%struct.device_driver*, %struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @driver_deferred_probe_add(%struct.device*) #1

declare dso_local i64 @driver_allows_async_probing(%struct.device_driver*) #1

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @async_schedule_dev(i32, %struct.device*) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

declare dso_local i32 @device_driver_attach(%struct.device_driver*, %struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
