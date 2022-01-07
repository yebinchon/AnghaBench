; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___device_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___device_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i32, i32* }
%struct.device_attach_data = type { i32, i32, i64, %struct.device* }

@__device_attach_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"scheduling asynchronous probe\0A\00", align 1
@__device_attach_async_helper = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @__device_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__device_attach(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_attach_data, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 @device_lock(%struct.device* %7)
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = call i64 @device_is_bound(%struct.device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 1, i32* %5, align 4
  br label %82

18:                                               ; preds = %13
  %19 = load %struct.device*, %struct.device** %3, align 8
  %20 = call i32 @device_bind_driver(%struct.device* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %27

24:                                               ; preds = %18
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %24, %23
  br label %81

28:                                               ; preds = %2
  %29 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %6, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %6, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %6, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %6, i32 0, i32 3
  %34 = load %struct.device*, %struct.device** %3, align 8
  store %struct.device* %34, %struct.device** %33, align 8
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = getelementptr inbounds %struct.device, %struct.device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %28
  %40 = load %struct.device*, %struct.device** %3, align 8
  %41 = getelementptr inbounds %struct.device, %struct.device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @pm_runtime_get_sync(i64 %42)
  br label %44

44:                                               ; preds = %39, %28
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = getelementptr inbounds %struct.device, %struct.device* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @__device_attach_driver, align 4
  %49 = call i32 @bus_for_each_drv(i32 %47, i32* null, %struct.device_attach_data* %6, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %67, label %52

52:                                               ; preds = %44
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %6, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = call i32 @dev_dbg(%struct.device* %60, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = call i32 @get_device(%struct.device* %62)
  %64 = load i32, i32* @__device_attach_async_helper, align 4
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = call i32 @async_schedule_dev(i32 %64, %struct.device* %65)
  br label %70

67:                                               ; preds = %55, %52, %44
  %68 = load %struct.device*, %struct.device** %3, align 8
  %69 = call i32 @pm_request_idle(%struct.device* %68)
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = getelementptr inbounds %struct.device, %struct.device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.device*, %struct.device** %3, align 8
  %77 = getelementptr inbounds %struct.device, %struct.device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @pm_runtime_put(i64 %78)
  br label %80

80:                                               ; preds = %75, %70
  br label %81

81:                                               ; preds = %80, %27
  br label %82

82:                                               ; preds = %81, %17
  %83 = load %struct.device*, %struct.device** %3, align 8
  %84 = call i32 @device_unlock(%struct.device* %83)
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i64 @device_is_bound(%struct.device*) #1

declare dso_local i32 @device_bind_driver(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(i64) #1

declare dso_local i32 @bus_for_each_drv(i32, i32*, %struct.device_attach_data*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @async_schedule_dev(i32, %struct.device*) #1

declare dso_local i32 @pm_request_idle(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(i64) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
