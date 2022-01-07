; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_device_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_device_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.acpi_device = type { %struct.TYPE_4__, i32*, %struct.acpi_driver*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_driver = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.acpi_device.0*)*, i32 (%struct.acpi_device.1*)*, i64 }
%struct.acpi_device.0 = type opaque
%struct.acpi_device.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Driver [%s] successfully bound to device [%s]\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Found driver [%s] for device [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @acpi_device_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_device_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca %struct.acpi_driver*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.acpi_device* @to_acpi_device(%struct.device* %7)
  store %struct.acpi_device* %8, %struct.acpi_device** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.acpi_driver* @to_acpi_driver(i32 %11)
  store %struct.acpi_driver* %12, %struct.acpi_driver** %5, align 8
  %13 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %19 = call i32 @acpi_is_pnp_device(%struct.acpi_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %101

24:                                               ; preds = %17, %1
  %25 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %26 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.acpi_device.0*)*, i32 (%struct.acpi_device.0*)** %27, align 8
  %29 = icmp ne i32 (%struct.acpi_device.0*)* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOSYS, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %101

33:                                               ; preds = %24
  %34 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %35 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.acpi_device.0*)*, i32 (%struct.acpi_device.0*)** %36, align 8
  %38 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %39 = bitcast %struct.acpi_device* %38 to %struct.acpi_device.0*
  %40 = call i32 %37(%struct.acpi_device.0* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %33
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %101

45:                                               ; preds = %33
  %46 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %47 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 2
  store %struct.acpi_driver* %46, %struct.acpi_driver** %48, align 8
  %49 = load i32, i32* @ACPI_DB_INFO, align 4
  %50 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %51 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %54 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ACPI_DEBUG_PRINT(i32 %56)
  %58 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %45
  %64 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %65 = call i32 @acpi_device_install_notify_handler(%struct.acpi_device* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  %69 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %70 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32 (%struct.acpi_device.1*)*, i32 (%struct.acpi_device.1*)** %71, align 8
  %73 = icmp ne i32 (%struct.acpi_device.1*)* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %76 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32 (%struct.acpi_device.1*)*, i32 (%struct.acpi_device.1*)** %77, align 8
  %79 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %80 = bitcast %struct.acpi_device* %79 to %struct.acpi_device.1*
  %81 = call i32 %78(%struct.acpi_device.1* %80)
  br label %82

82:                                               ; preds = %74, %68
  %83 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %84 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %83, i32 0, i32 2
  store %struct.acpi_driver* null, %struct.acpi_driver** %84, align 8
  %85 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %86 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %85, i32 0, i32 1
  store i32* null, i32** %86, align 8
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %101

88:                                               ; preds = %63
  br label %89

89:                                               ; preds = %88, %45
  %90 = load i32, i32* @ACPI_DB_INFO, align 4
  %91 = load %struct.acpi_driver*, %struct.acpi_driver** %5, align 8
  %92 = getelementptr inbounds %struct.acpi_driver, %struct.acpi_driver* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %95 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @ACPI_DEBUG_PRINT(i32 %97)
  %99 = load %struct.device*, %struct.device** %3, align 8
  %100 = call i32 @get_device(%struct.device* %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %89, %82, %43, %30, %21
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.acpi_device* @to_acpi_device(%struct.device*) #1

declare dso_local %struct.acpi_driver* @to_acpi_driver(i32) #1

declare dso_local i32 @acpi_is_pnp_device(%struct.acpi_device*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_device_install_notify_handler(%struct.acpi_device*) #1

declare dso_local i32 @get_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
