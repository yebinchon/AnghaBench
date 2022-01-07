; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_delete_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_delete_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore = type { i32 }

@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_DB_MUTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Deleting semaphore[%p].\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_delete_semaphore(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.semaphore*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to %struct.semaphore*
  store %struct.semaphore* %6, %struct.semaphore** %4, align 8
  %7 = load %struct.semaphore*, %struct.semaphore** %4, align 8
  %8 = icmp ne %struct.semaphore* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %13 = load i64, i64* %3, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i32 @ACPI_DEBUG_PRINT(i32 %14)
  %16 = load %struct.semaphore*, %struct.semaphore** %4, align 8
  %17 = getelementptr inbounds %struct.semaphore, %struct.semaphore* %16, i32 0, i32 0
  %18 = call i32 @list_empty(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.semaphore*, %struct.semaphore** %4, align 8
  %24 = call i32 @kfree(%struct.semaphore* %23)
  store %struct.semaphore* null, %struct.semaphore** %4, align 8
  %25 = load i32, i32* @AE_OK, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %11, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @kfree(%struct.semaphore*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
