; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evglock.c_acpi_ev_acquire_global_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evglock.c_acpi_ev_acquire_global_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@FALSE = common dso_local global i8* null, align 8
@ev_acquire_global_lock = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_mutex = common dso_local global %struct.TYPE_4__* null, align 8
@acpi_gbl_global_lock_handle = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_present = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@acpi_gbl_global_lock_acquired = common dso_local global i8* null, align 8
@AE_OK = common dso_local global i32 0, align 4
@acpi_gbl_global_lock_pending_lock = common dso_local global i32 0, align 4
@acpi_gbl_FACS = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Acquired hardware Global Lock\0A\00", align 1
@acpi_gbl_global_lock_pending = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Waiting for hardware Global Lock\0A\00", align 1
@acpi_gbl_global_lock_semaphore = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ev_acquire_global_lock(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i8*, i8** @FALSE, align 8
  store i8* %7, i8** %6, align 8
  %8 = load i32, i32* @ev_acquire_global_lock, align 4
  %9 = call i32 @ACPI_FUNCTION_TRACE(i32 %8)
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @acpi_gbl_global_lock_mutex, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @acpi_ex_system_wait_mutex(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @ACPI_FAILURE(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @return_ACPI_STATUS(i32 %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* @acpi_gbl_global_lock_handle, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* @acpi_gbl_global_lock_handle, align 4
  %25 = load i32, i32* @acpi_gbl_global_lock_handle, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* @acpi_gbl_global_lock_handle, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* @acpi_gbl_global_lock_present, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %28
  %32 = load i8*, i8** @TRUE, align 8
  store i8* %32, i8** @acpi_gbl_global_lock_acquired, align 8
  %33 = load i32, i32* @AE_OK, align 4
  %34 = call i32 @return_ACPI_STATUS(i32 %33)
  br label %35

35:                                               ; preds = %31, %28
  %36 = load i32, i32* @acpi_gbl_global_lock_pending_lock, align 4
  %37 = call i32 @acpi_os_acquire_lock(i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %60, %35
  %39 = load i32, i32* @acpi_gbl_FACS, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 @ACPI_ACQUIRE_GLOBAL_LOCK(i32 %39, i8* %40)
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** @TRUE, align 8
  store i8* %45, i8** @acpi_gbl_global_lock_acquired, align 8
  %46 = load i32, i32* @ACPI_DB_EXEC, align 4
  %47 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([31 x i8]* @.str to i32))
  br label %64

48:                                               ; preds = %38
  %49 = load i8*, i8** @TRUE, align 8
  store i8* %49, i8** @acpi_gbl_global_lock_pending, align 8
  %50 = load i32, i32* @acpi_gbl_global_lock_pending_lock, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @acpi_os_release_lock(i32 %50, i32 %51)
  %53 = load i32, i32* @ACPI_DB_EXEC, align 4
  %54 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([34 x i8]* @.str.1 to i32))
  %55 = load i32, i32* @acpi_gbl_global_lock_semaphore, align 4
  %56 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %57 = call i32 @acpi_ex_system_wait_semaphore(i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* @acpi_gbl_global_lock_pending_lock, align 4
  %59 = call i32 @acpi_os_acquire_lock(i32 %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %5, align 4
  %62 = call i64 @ACPI_SUCCESS(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %38, label %64

64:                                               ; preds = %60, %44
  %65 = load i8*, i8** @FALSE, align 8
  store i8* %65, i8** @acpi_gbl_global_lock_pending, align 8
  %66 = load i32, i32* @acpi_gbl_global_lock_pending_lock, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @acpi_os_release_lock(i32 %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @return_ACPI_STATUS(i32 %69)
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @acpi_ex_system_wait_mutex(i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_os_acquire_lock(i32) #1

declare dso_local i32 @ACPI_ACQUIRE_GLOBAL_LOCK(i32, i8*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_os_release_lock(i32, i32) #1

declare dso_local i32 @acpi_ex_system_wait_semaphore(i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
