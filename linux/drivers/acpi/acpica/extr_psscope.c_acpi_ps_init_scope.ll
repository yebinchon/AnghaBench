; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psscope.c_acpi_ps_init_scope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psscope.c_acpi_ps_init_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_state = type { %union.acpi_parse_object*, %union.acpi_generic_state*, i32 }
%union.acpi_generic_state = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, %union.acpi_parse_object* }
%union.acpi_parse_object = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ps_init_scope = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_STATE_RPSCOPE = common dso_local global i32 0, align 4
@ACPI_VAR_ARGS = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ps_init_scope(%struct.acpi_parse_state* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_parse_state*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_parse_state* %0, %struct.acpi_parse_state** %4, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %5, align 8
  %7 = load i32, i32* @ps_init_scope, align 4
  %8 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %9 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %7, %union.acpi_parse_object* %8)
  %10 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %10, %union.acpi_generic_state** %6, align 8
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %12 = icmp ne %union.acpi_generic_state* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @AE_NO_MEMORY, align 4
  %15 = call i32 @return_ACPI_STATUS(i32 %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* @ACPI_DESC_TYPE_STATE_RPSCOPE, align 4
  %18 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %19 = bitcast %union.acpi_generic_state* %18 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %22 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %23 = bitcast %union.acpi_generic_state* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store %union.acpi_parse_object* %21, %union.acpi_parse_object** %24, align 8
  %25 = load i32, i32* @ACPI_VAR_ARGS, align 4
  %26 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %27 = bitcast %union.acpi_generic_state* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %4, align 8
  %30 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %33 = bitcast %union.acpi_generic_state* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %4, align 8
  %36 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %39 = bitcast %union.acpi_generic_state* %38 to %struct.TYPE_3__*
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %union.acpi_generic_state*, %union.acpi_generic_state** %6, align 8
  %42 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %4, align 8
  %43 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %42, i32 0, i32 1
  store %union.acpi_generic_state* %41, %union.acpi_generic_state** %43, align 8
  %44 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %45 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %4, align 8
  %46 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %45, i32 0, i32 0
  store %union.acpi_parse_object* %44, %union.acpi_parse_object** %46, align 8
  %47 = load i32, i32* @AE_OK, align 4
  %48 = call i32 @return_ACPI_STATUS(i32 %47)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
