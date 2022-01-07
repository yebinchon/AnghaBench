; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exsystem.c_acpi_ex_system_wait_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exsystem.c_acpi_ex_system_wait_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ex_system_wait_semaphore = common dso_local global i32 0, align 4
@ACPI_DO_NOT_WAIT = common dso_local global i32 0, align 4
@AE_TIME = common dso_local global i64 0, align 8
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"*** Thread awake after blocking, %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @acpi_ex_system_wait_semaphore(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @ex_system_wait_semaphore, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ACPI_DO_NOT_WAIT, align 4
  %11 = call i64 @acpi_os_wait_semaphore(i32 %9, i32 1, i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i64 @ACPI_SUCCESS(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @return_ACPI_STATUS(i64 %16)
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @AE_TIME, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %18
  %23 = call i32 (...) @acpi_ex_exit_interpreter()
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @acpi_os_wait_semaphore(i32 %24, i32 1, i32 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* @ACPI_DB_EXEC, align 4
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @acpi_format_exception(i64 %28)
  %30 = call i32 @ACPI_DEBUG_PRINT(i32 %29)
  %31 = call i32 (...) @acpi_ex_enter_interpreter()
  br label %32

32:                                               ; preds = %22, %18
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @return_ACPI_STATUS(i64 %33)
  %35 = load i64, i64* %3, align 8
  ret i64 %35
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i64 @acpi_os_wait_semaphore(i32, i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i32 @acpi_ex_exit_interpreter(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_format_exception(i64) #1

declare dso_local i32 @acpi_ex_enter_interpreter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
