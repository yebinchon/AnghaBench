; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ibmebus.c_ibmebus_bus_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_ibmebus.c_ibmebus_bus_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_driver = type { i32 (%struct.platform_device*)* }
%struct.platform_device = type opaque
%struct.platform_device.0 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ibmebus_bus_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmebus_bus_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_driver*, align 8
  %6 = alloca %struct.platform_device.0*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.platform_driver* @to_platform_driver(i32 %11)
  store %struct.platform_driver* %12, %struct.platform_driver** %5, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call %struct.platform_device.0* @to_platform_device(%struct.device* %13)
  store %struct.platform_device.0* %14, %struct.platform_device.0** %6, align 8
  %15 = load %struct.platform_driver*, %struct.platform_driver** %5, align 8
  %16 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %15, i32 0, i32 0
  %17 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %16, align 8
  %18 = icmp ne i32 (%struct.platform_device*)* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %45

21:                                               ; preds = %1
  %22 = load %struct.platform_device.0*, %struct.platform_device.0** %6, align 8
  %23 = call i32 @of_dev_get(%struct.platform_device.0* %22)
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @of_driver_match_device(%struct.device* %24, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.platform_driver*, %struct.platform_driver** %5, align 8
  %32 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %31, i32 0, i32 0
  %33 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %32, align 8
  %34 = load %struct.platform_device.0*, %struct.platform_device.0** %6, align 8
  %35 = bitcast %struct.platform_device.0* %34 to %struct.platform_device*
  %36 = call i32 %33(%struct.platform_device* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %30, %21
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load %struct.platform_device.0*, %struct.platform_device.0** %6, align 8
  %42 = call i32 @of_dev_put(%struct.platform_device.0* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %19
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.platform_driver* @to_platform_driver(i32) #1

declare dso_local %struct.platform_device.0* @to_platform_device(%struct.device*) #1

declare dso_local i32 @of_dev_get(%struct.platform_device.0*) #1

declare dso_local i64 @of_driver_match_device(%struct.device*, i32) #1

declare dso_local i32 @of_dev_put(%struct.platform_device.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
