; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dscontrol.c_acpi_ds_exec_end_control_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dscontrol.c_acpi_ds_exec_end_control_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { %union.acpi_generic_state*, i32, %struct.TYPE_20__*, i32, %struct.TYPE_20__**, %struct.TYPE_17__*, i32, i32 }
%union.acpi_generic_state = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_20__** }
%union.acpi_parse_object = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ds_exec_end_control_op = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"[IF_OP] Op=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"[WHILE_OP] Op=%p\0A\00", align 1
@AE_AML_LOOP_TIMEOUT = common dso_local global i32 0, align 4
@AE_CTRL_PENDING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"[WHILE_OP] termination! Op=%p\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"[RETURN_OP] Op=%p Arg=%p\0A\00", align 1
@ACPI_DESC_TYPE_OPERAND = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@ACPI_REFCLASS_INDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"Completed RETURN_OP State=%p, RetVal=%p\0A\00", align 1
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@ACPI_SIGNAL_BREAKPOINT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Executed AML Breakpoint opcode\00", align 1
@AE_AML_NO_WHILE = common dso_local global i32 0, align 4
@AE_CTRL_BREAK = common dso_local global i32 0, align 4
@AE_CTRL_CONTINUE = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Unknown control opcode=0x%X Op=%p\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_exec_end_control_op(%struct.acpi_walk_state* %0, %union.acpi_parse_object* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.acpi_generic_state*, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object* %1, %union.acpi_parse_object** %5, align 8
  %8 = load i32, i32* @AE_OK, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @ds_exec_end_control_op, align 4
  %10 = call i32 @ACPI_FUNCTION_NAME(i32 %9)
  %11 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %12 = bitcast %union.acpi_parse_object* %11 to %struct.TYPE_19__*
  %13 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %284 [
    i32 131, label %15
    i32 132, label %33
    i32 128, label %34
    i32 129, label %75
    i32 130, label %230
    i32 135, label %231
    i32 134, label %236
    i32 133, label %236
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %17 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %18 = ptrtoint %union.acpi_parse_object* %17 to i32
  %19 = call i32 @ACPI_DEBUG_PRINT(i32 %18)
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 0
  %22 = load %union.acpi_generic_state*, %union.acpi_generic_state** %21, align 8
  %23 = bitcast %union.acpi_generic_state* %22 to %struct.TYPE_12__*
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 0
  %30 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %29)
  store %union.acpi_generic_state* %30, %union.acpi_generic_state** %7, align 8
  %31 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %32 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %31)
  br label %294

33:                                               ; preds = %2
  br label %294

34:                                               ; preds = %2
  %35 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %36 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %37 = ptrtoint %union.acpi_parse_object* %36 to i32
  %38 = call i32 @ACPI_DEBUG_PRINT(i32 %37)
  %39 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %40 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %39, i32 0, i32 0
  %41 = load %union.acpi_generic_state*, %union.acpi_generic_state** %40, align 8
  store %union.acpi_generic_state* %41, %union.acpi_generic_state** %7, align 8
  %42 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %43 = bitcast %union.acpi_generic_state* %42 to %struct.TYPE_12__*
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %34
  %48 = call i32 (...) @acpi_os_get_timer()
  %49 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %50 = bitcast %union.acpi_generic_state* %49 to %struct.TYPE_18__*
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ACPI_TIME_AFTER(i32 %48, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @AE_AML_LOOP_TIMEOUT, align 4
  store i32 %56, i32* %6, align 4
  br label %294

57:                                               ; preds = %47
  %58 = load i32, i32* @AE_CTRL_PENDING, align 4
  store i32 %58, i32* %6, align 4
  %59 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %60 = bitcast %union.acpi_generic_state* %59 to %struct.TYPE_18__*
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %64 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %294

65:                                               ; preds = %34
  %66 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %67 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %68 = ptrtoint %union.acpi_parse_object* %67 to i32
  %69 = call i32 @ACPI_DEBUG_PRINT(i32 %68)
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %71 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %70, i32 0, i32 0
  %72 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %71)
  store %union.acpi_generic_state* %72, %union.acpi_generic_state** %7, align 8
  %73 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %74 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %73)
  br label %294

75:                                               ; preds = %2
  %76 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %77 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %78 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %79 = bitcast %union.acpi_parse_object* %78 to %struct.TYPE_19__*
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ACPI_DEBUG_PRINT(i32 %82)
  %84 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %85 = bitcast %union.acpi_parse_object* %84 to %struct.TYPE_19__*
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %125

