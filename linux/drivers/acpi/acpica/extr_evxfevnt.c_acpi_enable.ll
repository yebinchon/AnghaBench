; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evxfevnt.c_acpi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evxfevnt.c_acpi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_fadt_index = common dso_local global i64 0, align 8
@ACPI_INVALID_TABLE_INDEX = common dso_local global i64 0, align 8
@AE_NO_ACPI_TABLES = common dso_local global i32 0, align 4
@acpi_gbl_reduced_hardware = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@ACPI_SYS_MODE_ACPI = common dso_local global i64 0, align 8
@ACPI_DB_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"System is already in ACPI mode\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Could not transition to ACPI mode\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Platform took > %d00 usec to enter ACPI mode\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Hardware did not enter ACPI mode\00", align 1
@AE_NO_HARDWARE_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @ACPI_FUNCTION_TRACE(i32 (...)* bitcast (i32 ()* @acpi_enable to i32 (...)*))
  %5 = load i64, i64* @acpi_gbl_fadt_index, align 8
  %6 = load i64, i64* @ACPI_INVALID_TABLE_INDEX, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* @AE_NO_ACPI_TABLES, align 4
  %10 = call i32 @return_ACPI_STATUS(i32 %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i64, i64* @acpi_gbl_reduced_hardware, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @AE_OK, align 4
  %16 = call i32 @return_ACPI_STATUS(i32 %15)
  br label %17

17:                                               ; preds = %14, %11
  %18 = call i64 (...) @acpi_hw_get_mode()
  %19 = load i64, i64* @ACPI_SYS_MODE_ACPI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* @ACPI_DB_INIT, align 4
  %23 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([32 x i8]* @.str to i32))
  %24 = load i32, i32* @AE_OK, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i64, i64* @ACPI_SYS_MODE_ACPI, align 8
  %28 = call i32 @acpi_hw_set_mode(i64 %27)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @ACPI_FAILURE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* @AE_INFO, align 4
  %34 = call i32 @ACPI_ERROR(i32 ptrtoint ([34 x i8]* @.str.1 to i32))
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @return_ACPI_STATUS(i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %57, %37
  %39 = load i32, i32* %3, align 4
  %40 = icmp slt i32 %39, 30000
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = call i64 (...) @acpi_hw_get_mode()
  %43 = load i64, i64* @ACPI_SYS_MODE_ACPI, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @AE_INFO, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 @ACPI_WARNING(i32 %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32, i32* @AE_OK, align 4
  %54 = call i32 @return_ACPI_STATUS(i32 %53)
  br label %55

55:                                               ; preds = %52, %41
  %56 = call i32 @acpi_os_stall(i32 100)
  br label %57

57:                                               ; preds = %55
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %38

60:                                               ; preds = %38
  %61 = load i32, i32* @AE_INFO, align 4
  %62 = call i32 @ACPI_ERROR(i32 ptrtoint ([33 x i8]* @.str.3 to i32))
  %63 = load i32, i32* @AE_NO_HARDWARE_RESPONSE, align 4
  %64 = call i32 @return_ACPI_STATUS(i32 %63)
  %65 = load i32, i32* %1, align 4
  ret i32 %65
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (...)*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @acpi_hw_get_mode(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_hw_set_mode(i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_WARNING(i32) #1

declare dso_local i32 @acpi_os_stall(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
