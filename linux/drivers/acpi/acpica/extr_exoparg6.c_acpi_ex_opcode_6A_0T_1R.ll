; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg6.c_acpi_ex_opcode_6A_0T_1R.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg6.c_acpi_ex_opcode_6A_0T_1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object*, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %union.acpi_operand_object** }
%struct.TYPE_4__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@ex_opcode_6A_0T_1R = common dso_local global i32 0, align 4
@MAX_MATCH_OPERATOR = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Match operator out of range\00", align 1
@AE_AML_OPERAND_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Index (0x%8.8X%8.8X) beyond package end (0x%X)\00", align 1
@AE_AML_PACKAGE_LIMIT = common dso_local global i32 0, align 4
@ACPI_UINT64_MAX = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_6A_0T_1R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %union.acpi_operand_object*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 2
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %10, align 8
  %12 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %11, i64 0
  store %union.acpi_operand_object** %12, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %5, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @ex_opcode_6A_0T_1R, align 4
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @acpi_ps_get_opcode_name(i32 %17)
  %19 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %14, i32 %18)
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %145 [
    i32 128, label %23
    i32 129, label %142
  ]

23:                                               ; preds = %1
  %24 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %25 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %24, i64 1
  %26 = load %union.acpi_operand_object*, %union.acpi_operand_object** %25, align 8
  %27 = bitcast %union.acpi_operand_object* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MAX_MATCH_OPERATOR, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %23
  %33 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %34 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %33, i64 3
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %34, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAX_MATCH_OPERATOR, align 8
  %40 = icmp ugt i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %32, %23
  %42 = load i32, i32* @AE_INFO, align 4
  %43 = call i32 @ACPI_ERROR(i32 ptrtoint ([28 x i8]* @.str to i32))
  %44 = load i32, i32* @AE_AML_OPERAND_VALUE, align 4
  store i32 %44, i32* %6, align 4
  br label %153

45:                                               ; preds = %32
  %46 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %47 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %46, i64 5
  %48 = load %union.acpi_operand_object*, %union.acpi_operand_object** %47, align 8
  %49 = bitcast %union.acpi_operand_object* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %54 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %53, i64 0
  %55 = load %union.acpi_operand_object*, %union.acpi_operand_object** %54, align 8
  %56 = bitcast %union.acpi_operand_object* %55 to %struct.TYPE_3__*
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp uge i64 %52, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %45
  %61 = load i32, i32* @AE_INFO, align 4
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @ACPI_FORMAT_UINT64(i64 %62)
  %64 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %65 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %64, i64 0
  %66 = load %union.acpi_operand_object*, %union.acpi_operand_object** %65, align 8
  %67 = bitcast %union.acpi_operand_object* %66 to %struct.TYPE_3__*
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = call i32 @ACPI_ERROR(i32 %70)
  %72 = load i32, i32* @AE_AML_PACKAGE_LIMIT, align 4
  store i32 %72, i32* %6, align 4
  br label %153

73:                                               ; preds = %45
  %74 = load i32, i32* @ACPI_UINT64_MAX, align 4
  %75 = call %union.acpi_operand_object* @acpi_ut_create_integer_object(i32 %74)
  store %union.acpi_operand_object* %75, %union.acpi_operand_object** %5, align 8
  %76 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %77 = icmp ne %union.acpi_operand_object* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %79, i32* %6, align 4
  br label %153

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %138, %80
  %82 = load i64, i64* %7, align 8
  %83 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %84 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %83, i64 0
  %85 = load %union.acpi_operand_object*, %union.acpi_operand_object** %84, align 8
  %86 = bitcast %union.acpi_operand_object* %85 to %struct.TYPE_3__*
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ult i64 %82, %88
  br i1 %89, label %90, label %141

90:                                               ; preds = %81
  %91 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %92 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %91, i64 0
  %93 = load %union.acpi_operand_object*, %union.acpi_operand_object** %92, align 8
  %94 = bitcast %union.acpi_operand_object* %93 to %struct.TYPE_3__*
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %96, i64 %97
  %99 = load %union.acpi_operand_object*, %union.acpi_operand_object** %98, align 8
  store %union.acpi_operand_object* %99, %union.acpi_operand_object** %8, align 8
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %101 = icmp ne %union.acpi_operand_object* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %90
  br label %138

103:                                              ; preds = %90
  %104 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %105 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %104, i64 1
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %105, align 8
  %107 = bitcast %union.acpi_operand_object* %106 to %struct.TYPE_4__*
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %112 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %113 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %112, i64 2
  %114 = load %union.acpi_operand_object*, %union.acpi_operand_object** %113, align 8
  %115 = call i32 @acpi_ex_do_match(i32 %110, %union.acpi_operand_object* %111, %union.acpi_operand_object* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %103
  br label %138

118:                                              ; preds = %103
  %119 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %120 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %119, i64 3
  %121 = load %union.acpi_operand_object*, %union.acpi_operand_object** %120, align 8
  %122 = bitcast %union.acpi_operand_object* %121 to %struct.TYPE_4__*
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %union.acpi_operand_object*, %union.acpi_operand_object** %8, align 8
  %127 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %128 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %127, i64 4
  %129 = load %union.acpi_operand_object*, %union.acpi_operand_object** %128, align 8
  %130 = call i32 @acpi_ex_do_match(i32 %125, %union.acpi_operand_object* %126, %union.acpi_operand_object* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %118
  br label %138

133:                                              ; preds = %118
  %134 = load i64, i64* %7, align 8
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %136 = bitcast %union.acpi_operand_object* %135 to %struct.TYPE_4__*
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  store i64 %134, i64* %137, align 8
  br label %141

138:                                              ; preds = %132, %117, %102
  %139 = load i64, i64* %7, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %7, align 8
  br label %81

141:                                              ; preds = %133, %81
  br label %152

142:                                              ; preds = %1
  %143 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %144 = call i32 @acpi_ex_load_table_op(%struct.acpi_walk_state* %143, %union.acpi_operand_object** %5)
  store i32 %144, i32* %6, align 4
  br label %152

145:                                              ; preds = %1
  %146 = load i32, i32* @AE_INFO, align 4
  %147 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %148 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ACPI_ERROR(i32 %149)
  %151 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %151, i32* %6, align 4
  br label %153

152:                                              ; preds = %142, %141
  br label %153

153:                                              ; preds = %152, %145, %78, %60, %41
  %154 = load i32, i32* %6, align 4
  %155 = call i64 @ACPI_FAILURE(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %159 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %158)
  br label %164

160:                                              ; preds = %153
  %161 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %162 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %163 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %162, i32 0, i32 1
  store %union.acpi_operand_object* %161, %union.acpi_operand_object** %163, align 8
  br label %164

164:                                              ; preds = %160, %157
  %165 = load i32, i32* %6, align 4
  %166 = call i32 @return_ACPI_STATUS(i32 %165)
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_integer_object(i32) #1

declare dso_local i32 @acpi_ex_do_match(i32, %union.acpi_operand_object*, %union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_load_table_op(%struct.acpi_walk_state*, %union.acpi_operand_object**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
