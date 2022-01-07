; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_pkg_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_utstate.c_acpi_ut_create_pkg_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_generic_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i8*, %union.acpi_operand_object* }
%union.acpi_operand_object = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ACPI_DESC_TYPE_STATE_PACKAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.acpi_generic_state* @acpi_ut_create_pkg_state(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %union.acpi_generic_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.acpi_generic_state*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %10 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %10, %union.acpi_generic_state** %8, align 8
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %12 = icmp ne %union.acpi_generic_state* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %union.acpi_generic_state* null, %union.acpi_generic_state** %4, align 8
  br label %36

14:                                               ; preds = %3
  %15 = load i32, i32* @ACPI_DESC_TYPE_STATE_PACKAGE, align 4
  %16 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %17 = bitcast %union.acpi_generic_state* %16 to %struct.TYPE_3__*
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %union.acpi_operand_object*
  %21 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %22 = bitcast %union.acpi_generic_state* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  store %union.acpi_operand_object* %20, %union.acpi_operand_object** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %26 = bitcast %union.acpi_generic_state* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %30 = bitcast %union.acpi_generic_state* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  %33 = bitcast %union.acpi_generic_state* %32 to %struct.TYPE_4__*
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %union.acpi_generic_state*, %union.acpi_generic_state** %8, align 8
  store %union.acpi_generic_state* %35, %union.acpi_generic_state** %4, align 8
  br label %36

36:                                               ; preds = %14, %13
  %37 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  ret %union.acpi_generic_state* %37
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
