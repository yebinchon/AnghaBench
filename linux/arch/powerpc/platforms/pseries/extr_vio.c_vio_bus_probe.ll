; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vio.c_vio_bus_probe.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_vio.c_vio_bus_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.vio_dev = type { i32 }
%struct.vio_driver = type { i32 (%struct.vio_dev.0*, %struct.vio_device_id*)*, i32 }
%struct.vio_dev.0 = type opaque
%struct.vio_device_id = type opaque
%struct.vio_device_id.1 = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@FW_FEATURE_CMO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @vio_bus_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vio_bus_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.vio_driver*, align 8
  %6 = alloca %struct.vio_device_id.1*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.vio_dev* @to_vio_dev(%struct.device* %8)
  store %struct.vio_dev* %9, %struct.vio_dev** %4, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.vio_driver* @to_vio_driver(i32 %12)
  store %struct.vio_driver* %13, %struct.vio_driver** %5, align 8
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %7, align 4
  %16 = load %struct.vio_driver*, %struct.vio_driver** %5, align 8
  %17 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %16, i32 0, i32 0
  %18 = load i32 (%struct.vio_dev.0*, %struct.vio_device_id*)*, i32 (%struct.vio_dev.0*, %struct.vio_device_id*)** %17, align 8
  %19 = icmp ne i32 (%struct.vio_dev.0*, %struct.vio_device_id*)* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %2, align 4
  br label %66

22:                                               ; preds = %1
  %23 = load %struct.vio_driver*, %struct.vio_driver** %5, align 8
  %24 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %27 = call %struct.vio_device_id.1* @vio_match_device(i32 %25, %struct.vio_dev* %26)
  store %struct.vio_device_id.1* %27, %struct.vio_device_id.1** %6, align 8
  %28 = load %struct.vio_device_id.1*, %struct.vio_device_id.1** %6, align 8
  %29 = icmp ne %struct.vio_device_id.1* %28, null
  br i1 %29, label %30, label %64

30:                                               ; preds = %22
  %31 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %32 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %31, i32 0, i32 0
  %33 = call i32 @memset(i32* %32, i32 0, i32 4)
  %34 = load i32, i32* @FW_FEATURE_CMO, align 4
  %35 = call i64 @firmware_has_feature(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %30
  %38 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %39 = call i32 @vio_cmo_bus_probe(%struct.vio_dev* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %66

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.vio_driver*, %struct.vio_driver** %5, align 8
  %47 = getelementptr inbounds %struct.vio_driver, %struct.vio_driver* %46, i32 0, i32 0
  %48 = load i32 (%struct.vio_dev.0*, %struct.vio_device_id*)*, i32 (%struct.vio_dev.0*, %struct.vio_device_id*)** %47, align 8
  %49 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %50 = bitcast %struct.vio_dev* %49 to %struct.vio_dev.0*
  %51 = load %struct.vio_device_id.1*, %struct.vio_device_id.1** %6, align 8
  %52 = bitcast %struct.vio_device_id.1* %51 to %struct.vio_device_id*
  %53 = call i32 %48(%struct.vio_dev.0* %50, %struct.vio_device_id* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load i32, i32* @FW_FEATURE_CMO, align 4
  %58 = call i64 @firmware_has_feature(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %62 = call i32 @vio_cmo_bus_remove(%struct.vio_dev* %61)
  br label %63

63:                                               ; preds = %60, %56, %45
  br label %64

64:                                               ; preds = %63, %22
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %42, %20
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.vio_dev* @to_vio_dev(%struct.device*) #1

declare dso_local %struct.vio_driver* @to_vio_driver(i32) #1

declare dso_local %struct.vio_device_id.1* @vio_match_device(i32, %struct.vio_dev*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @firmware_has_feature(i32) #1

declare dso_local i32 @vio_cmo_bus_probe(%struct.vio_dev*) #1

declare dso_local i32 @vio_cmo_bus_remove(%struct.vio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
