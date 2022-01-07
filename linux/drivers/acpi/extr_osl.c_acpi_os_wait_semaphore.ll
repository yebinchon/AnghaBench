; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_wait_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_wait_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@acpi_os_initialized = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_SUPPORT = common dso_local global i32 0, align 4
@ACPI_DB_MUTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Waiting for semaphore[%p|%d|%d]\0A\00", align 1
@ACPI_WAIT_FOREVER = common dso_local global i64 0, align 8
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@AE_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to acquire semaphore[%p|%d|%d], %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Acquired semaphore[%p|%d|%d]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_wait_semaphore(i64 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.semaphore*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.semaphore*
  store %struct.semaphore* %14, %struct.semaphore** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @acpi_os_initialized, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @AE_OK, align 4
  store i32 %18, i32* %4, align 4
  br label %76

19:                                               ; preds = %3
  %20 = load %struct.semaphore*, %struct.semaphore** %9, align 8
  %21 = icmp ne %struct.semaphore* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19
  %26 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %26, i32* %4, align 4
  br label %76

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %31, i32* %4, align 4
  br label %76

32:                                               ; preds = %27
  %33 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64, i64* %7, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @ACPI_DEBUG_PRINT(i32 %37)
  %39 = load i64, i64* %7, align 8
  %40 = load i64, i64* @ACPI_WAIT_FOREVER, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  store i64 %43, i64* %10, align 8
  br label %47

44:                                               ; preds = %32
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @msecs_to_jiffies(i64 %45)
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %44, %42
  %48 = load %struct.semaphore*, %struct.semaphore** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @down_timeout(%struct.semaphore* %48, i64 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @AE_TIME, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* %8, align 4
  %57 = call i64 @ACPI_FAILURE(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %61 = load i64, i64* %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @acpi_format_exception(i32 %64)
  %66 = call i32 @ACPI_DEBUG_PRINT(i32 %65)
  br label %74

67:                                               ; preds = %55
  %68 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %69 = load i64, i64* %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i64, i64* %7, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32 @ACPI_DEBUG_PRINT(i32 %72)
  br label %74

74:                                               ; preds = %67, %59
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %30, %25, %17
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @down_timeout(%struct.semaphore*, i64) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_format_exception(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
