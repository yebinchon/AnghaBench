; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg2.c_acpi_ex_opcode_2A_0T_1R.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg2.c_acpi_ex_opcode_2A_0T_1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object*, %struct.TYPE_3__*, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ex_opcode_2A_0T_1R = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AML_LOGICAL_NUMERIC = common dso_local global i32 0, align 4
@AML_LOGICAL = common dso_local global i32 0, align 4
@AE_TIME = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4
@ACPI_UINT64_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_2A_0T_1R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %8 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %9 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %8, i32 0, i32 3
  %10 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %9, align 8
  %11 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %10, i64 0
  store %union.acpi_operand_object** %11, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %5, align 8
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i64, i64* @FALSE, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @ex_opcode_2A_0T_1R, align 4
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @acpi_ps_get_opcode_name(i32 %17)
  %19 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %14, i32 %18)
  %20 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %21 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %20)
  store %union.acpi_operand_object* %21, %union.acpi_operand_object** %5, align 8
  %22 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %23 = icmp ne %union.acpi_operand_object* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %25, i32* %6, align 4
  br label %125

26:                                               ; preds = %1
  %27 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %28 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AML_LOGICAL_NUMERIC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %26
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %40 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %39, i64 0
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %40, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %46 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %45, i64 1
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %46, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_4__*
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @acpi_ex_do_logical_numeric_op(i32 %38, i32 %44, i32 %50, i64* %7)
  store i32 %51, i32* %6, align 4
  br label %116

52:                                               ; preds = %26
  %53 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %54 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @AML_LOGICAL, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %72

61:                                               ; preds = %52
  %62 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %63 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %66 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %65, i64 0
  %67 = load %union.acpi_operand_object*, %union.acpi_operand_object** %66, align 8
  %68 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %69 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %68, i64 1
  %70 = load %union.acpi_operand_object*, %union.acpi_operand_object** %69, align 8
  %71 = call i32 @acpi_ex_do_logical_op(i32 %64, %union.acpi_operand_object* %67, %union.acpi_operand_object* %70, i64* %7)
  store i32 %71, i32* %6, align 4
  br label %116

72:                                               ; preds = %52
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %75 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %108 [
    i32 129, label %77
    i32 128, label %93
  ]

77:                                               ; preds = %73
  %78 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %79 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %78, i64 1
  %80 = load %union.acpi_operand_object*, %union.acpi_operand_object** %79, align 8
  %81 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %82 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %81, i64 0
  %83 = load %union.acpi_operand_object*, %union.acpi_operand_object** %82, align 8
  %84 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %85 = call i32 @acpi_ex_acquire_mutex(%union.acpi_operand_object* %80, %union.acpi_operand_object* %83, %struct.acpi_walk_state* %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @AE_TIME, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load i64, i64* @TRUE, align 8
  store i64 %90, i64* %7, align 8
  %91 = load i32, i32* @AE_OK, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %89, %77
  br label %115

93:                                               ; preds = %73
  %94 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %95 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %94, i64 1
  %96 = load %union.acpi_operand_object*, %union.acpi_operand_object** %95, align 8
  %97 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %98 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %97, i64 0
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %98, align 8
  %100 = call i32 @acpi_ex_system_wait_event(%union.acpi_operand_object* %96, %union.acpi_operand_object* %99)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @AE_TIME, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load i64, i64* @TRUE, align 8
  store i64 %105, i64* %7, align 8
  %106 = load i32, i32* @AE_OK, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %104, %93
  br label %115

108:                                              ; preds = %73
  %109 = load i32, i32* @AE_INFO, align 4
  %110 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %111 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @ACPI_ERROR(i32 %112)
  %114 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %114, i32* %6, align 4
  br label %125

115:                                              ; preds = %107, %92
  br label %116

116:                                              ; preds = %115, %61, %35
  %117 = load i64, i64* %7, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* @ACPI_UINT64_MAX, align 4
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %122 = bitcast %union.acpi_operand_object* %121 to %struct.TYPE_4__*
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 4
  br label %124

124:                                              ; preds = %119, %116
  br label %125

125:                                              ; preds = %124, %108, %24
  %126 = load i32, i32* %6, align 4
  %127 = call i64 @ACPI_FAILURE(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %131 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %130)
  br label %136

132:                                              ; preds = %125
  %133 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %134 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %135 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %134, i32 0, i32 1
  store %union.acpi_operand_object* %133, %union.acpi_operand_object** %135, align 8
  br label %136

136:                                              ; preds = %132, %129
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @return_ACPI_STATUS(i32 %137)
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i32 @acpi_ex_do_logical_numeric_op(i32, i32, i32, i64*) #1

declare dso_local i32 @acpi_ex_do_logical_op(i32, %union.acpi_operand_object*, %union.acpi_operand_object*, i64*) #1

declare dso_local i32 @acpi_ex_acquire_mutex(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ex_system_wait_event(%union.acpi_operand_object*, %union.acpi_operand_object*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
