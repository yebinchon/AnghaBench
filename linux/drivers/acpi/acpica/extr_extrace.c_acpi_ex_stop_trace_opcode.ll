; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_extrace.c_acpi_ex_stop_trace_opcode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_extrace.c_acpi_ex_stop_trace_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.acpi_parse_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.acpi_walk_state = type { i32 }

@ex_stop_trace_opcode = common dso_local global i32 0, align 4
@acpi_gbl_trace_flags = common dso_local global i32 0, align 4
@ACPI_TRACE_OPCODE = common dso_local global i32 0, align 4
@ACPI_TRACE_AML_OPCODE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ex_stop_trace_opcode(%union.acpi_parse_object* %0, %struct.acpi_walk_state* %1) #0 {
  %3 = alloca %union.acpi_parse_object*, align 8
  %4 = alloca %struct.acpi_walk_state*, align 8
  store %union.acpi_parse_object* %0, %union.acpi_parse_object** %3, align 8
  store %struct.acpi_walk_state* %1, %struct.acpi_walk_state** %4, align 8
  %5 = load i32, i32* @ex_stop_trace_opcode, align 4
  %6 = call i32 @ACPI_FUNCTION_NAME(i32 %5)
  %7 = call i64 @acpi_ex_interpreter_trace_enabled(i32* null)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load i32, i32* @acpi_gbl_trace_flags, align 4
  %11 = load i32, i32* @ACPI_TRACE_OPCODE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = load i32, i32* @ACPI_TRACE_AML_OPCODE, align 4
  %16 = load i32, i32* @FALSE, align 4
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %18 = bitcast %union.acpi_parse_object* %17 to %struct.TYPE_2__*
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %3, align 8
  %22 = bitcast %union.acpi_parse_object* %21 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ACPI_TRACE_POINT(i32 %15, i32 %16, i32 %20, i32 %24)
  br label %26

26:                                               ; preds = %14, %9, %2
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i64 @acpi_ex_interpreter_trace_enabled(i32*) #1

declare dso_local i32 @ACPI_TRACE_POINT(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
