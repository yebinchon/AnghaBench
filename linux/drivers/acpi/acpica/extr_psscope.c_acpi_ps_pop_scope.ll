; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psscope.c_acpi_ps_pop_scope.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_psscope.c_acpi_ps_pop_scope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_parse_state = type { i32, %union.acpi_generic_state* }
%union.acpi_generic_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, %union.acpi_parse_object* }
%union.acpi_parse_object = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ps_pop_scope = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Popped Op %p Args %X\0A\00", align 1
@return_VOID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @acpi_ps_pop_scope(%struct.acpi_parse_state* %0, %union.acpi_parse_object** %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.acpi_parse_state*, align 8
  %6 = alloca %union.acpi_parse_object**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_parse_state* %0, %struct.acpi_parse_state** %5, align 8
  store %union.acpi_parse_object** %1, %union.acpi_parse_object*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %5, align 8
  %11 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %10, i32 0, i32 1
  %12 = load %union.acpi_generic_state*, %union.acpi_generic_state** %11, align 8
  store %union.acpi_generic_state* %12, %union.acpi_generic_state** %9, align 8
  %13 = load i32, i32* @ps_pop_scope, align 4
  %14 = call i32 @ACPI_FUNCTION_TRACE(i32 %13)
  %15 = load %union.acpi_generic_state*, %union.acpi_generic_state** %9, align 8
  %16 = bitcast %union.acpi_generic_state* %15 to %struct.TYPE_3__*
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %4
  %21 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %21, i32 0, i32 1
  %23 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %22)
  store %union.acpi_generic_state* %23, %union.acpi_generic_state** %9, align 8
  %24 = load %union.acpi_generic_state*, %union.acpi_generic_state** %9, align 8
  %25 = bitcast %union.acpi_generic_state* %24 to %struct.TYPE_4__*
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 3
  %27 = load %union.acpi_parse_object*, %union.acpi_parse_object** %26, align 8
  %28 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %6, align 8
  store %union.acpi_parse_object* %27, %union.acpi_parse_object** %28, align 8
  %29 = load %union.acpi_generic_state*, %union.acpi_generic_state** %9, align 8
  %30 = bitcast %union.acpi_generic_state* %29 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %union.acpi_generic_state*, %union.acpi_generic_state** %9, align 8
  %35 = bitcast %union.acpi_generic_state* %34 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %8, align 8
  store i64 %37, i64* %38, align 8
  %39 = load %union.acpi_generic_state*, %union.acpi_generic_state** %9, align 8
  %40 = bitcast %union.acpi_generic_state* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.acpi_parse_state*, %struct.acpi_parse_state** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_parse_state, %struct.acpi_parse_state* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %union.acpi_generic_state*, %union.acpi_generic_state** %9, align 8
  %46 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %45)
  br label %51

47:                                               ; preds = %4
  %48 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %6, align 8
  store %union.acpi_parse_object* null, %union.acpi_parse_object** %48, align 8
  %49 = load i64*, i64** %7, align 8
  store i64 0, i64* %49, align 8
  %50 = load i64*, i64** %8, align 8
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %20
  %52 = load i32, i32* @ACPI_DB_PARSE, align 4
  %53 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %6, align 8
  %54 = load %union.acpi_parse_object*, %union.acpi_parse_object** %53, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @ACPI_DEBUG_PRINT(i32 %57)
  %59 = load i32, i32* @return_VOID, align 4
  ret void
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
