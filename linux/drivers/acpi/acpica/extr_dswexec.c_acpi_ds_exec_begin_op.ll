; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswexec.c_acpi_ds_exec_begin_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswexec.c_acpi_ds_exec_begin_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i64, i32, %struct.TYPE_13__*, %struct.TYPE_10__*, %union.acpi_parse_object*, %union.acpi_parse_object* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %union.acpi_parse_object* }
%struct.TYPE_8__ = type { i64 }
%union.acpi_parse_object = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_11__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@ds_exec_begin_op = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"(%s) Popping scope for Op %p\0A\00", align 1
@ACPI_CONTROL_CONDITIONAL_EXECUTING = common dso_local global i64 0, align 8
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Exec predicate Op=%p State=%p\0A\00", align 1
@ACPI_CONTROL_PREDICATE_EXECUTING = common dso_local global i64 0, align 8
@AML_INT_NAMEPATH_OP = common dso_local global i64 0, align 8
@ACPI_WALK_METHOD = common dso_local global i32 0, align 4
@AML_SCOPE_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_exec_begin_op(%struct.acpi_walk_state* %0, %union.acpi_parse_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object**, align 8
  %6 = alloca %union.acpi_parse_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object** %1, %union.acpi_parse_object*** %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @ds_exec_begin_op, align 4
  %11 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %struct.acpi_walk_state* %11)
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 5
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %14, align 8
  store %union.acpi_parse_object* %15, %union.acpi_parse_object** %6, align 8
  %16 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %17 = icmp ne %union.acpi_parse_object* %16, null
  br i1 %17, label %71, label %18

18:                                               ; preds = %2
  %19 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %20 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %5, align 8
  %21 = call i32 @acpi_ds_load2_begin_op(%struct.acpi_walk_state* %19, %union.acpi_parse_object** %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %181

26:                                               ; preds = %18
  %27 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %5, align 8
  %28 = load %union.acpi_parse_object*, %union.acpi_parse_object** %27, align 8
  store %union.acpi_parse_object* %28, %union.acpi_parse_object** %6, align 8
  %29 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %30 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %31 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %30, i32 0, i32 5
  store %union.acpi_parse_object* %29, %union.acpi_parse_object** %31, align 8
  %32 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %33 = bitcast %union.acpi_parse_object* %32 to %struct.TYPE_11__*
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %39 = bitcast %union.acpi_parse_object* %38 to %struct.TYPE_11__*
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_13__* @acpi_ps_get_opcode_info(i64 %41)
  %43 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %44 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %43, i32 0, i32 2
  store %struct.TYPE_13__* %42, %struct.TYPE_13__** %44, align 8
  %45 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %46 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %45, i32 0, i32 2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @acpi_ns_opens_scope(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %26
  %53 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %54 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %55 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %54, i32 0, i32 2
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @acpi_ut_get_type_name(i32 %58)
  %60 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %61 = ptrtoint %union.acpi_parse_object* %60 to i32
  %62 = call i32 @ACPI_DEBUG_PRINT(i32 %61)
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %64 = call i32 @acpi_ds_scope_stack_pop(%struct.acpi_walk_state* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @ACPI_FAILURE(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %181

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %26
  br label %71

71:                                               ; preds = %70, %2
  %72 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %73 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %74 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %73, i32 0, i32 4
  %75 = load %union.acpi_parse_object*, %union.acpi_parse_object** %74, align 8
  %76 = icmp eq %union.acpi_parse_object* %72, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %5, align 8
  %79 = icmp ne %union.acpi_parse_object** %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %82 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %5, align 8
  store %union.acpi_parse_object* %81, %union.acpi_parse_object** %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* @AE_OK, align 4
  %85 = call i32 @return_ACPI_STATUS(i32 %84)
  br label %86

86:                                               ; preds = %83, %71
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %88 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %87, i32 0, i32 3
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = icmp ne %struct.TYPE_10__* %89, null
  br i1 %90, label %91, label %118

91:                                               ; preds = %86
  %92 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %93 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %92, i32 0, i32 3
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ACPI_CONTROL_CONDITIONAL_EXECUTING, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %91
  %101 = load i32, i32* @ACPI_DB_EXEC, align 4
  %102 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %103 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %104 = ptrtoint %struct.acpi_walk_state* %103 to i32
  %105 = call i32 @ACPI_DEBUG_PRINT(i32 %104)
  %106 = load i64, i64* @ACPI_CONTROL_PREDICATE_EXECUTING, align 8
  %107 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %108 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %107, i32 0, i32 3
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  store i64 %106, i64* %111, align 8
  %112 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %113 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %114 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %113, i32 0, i32 3
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store %union.acpi_parse_object* %112, %union.acpi_parse_object** %117, align 8
  br label %118

118:                                              ; preds = %100, %91, %86
  %119 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %120 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %119, i32 0, i32 2
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %8, align 4
  %124 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %125 = bitcast %union.acpi_parse_object* %124 to %struct.TYPE_11__*
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @AML_INT_NAMEPATH_OP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  store i32 128, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %118
  %132 = load i32, i32* %8, align 4
  switch i32 %132, label %177 [
    i32 131, label %133
    i32 128, label %137
    i32 129, label %176
    i32 130, label %176
  ]

133:                                              ; preds = %131
  %134 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %135 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %136 = call i32 @acpi_ds_exec_begin_control_op(%struct.acpi_walk_state* %134, %union.acpi_parse_object* %135)
  store i32 %136, i32* %7, align 4
  br label %178

137:                                              ; preds = %131
  %138 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %139 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ACPI_WALK_METHOD, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %175

144:                                              ; preds = %137
  %145 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %146 = bitcast %union.acpi_parse_object* %145 to %struct.TYPE_11__*
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @AML_SCOPE_OP, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %153 = call i32 @acpi_ds_load2_begin_op(%struct.acpi_walk_state* %152, %union.acpi_parse_object** null)
  store i32 %153, i32* %7, align 4
  br label %174

154:                                              ; preds = %144
  %155 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %156 = bitcast %union.acpi_parse_object* %155 to %struct.TYPE_12__*
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %157, align 8
  %159 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %160 = bitcast %union.acpi_parse_object* %159 to %struct.TYPE_12__*
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %166 = call i32 @acpi_ds_scope_stack_push(%struct.TYPE_14__* %158, i32 %164, %struct.acpi_walk_state* %165)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i64 @ACPI_FAILURE(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %154
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @return_ACPI_STATUS(i32 %171)
  br label %173

173:                                              ; preds = %170, %154
  br label %174

174:                                              ; preds = %173, %151
  br label %175

175:                                              ; preds = %174, %137
  br label %178

176:                                              ; preds = %131, %131
  br label %178

177:                                              ; preds = %131
  br label %178

178:                                              ; preds = %177, %176, %175, %133
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @return_ACPI_STATUS(i32 %179)
  br label %181

181:                                              ; preds = %178, %68, %25
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %184 = call i32 @acpi_ds_method_error(i32 %182, %struct.acpi_walk_state* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @return_ACPI_STATUS(i32 %185)
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_load2_begin_op(%struct.acpi_walk_state*, %union.acpi_parse_object**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.TYPE_13__* @acpi_ps_get_opcode_info(i64) #1

declare dso_local i64 @acpi_ns_opens_scope(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ds_scope_stack_pop(%struct.acpi_walk_state*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ds_exec_begin_control_op(%struct.acpi_walk_state*, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ds_scope_stack_push(%struct.TYPE_14__*, i32, %struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_method_error(i32, %struct.acpi_walk_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
