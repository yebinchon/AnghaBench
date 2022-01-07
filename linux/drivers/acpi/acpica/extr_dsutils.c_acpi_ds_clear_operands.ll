; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsutils.c_acpi_ds_clear_operands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsutils.c_acpi_ds_clear_operands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, i32** }

@ds_clear_operands = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ds_clear_operands(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca %struct.acpi_walk_state*, align 8
  %3 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %2, align 8
  %4 = load i32, i32* @ds_clear_operands, align 4
  %5 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %6 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %4, %struct.acpi_walk_state* %5)
  store i64 0, i64* %3, align 8
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i64, i64* %3, align 8
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @acpi_ut_remove_reference(i32* %19)
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %22 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %21, i32 0, i32 1
  %23 = load i32**, i32*** %22, align 8
  %24 = load i64, i64* %3, align 8
  %25 = getelementptr inbounds i32*, i32** %23, i64 %24
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %13
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %3, align 8
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %2, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ut_remove_reference(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
