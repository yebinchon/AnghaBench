; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwacpi.c_acpi_hw_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_hwacpi.c_acpi_hw_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@hw_set_mode = common dso_local global i32 0, align 4
@acpi_gbl_reduced_hardware = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_FADT = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No SMI_CMD in FADT, mode transition failed\00", align 1
@AE_NO_HARDWARE_RESPONSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"No ACPI mode transition supported in this system (enable/disable both zero)\00", align 1
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Attempting to enable ACPI mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Attempting to enable Legacy (non-ACPI) mode\0A\00", align 1
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"Could not write ACPI mode change\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_hw_set_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @hw_set_mode, align 4
  %6 = call i32 @ACPI_FUNCTION_TRACE(i32 %5)
  %7 = load i64, i64* @acpi_gbl_reduced_hardware, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @AE_OK, align 4
  %11 = call i32 @return_ACPI_STATUS(i32 %10)
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* @AE_INFO, align 4
  %17 = call i32 @ACPI_ERROR(i32 ptrtoint ([43 x i8]* @.str to i32))
  %18 = load i32, i32* @AE_NO_HARDWARE_RESPONSE, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 2), align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @AE_INFO, align 4
  %28 = call i32 @ACPI_ERROR(i32 ptrtoint ([76 x i8]* @.str.1 to i32))
  %29 = load i32, i32* @AE_OK, align 4
  %30 = call i32 @return_ACPI_STATUS(i32 %29)
  br label %31

31:                                               ; preds = %26, %23, %20
  %32 = load i32, i32* %3, align 4
  switch i32 %32, label %45 [
    i32 129, label %33
    i32 128, label %39
  ]

33:                                               ; preds = %31
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 2), align 4
  %36 = call i32 @acpi_hw_write_port(i32 %34, i32 %35, i32 8)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* @ACPI_DB_INFO, align 4
  %38 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([32 x i8]* @.str.2 to i32))
  br label %48

39:                                               ; preds = %31
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 1), align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @acpi_gbl_FADT, i32 0, i32 0), align 4
  %42 = call i32 @acpi_hw_write_port(i32 %40, i32 %41, i32 8)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @ACPI_DB_INFO, align 4
  %44 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([45 x i8]* @.str.3 to i32))
  br label %48

45:                                               ; preds = %31
  %46 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %47 = call i32 @return_ACPI_STATUS(i32 %46)
  br label %48

48:                                               ; preds = %45, %39, %33
  %49 = load i32, i32* %4, align 4
  %50 = call i64 @ACPI_FAILURE(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @AE_INFO, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ACPI_EXCEPTION(i32 ptrtoint ([33 x i8]* @.str.4 to i32))
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @return_ACPI_STATUS(i32 %56)
  br label %58

58:                                               ; preds = %52, %48
  %59 = load i32, i32* @AE_OK, align 4
  %60 = call i32 @return_ACPI_STATUS(i32 %59)
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_hw_write_port(i32, i32, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
