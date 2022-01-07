; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___driver_attach_async_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_dd.c___driver_attach_async_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.device_driver* }
%struct.device_driver = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"driver %s async attach completed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @__driver_attach_async_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__driver_attach_async_helper(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_driver*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.device*
  store %struct.device* %9, %struct.device** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @__device_driver_lock(%struct.device* %10, i32 %13)
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.device_driver*, %struct.device_driver** %18, align 8
  store %struct.device_driver* %19, %struct.device_driver** %6, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %2
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = call i32 @driver_probe_device(%struct.device_driver* %32, %struct.device* %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %31, %26, %2
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = getelementptr inbounds %struct.device, %struct.device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @__device_driver_unlock(%struct.device* %36, i32 %39)
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load %struct.device_driver*, %struct.device_driver** %6, align 8
  %43 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_dbg(%struct.device* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %45)
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @put_device(%struct.device* %47)
  ret void
}

declare dso_local i32 @__device_driver_lock(%struct.device*, i32) #1

declare dso_local i32 @driver_probe_device(%struct.device_driver*, %struct.device*) #1

declare dso_local i32 @__device_driver_unlock(%struct.device*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
