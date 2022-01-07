; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utinit.c_acpi_ut_subsystem_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utinit.c_acpi_ut_subsystem_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ut_subsystem_shutdown = common dso_local global i32 0, align 4
@acpi_gbl_shutdown = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ACPI Subsystem is already terminated\00", align 1
@return_VOID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@acpi_gbl_startup_flags = common dso_local global i64 0, align 8
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Shutting down ACPI Subsystem\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ut_subsystem_shutdown() #0 {
  %1 = load i32, i32* @ut_subsystem_shutdown, align 4
  %2 = call i32 @ACPI_FUNCTION_TRACE(i32 %1)
  %3 = load i64, i64* @acpi_gbl_shutdown, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %0
  %6 = load i32, i32* @AE_INFO, align 4
  %7 = call i32 @ACPI_ERROR(i32 ptrtoint ([37 x i8]* @.str to i32))
  %8 = load i32, i32* @return_VOID, align 4
  br label %9

9:                                                ; preds = %5, %0
  %10 = load i64, i64* @TRUE, align 8
  store i64 %10, i64* @acpi_gbl_shutdown, align 8
  store i64 0, i64* @acpi_gbl_startup_flags, align 8
  %11 = load i32, i32* @ACPI_DB_INFO, align 4
  %12 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([30 x i8]* @.str.1 to i32))
  %13 = call i32 (...) @acpi_ev_terminate()
  %14 = call i32 (...) @acpi_ut_interface_terminate()
  %15 = call i32 (...) @acpi_ns_terminate()
  %16 = call i32 (...) @acpi_tb_terminate()
  %17 = call i32 (...) @acpi_ut_terminate()
  %18 = call i32 (...) @acpi_ut_delete_caches()
  %19 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ev_terminate(...) #1

declare dso_local i32 @acpi_ut_interface_terminate(...) #1

declare dso_local i32 @acpi_ns_terminate(...) #1

declare dso_local i32 @acpi_tb_terminate(...) #1

declare dso_local i32 @acpi_ut_terminate(...) #1

declare dso_local i32 @acpi_ut_delete_caches(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
