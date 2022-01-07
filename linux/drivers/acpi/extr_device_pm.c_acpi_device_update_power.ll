; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_device_pm.c_acpi_device_update_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_device_pm.c_acpi_device_update_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4
@ACPI_STATE_D0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_device_update_power(%struct.acpi_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %9 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %16 = call i32 @acpi_bus_init_power(%struct.acpi_device* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %14
  %20 = load i32*, i32** %5, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %24 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32*, i32** %5, align 8
  store i32 %26, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %19, %14
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %2
  %31 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %32 = call i32 @acpi_device_get_power(%struct.acpi_device* %31, i32* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %79

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load i32, i32* @ACPI_STATE_D0, align 4
  store i32 %42, i32* %6, align 4
  %43 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @acpi_device_set_power(%struct.acpi_device* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %79

50:                                               ; preds = %41
  br label %72

51:                                               ; preds = %37
  %52 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %53 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %51
  %59 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @acpi_power_transition(%struct.acpi_device* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %79

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %51
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %70 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  br label %72

72:                                               ; preds = %67, %50
  %73 = load i32*, i32** %5, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %78

78:                                               ; preds = %75, %72
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %64, %48, %35, %28
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @acpi_bus_init_power(%struct.acpi_device*) #1

declare dso_local i32 @acpi_device_get_power(%struct.acpi_device*, i32*) #1

declare dso_local i32 @acpi_device_set_power(%struct.acpi_device*, i32) #1

declare dso_local i32 @acpi_power_transition(%struct.acpi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
