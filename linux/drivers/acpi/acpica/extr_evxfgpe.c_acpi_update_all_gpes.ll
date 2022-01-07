; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evxfgpe.c_acpi_update_all_gpes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_evxfgpe.c_acpi_update_all_gpes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@ACPI_MTX_EVENTS = common dso_local global i32 0, align 4
@acpi_gbl_all_gpes_initialized = common dso_local global i64 0, align 8
@acpi_ev_initialize_gpe_block = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@acpi_gbl_gpe_xrupt_list_head = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_update_all_gpes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i64, i64* @FALSE, align 8
  store i64 %4, i64* %3, align 8
  %5 = call i32 @ACPI_FUNCTION_TRACE(i32 (...)* bitcast (i32 ()* @acpi_update_all_gpes to i32 (...)*))
  %6 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %7 = call i32 @acpi_ut_acquire_mutex(i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i64 @ACPI_FAILURE(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @return_ACPI_STATUS(i32 %12)
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i64, i64* @acpi_gbl_all_gpes_initialized, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  br label %27

18:                                               ; preds = %14
  %19 = load i32, i32* @acpi_ev_initialize_gpe_block, align 4
  %20 = call i32 @acpi_ev_walk_gpe_list(i32 %19, i64* %3)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i64 @ACPI_SUCCESS(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i64, i64* @TRUE, align 8
  store i64 %25, i64* @acpi_gbl_all_gpes_initialized, align 8
  br label %26

26:                                               ; preds = %24, %18
  br label %27

27:                                               ; preds = %26, %17
  %28 = load i32, i32* @ACPI_MTX_EVENTS, align 4
  %29 = call i32 @acpi_ut_release_mutex(i32 %28)
  %30 = load i64, i64* %3, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i64, i64* @acpi_gbl_all_gpes_initialized, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @acpi_gbl_gpe_xrupt_list_head, align 4
  %37 = call i32 @acpi_ev_gpe_detect(i32 %36)
  br label %38

38:                                               ; preds = %35, %32, %27
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @return_ACPI_STATUS(i32 %39)
  %41 = load i32, i32* %1, align 4
  ret i32 %41
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32 (...)*) #1

declare dso_local i32 @acpi_ut_acquire_mutex(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ev_walk_gpe_list(i32, i64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_ut_release_mutex(i32) #1

declare dso_local i32 @acpi_ev_gpe_detect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
