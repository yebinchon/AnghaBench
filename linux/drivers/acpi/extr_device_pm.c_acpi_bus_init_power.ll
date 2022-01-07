; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_device_pm.c_acpi_bus_init_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_device_pm.c_acpi_bus_init_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ACPI_STATE_D3_COLD = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_init_power(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = icmp ne %struct.acpi_device* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %77

11:                                               ; preds = %1
  %12 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  %16 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %17 = call i32 @acpi_device_is_present(%struct.acpi_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %11
  %20 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load i32, i32* @ENXIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %77

25:                                               ; preds = %11
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = call i32 @acpi_device_get_power(%struct.acpi_device* %26, i32* %4)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %77

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @ACPI_STATE_D3_COLD, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %32
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %65

43:                                               ; preds = %36
  %44 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @acpi_power_on_resources(%struct.acpi_device* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %77

51:                                               ; preds = %43
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @ACPI_STATE_D0, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @acpi_dev_pm_explicit_set(%struct.acpi_device* %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %77

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %51
  br label %72

65:                                               ; preds = %36, %32
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @ACPI_STATE_D0, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %65
  br label %72

72:                                               ; preds = %71, %64
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %75 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %72, %61, %49, %30, %19, %8
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @acpi_device_is_present(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_get_power(%struct.acpi_device*, i32*) #1

declare dso_local i32 @acpi_power_on_resources(%struct.acpi_device*, i32) #1

declare dso_local i32 @acpi_dev_pm_explicit_set(%struct.acpi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
