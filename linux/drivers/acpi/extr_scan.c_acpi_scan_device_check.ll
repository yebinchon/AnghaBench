; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_scan_device_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_scan_device_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Already enumerated\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Namespace scan failure\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Enumeration failure\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @acpi_scan_device_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_scan_device_check(%struct.acpi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  %5 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %6 = call i32 @acpi_bus_get_status(%struct.acpi_device* %5)
  %7 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %8 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %12, %1
  %19 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 0
  %26 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EALREADY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %58

29:                                               ; preds = %18
  %30 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @acpi_bus_scan(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %37, i32 0, i32 0
  %39 = call i32 @dev_warn(i32* %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %58

41:                                               ; preds = %29
  %42 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %43 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %48 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %47, i32 0, i32 0
  %49 = call i32 @dev_warn(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %46, %41
  br label %56

53:                                               ; preds = %12
  %54 = load %struct.acpi_device*, %struct.acpi_device** %3, align 8
  %55 = call i32 @acpi_scan_device_not_present(%struct.acpi_device* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %36, %23
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @acpi_bus_get_status(%struct.acpi_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @acpi_bus_scan(i32) #1

declare dso_local i32 @acpi_scan_device_not_present(%struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
