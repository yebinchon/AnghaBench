; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psscope.c_acpi_ps_push_scope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psscope.c_acpi_ps_push_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_state = type { i32, i32 }
%union.acpi_parse_object = type { i32 }
%union.acpi_generic_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64, %union.acpi_parse_object* }
%struct.TYPE_3__ = type { i32 }

@ps_push_scope = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_DESC_TYPE_STATE_PSCOPE = common dso_local global i32 0, align 4
@ACPI_VAR_ARGS = common dso_local global i64 0, align 8
@ACPI_MAX_PTR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ps_push_scope(%struct.acpi_parse_state* %0, %union.acpi_parse_object* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_parse_state*, align 8
  %7 = alloca %union.acpi_parse_object*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_parse_state* %0, %struct.acpi_parse_state** %6, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* @ps_push_scope, align 4
  %12 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %13 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %11, %union.acpi_parse_object* %12)
  %14 = call %union.acpi_generic_state* (...) @acpi_ut_create_generic_state()
  store %union.acpi_generic_state* %14, %union.acpi_generic_state** %10, align 8
  %15 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %16 = icmp ne %union.acpi_generic_state* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @AE_NO_MEMORY, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = load i32, i32* @ACPI_DESC_TYPE_STATE_PSCOPE, align 4
  %22 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %23 = bitcast %union.acpi_generic_state* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %7, align 8
  %26 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %27 = bitcast %union.acpi_generic_state* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 4
  store %union.acpi_parse_object* %25, %union.acpi_parse_object** %28, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %31 = bitcast %union.acpi_generic_state* %30 to %struct.TYPE_4__*
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  store i64 %29, i64* %32, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %35 = bitcast %union.acpi_generic_state* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  store i64 %33, i64* %36, align 8
  %37 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %38 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %41 = bitcast %union.acpi_generic_state* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %44 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %43, i32 0, i32 1
  %45 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %46 = call i32 @acpi_ut_push_generic_state(i32* %44, %union.acpi_generic_state* %45)
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @ACPI_VAR_ARGS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %20
  %51 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %6, align 8
  %52 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %55 = bitcast %union.acpi_generic_state* %54 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  br label %63

57:                                               ; preds = %20
  %58 = load i32, i32* @ACPI_MAX_PTR, align 4
  %59 = call i32 @ACPI_TO_POINTER(i32 %58)
  %60 = load %union.acpi_generic_state*, %union.acpi_generic_state** %10, align 8
  %61 = bitcast %union.acpi_generic_state* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  br label %63

63:                                               ; preds = %57, %50
  %64 = load i32, i32* @AE_OK, align 4
  %65 = call i32 @return_ACPI_STATUS(i32 %64)
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_create_generic_state(...) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ut_push_generic_state(i32*, %union.acpi_generic_state*) #1

declare dso_local i32 @ACPI_TO_POINTER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
