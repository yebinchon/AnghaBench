; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_get_device_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_scan.c_acpi_get_device_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@acpi_scan_drop_device = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"No context for object [%p]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_device**, void (i8*)*)* @acpi_get_device_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_get_device_data(i32 %0, %struct.acpi_device** %1, void (i8*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_device**, align 8
  %7 = alloca void (i8*)*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.acpi_device** %1, %struct.acpi_device*** %6, align 8
  store void (i8*)* %2, void (i8*)** %7, align 8
  %9 = load %struct.acpi_device**, %struct.acpi_device*** %6, align 8
  %10 = icmp ne %struct.acpi_device** %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %4, align 4
  br label %35

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @acpi_scan_drop_device, align 4
  %17 = load %struct.acpi_device**, %struct.acpi_device*** %6, align 8
  %18 = bitcast %struct.acpi_device** %17 to i8**
  %19 = load void (i8*)*, void (i8*)** %7, align 8
  %20 = call i32 @acpi_get_data_full(i32 %15, i32 %16, i8** %18, void (i8*)* %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @ACPI_FAILURE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %14
  %25 = load %struct.acpi_device**, %struct.acpi_device*** %6, align 8
  %26 = load %struct.acpi_device*, %struct.acpi_device** %25, align 8
  %27 = icmp ne %struct.acpi_device* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %14
  %29 = load i32, i32* @ACPI_DB_INFO, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ACPI_DEBUG_PRINT(i32 %30)
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %28, %11
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @acpi_get_data_full(i32, i32, i8**, void (i8*)*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
