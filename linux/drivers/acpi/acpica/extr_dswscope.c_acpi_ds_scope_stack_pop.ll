; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswscope.c_acpi_ds_scope_stack_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswscope.c_acpi_ds_scope_stack_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_generic_state*, i64 }
%union.acpi_generic_state = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ds_scope_stack_pop = common dso_local global i32 0, align 4
@AE_STACK_UNDERFLOW = common dso_local global i32 0, align 4
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"[%.2d] Popped scope [%4.4s] (%s), New scope -> \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"[%4.4s] (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@ACPI_NAMESPACE_ROOT = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_scope_stack_pop(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_generic_state*, align 8
  %5 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %6 = load i32, i32* @ds_scope_stack_pop, align 4
  %7 = call i32 @ACPI_FUNCTION_TRACE(i32 %6)
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 0
  %10 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %9)
  store %union.acpi_generic_state* %10, %union.acpi_generic_state** %4, align 8
  %11 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %12 = icmp ne %union.acpi_generic_state* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @AE_STACK_UNDERFLOW, align 4
  %15 = call i32 @return_ACPI_STATUS(i32 %14)
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %18 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* %18, align 8
  %21 = load i32, i32* @ACPI_DB_EXEC, align 4
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %23 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %27 = bitcast %union.acpi_generic_state* %26 to %struct.TYPE_3__*
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @acpi_ut_get_node_name(i32 %29)
  %31 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %32 = bitcast %union.acpi_generic_state* %31 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @acpi_ut_get_type_name(i32 %34)
  %36 = call i32 @ACPI_DEBUG_PRINT(i32 %35)
  %37 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %37, i32 0, i32 0
  %39 = load %union.acpi_generic_state*, %union.acpi_generic_state** %38, align 8
  store %union.acpi_generic_state* %39, %union.acpi_generic_state** %5, align 8
  %40 = load %union.acpi_generic_state*, %union.acpi_generic_state** %5, align 8
  %41 = icmp ne %union.acpi_generic_state* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %16
  %43 = load i32, i32* @ACPI_DB_EXEC, align 4
  %44 = load %union.acpi_generic_state*, %union.acpi_generic_state** %5, align 8
  %45 = bitcast %union.acpi_generic_state* %44 to %struct.TYPE_3__*
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @acpi_ut_get_node_name(i32 %47)
  %49 = load %union.acpi_generic_state*, %union.acpi_generic_state** %5, align 8
  %50 = bitcast %union.acpi_generic_state* %49 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @acpi_ut_get_type_name(i32 %52)
  %54 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %53)
  br label %59

55:                                               ; preds = %16
  %56 = load i32, i32* @ACPI_DB_EXEC, align 4
  %57 = load i32, i32* @ACPI_NAMESPACE_ROOT, align 4
  %58 = call i32 @ACPI_DEBUG_PRINT_RAW(i32 %57)
  br label %59

59:                                               ; preds = %55, %42
  %60 = load %union.acpi_generic_state*, %union.acpi_generic_state** %4, align 8
  %61 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %60)
  %62 = load i32, i32* @AE_OK, align 4
  %63 = call i32 @return_ACPI_STATUS(i32 %62)
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT_RAW(i32) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
