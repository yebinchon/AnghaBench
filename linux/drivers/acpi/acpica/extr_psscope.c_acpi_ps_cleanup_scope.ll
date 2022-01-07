; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psscope.c_acpi_ps_cleanup_scope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psscope.c_acpi_ps_cleanup_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_state = type { i64 }
%union.acpi_generic_state = type { i32 }

@ps_cleanup_scope = common dso_local global i32 0, align 4
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ps_cleanup_scope(%struct.acpi_parse_state* %0) #0 {
  %2 = alloca %struct.acpi_parse_state*, align 8
  %3 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_parse_state* %0, %struct.acpi_parse_state** %2, align 8
  %4 = load i32, i32* @ps_cleanup_scope, align 4
  %5 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %2, align 8
  %6 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %4, %struct.acpi_parse_state* %5)
  %7 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %2, align 8
  %8 = icmp ne %struct.acpi_parse_state* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @return_VOID, align 4
  br label %11

11:                                               ; preds = %9, %1
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %2, align 8
  %14 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %18, i32 0, i32 0
  %20 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(i64* %19)
  store %union.acpi_generic_state* %20, %union.acpi_generic_state** %3, align 8
  %21 = load %union.acpi_generic_state*, %union.acpi_generic_state** %3, align 8
  %22 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %21)
  br label %12

23:                                               ; preds = %12
  %24 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_parse_state*) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(i64*) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
