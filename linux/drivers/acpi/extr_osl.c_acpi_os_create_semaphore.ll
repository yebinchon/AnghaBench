; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_create_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/extr_osl.c_acpi_os_create_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.semaphore = type { i32 }

@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DB_MUTEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Creating semaphore[%p|%d].\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_os_create_semaphore(i32 %0, i32 %1, i32***** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*****, align 8
  %8 = alloca %struct.semaphore*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32***** %2, i32****** %7, align 8
  store %struct.semaphore* null, %struct.semaphore** %8, align 8
  %9 = call %struct.semaphore* @acpi_os_allocate_zeroed(i32 4)
  store %struct.semaphore* %9, %struct.semaphore** %8, align 8
  %10 = load %struct.semaphore*, %struct.semaphore** %8, align 8
  %11 = icmp ne %struct.semaphore* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %13, i32* %4, align 4
  br label %28

14:                                               ; preds = %3
  %15 = load %struct.semaphore*, %struct.semaphore** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sema_init(%struct.semaphore* %15, i32 %16)
  %18 = load %struct.semaphore*, %struct.semaphore** %8, align 8
  %19 = bitcast %struct.semaphore* %18 to i32*****
  %20 = bitcast i32***** %19 to i32****
  %21 = load i32*****, i32****** %7, align 8
  store i32**** %20, i32***** %21, align 8
  %22 = load i32, i32* @ACPI_DB_MUTEX, align 4
  %23 = load i32*****, i32****** %7, align 8
  %24 = load i32****, i32***** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @ACPI_DEBUG_PRINT(i32 %25)
  %27 = load i32, i32* @AE_OK, align 4
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %14, %12
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.semaphore* @acpi_os_allocate_zeroed(i32) #1

declare dso_local i32 @sema_init(%struct.semaphore*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