90:                                               ; preds = %75
  %91 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %92 = call i32 @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %91)
  %93 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %94 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %95 = bitcast %union.acpi_parse_object* %94 to %struct.TYPE_19__*
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @acpi_ds_create_operands(%struct.acpi_walk_state* %93, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @ACPI_FAILURE(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %90
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %296

105:                                              ; preds = %90
  %106 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %107 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %106, i32 0, i32 4
  %108 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %108, i64 0
  %110 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %111 = call i32 @acpi_ex_resolve_to_value(%struct.TYPE_20__** %109, %struct.acpi_walk_state* %110)
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @ACPI_FAILURE(i32 %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %105
  %116 = load i32, i32* %6, align 4
  store i32 %116, i32* %3, align 4
  br label %296

117:                                              ; preds = %105
  %118 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %119 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %118, i32 0, i32 4
  %120 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %120, i64 0
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %121, align 8
  %123 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %124 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %123, i32 0, i32 2
  store %struct.TYPE_20__* %122, %struct.TYPE_20__** %124, align 8
  br label %221

125:                                              ; preds = %75
  %126 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %127 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %199

130:                                              ; preds = %125
  %131 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %132 = call i32 @acpi_ds_clear_implicit_return(%struct.acpi_walk_state* %131)
  %133 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %134 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %133, i32 0, i32 5
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 0
  %138 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %138, i64 0
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %139, align 8
  %141 = call i32 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_20__* %140)
  %142 = load i32, i32* @ACPI_DESC_TYPE_OPERAND, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %188

144:                                              ; preds = %130
  %145 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %146 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %145, i32 0, i32 5
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %150, i64 0
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %188

158:                                              ; preds = %144
  %159 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %160 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %159, i32 0, i32 5
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %164, i64 0
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ACPI_REFCLASS_INDEX, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %158
  %173 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %174 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %173, i32 0, i32 5
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %178, i64 0
  %180 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %181 = call i32 @acpi_ex_resolve_to_value(%struct.TYPE_20__** %179, %struct.acpi_walk_state* %180)
  store i32 %181, i32* %6, align 4
  %182 = load i32, i32* %6, align 4
  %183 = call i32 @ACPI_FAILURE(i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %172
  %186 = load i32, i32* %6, align 4
  store i32 %186, i32* %3, align 4
  br label %296

187:                                              ; preds = %172
  br label %188

188:                                              ; preds = %187, %158, %144, %130
  %189 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %190 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %189, i32 0, i32 5
  %191 = load %struct.TYPE_17__*, %struct.TYPE_17__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %194, i64 0
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  %197 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %198 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %197, i32 0, i32 2
  store %struct.TYPE_20__* %196, %struct.TYPE_20__** %198, align 8
  br label %220

199:                                              ; preds = %125
  %200 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %201 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %199
  %205 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %206 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %205, i32 0, i32 4
  %207 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %207, i64 0
  %209 = load %struct.TYPE_20__*, %struct.TYPE_20__** %208, align 8
  %210 = call i32 @acpi_ut_remove_reference(%struct.TYPE_20__* %209)
  br label %211

211:                                              ; preds = %204, %199
  %212 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %213 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %212, i32 0, i32 4
  %214 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %214, i64 0
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %215, align 8
  %216 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %217 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %216, i32 0, i32 3
  store i32 0, i32* %217, align 8
  %218 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %219 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %218, i32 0, i32 2
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %219, align 8
  br label %220

220:                                              ; preds = %211, %188
  br label %221

221:                                              ; preds = %220, %117
  %222 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %223 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %224 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %225 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %224, i32 0, i32 2
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %225, align 8
  %227 = ptrtoint %struct.TYPE_20__* %226 to i32
  %228 = call i32 @ACPI_DEBUG_PRINT(i32 %227)
  %229 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %229, i32* %6, align 4
  br label %294

230:                                              ; preds = %2
  br label %294

231:                                              ; preds = %2
  %232 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %233 = call i32 @acpi_db_signal_break_point(%struct.acpi_walk_state* %232)
  %234 = load i32, i32* @ACPI_SIGNAL_BREAKPOINT, align 4
  %235 = call i32 @acpi_os_signal(i32 %234, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  store i32 %235, i32* %6, align 4
  br label %294

236:                                              ; preds = %2, %2
  br label %237

237:                                              ; preds = %252, %236
  %238 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %239 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %238, i32 0, i32 0
  %240 = load %union.acpi_generic_state*, %union.acpi_generic_state** %239, align 8
  %241 = icmp ne %union.acpi_generic_state* %240, null
  br i1 %241, label %242, label %250

242:                                              ; preds = %237
  %243 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %244 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %243, i32 0, i32 0
  %245 = load %union.acpi_generic_state*, %union.acpi_generic_state** %244, align 8
  %246 = bitcast %union.acpi_generic_state* %245 to %struct.TYPE_18__*
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 128
  br label %250

250:                                              ; preds = %242, %237
  %251 = phi i1 [ false, %237 ], [ %249, %242 ]
  br i1 %251, label %252, label %258

252:                                              ; preds = %250
  %253 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %254 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %253, i32 0, i32 0
  %255 = call %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state** %254)
  store %union.acpi_generic_state* %255, %union.acpi_generic_state** %7, align 8
  %256 = load %union.acpi_generic_state*, %union.acpi_generic_state** %7, align 8
  %257 = call i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state* %256)
  br label %237

258:                                              ; preds = %250
  %259 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %260 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %259, i32 0, i32 0
  %261 = load %union.acpi_generic_state*, %union.acpi_generic_state** %260, align 8
  %262 = icmp ne %union.acpi_generic_state* %261, null
  br i1 %262, label %265, label %263

263:                                              ; preds = %258
  %264 = load i32, i32* @AE_AML_NO_WHILE, align 4
  store i32 %264, i32* %3, align 4
  br label %296

265:                                              ; preds = %258
  %266 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %267 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %266, i32 0, i32 0
  %268 = load %union.acpi_generic_state*, %union.acpi_generic_state** %267, align 8
  %269 = bitcast %union.acpi_generic_state* %268 to %struct.TYPE_18__*
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %273 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %272, i32 0, i32 1
  store i32 %271, i32* %273, align 8
  %274 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %275 = bitcast %union.acpi_parse_object* %274 to %struct.TYPE_19__*
  %276 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = icmp eq i32 %277, 134
  br i1 %278, label %279, label %281

279:                                              ; preds = %265
  %280 = load i32, i32* @AE_CTRL_BREAK, align 4
  store i32 %280, i32* %6, align 4
  br label %283

281:                                              ; preds = %265
  %282 = load i32, i32* @AE_CTRL_CONTINUE, align 4
  store i32 %282, i32* %6, align 4
  br label %283

283:                                              ; preds = %281, %279
  br label %294

284:                                              ; preds = %2
  %285 = load i32, i32* @AE_INFO, align 4
  %286 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %287 = bitcast %union.acpi_parse_object* %286 to %struct.TYPE_19__*
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %union.acpi_parse_object*, %union.acpi_parse_object** %5, align 8
  %291 = ptrtoint %union.acpi_parse_object* %290 to i32
  %292 = call i32 @ACPI_ERROR(i32 %291)
  %293 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %293, i32* %6, align 4
  br label %294

294:                                              ; preds = %284, %283, %231, %230, %221, %65, %57, %55, %33, %15
  %295 = load i32, i32* %6, align 4
  store i32 %295, i32* %3, align 4
  br label %296

296:                                              ; preds = %294, %263, %185, %115, %103
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i32 @ACPI_FUNCTION_NAME(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %union.acpi_generic_state* @acpi_ut_pop_generic_state(%union.acpi_generic_state**) #1

declare dso_local i32 @acpi_ut_delete_generic_state(%union.acpi_generic_state*) #1

declare dso_local i32 @ACPI_TIME_AFTER(i32, i32) #1

declare dso_local i32 @acpi_os_get_timer(...) #1

declare dso_local i32 @acpi_ds_clear_implicit_return(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_ds_create_operands(%struct.acpi_walk_state*, i32) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ex_resolve_to_value(%struct.TYPE_20__**, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_GET_DESCRIPTOR_TYPE(%struct.TYPE_20__*) #1

declare dso_local i32 @acpi_ut_remove_reference(%struct.TYPE_20__*) #1

declare dso_local i32 @acpi_db_signal_break_point(%struct.acpi_walk_state*) #1

declare dso_local i32 @acpi_os_signal(i32, i8*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
