; ModuleID = '/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/base/extr_platform.c_platform_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_driver = type { i32 }
%struct.platform_device = type { i64, i64 }
%struct.platform_driver = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_driver*)* @platform_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_match(%struct.device* %0, %struct.device_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_driver*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca %struct.platform_driver*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_driver* %1, %struct.device_driver** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.platform_device* @to_platform_device(%struct.device* %8)
  store %struct.platform_device* %9, %struct.platform_device** %6, align 8
  %10 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %11 = call %struct.platform_driver* @to_platform_driver(%struct.device_driver* %10)
  store %struct.platform_driver* %11, %struct.platform_driver** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %21 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @strcmp(i64 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %62

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %30 = call i64 @of_driver_match_device(%struct.device* %28, %struct.device_driver* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %62

33:                                               ; preds = %27
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %36 = call i64 @acpi_driver_match_device(%struct.device* %34, %struct.device_driver* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %3, align 4
  br label %62

39:                                               ; preds = %33
  %40 = load %struct.platform_driver*, %struct.platform_driver** %7, align 8
  %41 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.platform_driver*, %struct.platform_driver** %7, align 8
  %46 = getelementptr inbounds %struct.platform_driver, %struct.platform_driver* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %49 = call i32* @platform_match_id(i64 %47, %struct.platform_device* %48)
  %50 = icmp ne i32* %49, null
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %3, align 4
  br label %62

52:                                               ; preds = %39
  %53 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.device_driver*, %struct.device_driver** %5, align 8
  %57 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @strcmp(i64 %55, i32 %58)
  %60 = icmp eq i64 %59, 0
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %52, %44, %38, %32, %16
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.platform_driver* @to_platform_driver(%struct.device_driver*) #1

declare dso_local i64 @strcmp(i64, i32) #1

declare dso_local i64 @of_driver_match_device(%struct.device*, %struct.device_driver*) #1

declare dso_local i64 @acpi_driver_match_device(%struct.device*, %struct.device_driver*) #1

declare dso_local i32* @platform_match_id(i64, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
