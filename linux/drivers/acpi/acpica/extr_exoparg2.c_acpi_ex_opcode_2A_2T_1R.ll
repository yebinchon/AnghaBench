; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg2.c_acpi_ex_opcode_2A_2T_1R.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg2.c_acpi_ex_opcode_2A_2T_1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object*, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ex_opcode_2A_2T_1R = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_2A_2T_1R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 2
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  %11 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %10, i64 0
  store %union.acpi_operand_object** %11, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %5, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %6, align 8
  %12 = load i32, i32* @ex_opcode_2A_2T_1R, align 4
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @acpi_ps_get_opcode_name(i32 %15)
  %17 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %12, i32 %16)
  %18 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %19 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %60 [
    i32 128, label %21
  ]

21:                                               ; preds = %1
  %22 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %23 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %22)
  store %union.acpi_operand_object* %23, %union.acpi_operand_object** %5, align 8
  %24 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %25 = icmp ne %union.acpi_operand_object* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %27, i32* %7, align 4
  br label %90

28:                                               ; preds = %21
  %29 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %30 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %29)
  store %union.acpi_operand_object* %30, %union.acpi_operand_object** %6, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %32 = icmp ne %union.acpi_operand_object* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %34, i32* %7, align 4
  br label %90

35:                                               ; preds = %28
  %36 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %37 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %36, i64 0
  %38 = load %union.acpi_operand_object*, %union.acpi_operand_object** %37, align 8
  %39 = bitcast %union.acpi_operand_object* %38 to %struct.TYPE_2__*
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %43 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %42, i64 1
  %44 = load %union.acpi_operand_object*, %union.acpi_operand_object** %43, align 8
  %45 = bitcast %union.acpi_operand_object* %44 to %struct.TYPE_2__*
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %52 = bitcast %union.acpi_operand_object* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = call i32 @acpi_ut_divide(i32 %41, i32 %47, i32* %50, i32* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i64 @ACPI_FAILURE(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %35
  br label %90

59:                                               ; preds = %35
  br label %67

60:                                               ; preds = %1
  %61 = load i32, i32* @AE_INFO, align 4
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %63 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @ACPI_ERROR(i32 %64)
  %66 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %66, i32* %7, align 4
  br label %90

67:                                               ; preds = %59
  %68 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %69 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %70 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %69, i64 2
  %71 = load %union.acpi_operand_object*, %union.acpi_operand_object** %70, align 8
  %72 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %73 = call i32 @acpi_ex_store(%union.acpi_operand_object* %68, %union.acpi_operand_object* %71, %struct.acpi_walk_state* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @ACPI_FAILURE(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %67
  br label %90

78:                                               ; preds = %67
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %80 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %81 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %80, i64 3
  %82 = load %union.acpi_operand_object*, %union.acpi_operand_object** %81, align 8
  %83 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %84 = call i32 @acpi_ex_store(%union.acpi_operand_object* %79, %union.acpi_operand_object* %82, %struct.acpi_walk_state* %83)
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i64 @ACPI_FAILURE(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %90

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %88, %77, %60, %58, %33, %26
  %91 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %92 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %91)
  %93 = load i32, i32* %7, align 4
  %94 = call i64 @ACPI_FAILURE(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %90
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %98 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %97)
  br label %103

99:                                               ; preds = %90
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %101 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %102 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %101, i32 0, i32 1
  store %union.acpi_operand_object* %100, %union.acpi_operand_object** %102, align 8
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @return_ACPI_STATUS(i32 %104)
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_ut_divide(i32, i32, i32*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ex_store(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
