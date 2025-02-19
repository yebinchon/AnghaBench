; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_unbind_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_bus.c_unbind_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_driver = type { i32 }
%struct.bus_type = type { i32 }
%struct.device = type { %struct.device_driver* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_driver*, i8*, i64)* @unbind_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unbind_store(%struct.device_driver* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.device_driver*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bus_type*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.device_driver* %0, %struct.device_driver** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %11 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.bus_type* @bus_get(i32 %12)
  store %struct.bus_type* %13, %struct.bus_type** %7, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.bus_type*, %struct.bus_type** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call %struct.device* @bus_find_device_by_name(%struct.bus_type* %16, i32* null, i8* %17)
  store %struct.device* %18, %struct.device** %8, align 8
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %3
  %22 = load %struct.device*, %struct.device** %8, align 8
  %23 = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 0
  %24 = load %struct.device_driver*, %struct.device_driver** %23, align 8
  %25 = load %struct.device_driver*, %struct.device_driver** %4, align 8
  %26 = icmp eq %struct.device_driver* %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %8, align 8
  %29 = call i32 @device_driver_detach(%struct.device* %28)
  %30 = load i64, i64* %6, align 8
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27, %21, %3
  %33 = load %struct.device*, %struct.device** %8, align 8
  %34 = call i32 @put_device(%struct.device* %33)
  %35 = load %struct.bus_type*, %struct.bus_type** %7, align 8
  %36 = call i32 @bus_put(%struct.bus_type* %35)
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local %struct.bus_type* @bus_get(i32) #1

declare dso_local %struct.device* @bus_find_device_by_name(%struct.bus_type*, i32*, i8*) #1

declare dso_local i32 @device_driver_detach(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @bus_put(%struct.bus_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
