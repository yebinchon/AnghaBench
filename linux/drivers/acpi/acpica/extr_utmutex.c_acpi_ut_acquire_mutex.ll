; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utmutex.c_acpi_ut_acquire_mutex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utmutex.c_acpi_ut_acquire_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@ut_acquire_mutex = common dso_local global i32 0, align 4
@ACPI_MAX_MUTEX = common dso_local global i64 0, align 8
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_DB_MUTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Thread %u attempting to acquire Mutex [%s]\0A\00", align 1
@acpi_gbl_mutex_info = common dso_local global %struct.TYPE_2__* null, align 8
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Thread %u acquired Mutex [%s]\0A\00", align 1
@AE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Thread %u could not acquire Mutex [%s] (0x%X)\00", align 1
@ACPI_NUM_MUTEX = common dso_local global i64 0, align 8
@AE_ACQUIRE_DEADLOCK = common dso_local global i32 0, align 4
@AE_ALREADY_ACQUIRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ut_acquire_mutex(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i32, i32* @ut_acquire_mutex, align 4
  %7 = call i32 @ACPI_FUNCTION_NAME(i32 %6)
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @ACPI_MAX_MUTEX, align 8
  %10 = icmp ugt i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %12, i32* %2, align 4
  br label %58

13:                                               ; preds = %1
  %14 = call i64 (...) @acpi_os_get_thread_id()
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @acpi_ut_get_mutex_name(i64 %17)
  %19 = call i32 @ACPI_DEBUG_PRINT(i32 %18)
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_mutex_info, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %26 = call i32 @acpi_os_acquire_mutex(i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @ACPI_SUCCESS(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %13
  %31 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* %3, align 8
  %34 = call i32 @acpi_ut_get_mutex_name(i64 %33)
  %35 = call i32 @ACPI_DEBUG_PRINT(i32 %34)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_mutex_info, align 8
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @acpi_gbl_mutex_info, align 8
  %44 = load i64, i64* %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i64 %42, i64* %46, align 8
  br label %56

47:                                               ; preds = %13
  %48 = load i32, i32* @AE_INFO, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %3, align 8
  %52 = call i32 @acpi_ut_get_mutex_name(i64 %51)
  %53 = load i64, i64* %3, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @ACPI_EXCEPTION(i32 %54)
  br label %56

56:                                               ; preds = %47, %30
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i64 @acpi_os_get_thread_id(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_mutex_name(i64) #1

declare dso_local i32 @acpi_os_acquire_mutex(i32, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @ACPI_EXCEPTION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
