; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_bus_get_status_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_bus.c_acpi_bus_get_status_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@ACPI_STA_DEVICE_PRESENT = common dso_local global i64 0, align 8
@ACPI_STA_DEVICE_ENABLED = common dso_local global i64 0, align 8
@ACPI_STA_DEVICE_UI = common dso_local global i64 0, align 8
@ACPI_STA_DEVICE_FUNCTIONING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_bus_get_status_handle(i32 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i64*, i64** %5, align 8
  %9 = call i64 @acpi_evaluate_integer(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @ACPI_SUCCESS(i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @AE_OK, align 8
  store i64 %14, i64* %3, align 8
  br label %31

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* @AE_NOT_FOUND, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %15
  %20 = load i64, i64* @ACPI_STA_DEVICE_PRESENT, align 8
  %21 = load i64, i64* @ACPI_STA_DEVICE_ENABLED, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @ACPI_STA_DEVICE_UI, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @ACPI_STA_DEVICE_FUNCTIONING, align 8
  %26 = or i64 %24, %25
  %27 = load i64*, i64** %5, align 8
  store i64 %26, i64* %27, align 8
  %28 = load i64, i64* @AE_OK, align 8
  store i64 %28, i64* %3, align 8
  br label %31

29:                                               ; preds = %15
  %30 = load i64, i64* %6, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %29, %19, %13
  %32 = load i64, i64* %3, align 8
  ret i64 %32
}

declare dso_local i64 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
