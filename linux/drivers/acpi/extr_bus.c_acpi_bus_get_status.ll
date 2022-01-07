; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_bus_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_bus_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@ACPI_STA_DEFAULT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Device [%s] status [%08x]: functional but not present;\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Device [%s] status [%08x]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_bus_get_status(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %6 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %7 = call i64 @acpi_device_always_present(%struct.acpi_device* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %11 = load i64, i64* @ACPI_STA_DEFAULT, align 8
  %12 = call i32 @acpi_set_device_status(%struct.acpi_device* %10, i64 %11)
  store i32 0, i32* %2, align 4
  br label %69

13:                                               ; preds = %1
  %14 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %15 = call i64 @acpi_device_is_battery(%struct.acpi_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %13
  %18 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %24 = call i32 @acpi_set_device_status(%struct.acpi_device* %23, i64 0)
  store i32 0, i32* %2, align 4
  br label %69

25:                                               ; preds = %17, %13
  %26 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @acpi_bus_get_status_handle(i32 %28, i64* %5)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i64 @ACPI_FAILURE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %69

36:                                               ; preds = %25
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @acpi_set_device_status(%struct.acpi_device* %37, i64 %38)
  %40 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %41 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %36
  %46 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %47 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %60, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ACPI_DB_INFO, align 4
  %53 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %54 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @ACPI_DEBUG_PRINT(i32 %58)
  br label %60

60:                                               ; preds = %51, %45, %36
  %61 = load i32, i32* @ACPI_DB_INFO, align 4
  %62 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %63 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i64, i64* %5, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i32 @ACPI_DEBUG_PRINT(i32 %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %60, %33, %22, %9
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i64 @acpi_device_always_present(%struct.acpi_device*) #1

declare dso_local i32 @acpi_set_device_status(%struct.acpi_device*, i64) #1

declare dso_local i64 @acpi_device_is_battery(%struct.acpi_device*) #1

declare dso_local i32 @acpi_bus_get_status_handle(i32, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
