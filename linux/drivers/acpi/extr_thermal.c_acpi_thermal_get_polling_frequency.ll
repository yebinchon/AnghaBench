; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_acpi_thermal_get_polling_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_thermal.c_acpi_thermal_get_polling_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_thermal = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_TZP\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Polling frequency is %lu dS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_thermal*)* @acpi_thermal_get_polling_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_get_polling_frequency(%struct.acpi_thermal* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_thermal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.acpi_thermal* %0, %struct.acpi_thermal** %3, align 8
  %6 = load i32, i32* @AE_OK, align 4
  store i32 %6, i32* %4, align 4
  %7 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %8 = icmp ne %struct.acpi_thermal* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %35

12:                                               ; preds = %1
  %13 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @acpi_evaluate_integer(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, i64* %5)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @ACPI_FAILURE(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %12
  %23 = load i32, i32* @ENODEV, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %12
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @ACPI_DB_INFO, align 4
  %30 = load %struct.acpi_thermal*, %struct.acpi_thermal** %3, align 8
  %31 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @ACPI_DEBUG_PRINT(i32 %33)
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %25, %22, %9
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @acpi_evaluate_integer(i32, i8*, i32*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
