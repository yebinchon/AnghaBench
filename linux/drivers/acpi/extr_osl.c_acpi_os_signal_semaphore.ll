; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_signal_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_signal_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore = type { i32 }

@acpi_os_initialized = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@AE_SUPPORT = common dso_local global i32 0, align 4
@ACPI_DB_MUTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Signaling semaphore[%p|%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_signal_semaphore(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.semaphore*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.semaphore*
  store %struct.semaphore* %8, %struct.semaphore** %6, align 8
  %9 = load i32, i32* @acpi_os_initialized, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %3, align 4
  br label %34

13:                                               ; preds = %2
  %14 = load %struct.semaphore*, %struct.semaphore** %6, align 8
  %15 = icmp ne %struct.semaphore* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %20, i32* %3, align 4
  br label %34

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i32, i32* @AE_SUPPORT, align 4
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @ACPI_DEBUG_PRINT(i32 %29)
  %31 = load %struct.semaphore*, %struct.semaphore** %6, align 8
  %32 = call i32 @up(%struct.semaphore* %31)
  %33 = load i32, i32* @AE_OK, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %24, %19, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @up(%struct.semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
