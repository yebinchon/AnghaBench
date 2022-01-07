; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___device_attach_async_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___device_attach_async_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.device_attach_data = type { i32, i32, %struct.device* }

@__device_attach_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"async probe completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @__device_attach_async_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__device_attach_async_helper(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attach_data, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.device*
  store %struct.device* %8, %struct.device** %5, align 8
  %9 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %6, i32 0, i32 0
  store i32 1, i32* %9, align 8
  %10 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %6, i32 0, i32 1
  store i32 1, i32* %10, align 4
  %11 = getelementptr inbounds %struct.device_attach_data, %struct.device_attach_data* %6, i32 0, i32 2
  %12 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %12, %struct.device** %11, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call i32 @device_lock(%struct.device* %13)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %5, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %2
  br label %57

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %5, align 8
  %29 = getelementptr inbounds %struct.device, %struct.device* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @pm_runtime_get_sync(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = getelementptr inbounds %struct.device, %struct.device* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @__device_attach_driver, align 4
  %42 = call i32 @bus_for_each_drv(i32 %40, i32* null, %struct.device_attach_data* %6, i32 %41)
  %43 = load %struct.device*, %struct.device** %5, align 8
  %44 = call i32 @dev_dbg(%struct.device* %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = call i32 @pm_request_idle(%struct.device* %45)
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %37
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = getelementptr inbounds %struct.device, %struct.device* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @pm_runtime_put(i64 %54)
  br label %56

56:                                               ; preds = %51, %37
  br label %57

57:                                               ; preds = %56, %26
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = call i32 @device_unlock(%struct.device* %58)
  %60 = load %struct.device*, %struct.device** %5, align 8
  %61 = call i32 @put_device(%struct.device* %60)
  ret void
}

declare dso_local i32 @device_lock(%struct.device*) #1

declare dso_local i32 @pm_runtime_get_sync(i64) #1

declare dso_local i32 @bus_for_each_drv(i32, i32*, %struct.device_attach_data*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @pm_request_idle(%struct.device*) #1

declare dso_local i32 @pm_runtime_put(i64) #1

declare dso_local i32 @device_unlock(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
