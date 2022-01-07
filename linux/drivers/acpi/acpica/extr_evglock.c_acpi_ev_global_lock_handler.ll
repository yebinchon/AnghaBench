; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evglock.c_acpi_ev_global_lock_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evglock.c_acpi_ev_global_lock_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_gbl_global_lock_pending_lock = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_pending = common dso_local global i64 0, align 8
@acpi_gbl_global_lock_semaphore = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Could not signal Global Lock semaphore\00", align 1
@FALSE = common dso_local global i64 0, align 8
@ACPI_INTERRUPT_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @acpi_ev_global_lock_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ev_global_lock_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @acpi_gbl_global_lock_pending_lock, align 4
  %6 = call i32 @acpi_os_acquire_lock(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i64, i64* @acpi_gbl_global_lock_pending, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %21

10:                                               ; preds = %1
  %11 = load i32, i32* @acpi_gbl_global_lock_semaphore, align 4
  %12 = call i32 @acpi_os_signal_semaphore(i32 %11, i32 1)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @AE_INFO, align 4
  %18 = call i32 @ACPI_ERROR(i32 ptrtoint ([39 x i8]* @.str to i32))
  br label %19

19:                                               ; preds = %16, %10
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* @acpi_gbl_global_lock_pending, align 8
  br label %21

21:                                               ; preds = %19, %9
  %22 = load i32, i32* @acpi_gbl_global_lock_pending_lock, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @acpi_os_release_lock(i32 %22, i32 %23)
  %25 = load i32, i32* @ACPI_INTERRUPT_HANDLED, align 4
  ret i32 %25
}

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i32 @acpi_os_signal_semaphore(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
