; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg2.c_acpi_ex_opcode_2A_1T_1R.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_exoparg2.c_acpi_ex_opcode_2A_1T_1R.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_walk_state = type { i32, %union.acpi_operand_object*, %struct.TYPE_8__*, %union.acpi_operand_object** }
%union.acpi_operand_object = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %union.acpi_operand_object*, i32*, i32*, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i32* }

@AE_OK = common dso_local global i32 0, align 4
@ex_opcode_2A_1T_1R = common dso_local global i32 0, align 4
@AML_MATH = common dso_local global i32 0, align 4
@ACPI_TYPE_INTEGER = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REFERENCE = common dso_local global i32 0, align 4
@ACPI_REFCLASS_INDEX = common dso_local global i32 0, align 4
@AE_AML_STRING_LIMIT = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER_FIELD = common dso_local global i8* null, align 8
@AE_AML_BUFFER_LIMIT = common dso_local global i32 0, align 4
@AE_AML_PACKAGE_LIMIT = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid object type: %X\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Index (0x%X%8.8X) is beyond end of object (length 0x%X)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Unknown AML opcode 0x%X\00", align 1
@AE_AML_BAD_OPCODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ex_opcode_2A_1T_1R(%struct.acpi_walk_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_walk_state*, align 8
  %4 = alloca %union.acpi_operand_object**, align 8
  %5 = alloca %union.acpi_operand_object*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %3, align 8
  %9 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %9, i32 0, i32 3
  %11 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %10, align 8
  %12 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %11, i64 0
  store %union.acpi_operand_object** %12, %union.acpi_operand_object*** %4, align 8
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %5, align 8
  %13 = load i32, i32* @AE_OK, align 4
  store i32 %13, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %14 = load i32, i32* @ex_opcode_2A_1T_1R, align 4
  %15 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %16 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @acpi_ps_get_opcode_name(i32 %17)
  %19 = call i32 @ACPI_FUNCTION_TRACE_STR(i32 %14, i32 %18)
  %20 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %21 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %20, i32 0, i32 2
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AML_MATH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %1
  %29 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %30 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %29)
  store %union.acpi_operand_object* %30, %union.acpi_operand_object** %5, align 8
  %31 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %32 = icmp ne %union.acpi_operand_object* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %34, i32* %7, align 4
  br label %361

35:                                               ; preds = %28
  %36 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %37 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %40 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %39, i64 0
  %41 = load %union.acpi_operand_object*, %union.acpi_operand_object** %40, align 8
  %42 = bitcast %union.acpi_operand_object* %41 to %struct.TYPE_9__*
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %46 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %45, i64 1
  %47 = load %union.acpi_operand_object*, %union.acpi_operand_object** %46, align 8
  %48 = bitcast %union.acpi_operand_object* %47 to %struct.TYPE_9__*
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @acpi_ex_do_math_op(i32 %38, i64 %44, i64 %50)
  %52 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %53 = bitcast %union.acpi_operand_object* %52 to %struct.TYPE_9__*
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  br label %335

55:                                               ; preds = %1
  %56 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %57 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %327 [
    i32 129, label %59
    i32 132, label %83
    i32 128, label %92
    i32 131, label %147
    i32 130, label %156
  ]

59:                                               ; preds = %55
  %60 = load i32, i32* @ACPI_TYPE_INTEGER, align 4
  %61 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %60)
  store %union.acpi_operand_object* %61, %union.acpi_operand_object** %5, align 8
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %63 = icmp ne %union.acpi_operand_object* %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %59
  %65 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %65, i32* %7, align 4
  br label %361

66:                                               ; preds = %59
  %67 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %68 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %67, i64 0
  %69 = load %union.acpi_operand_object*, %union.acpi_operand_object** %68, align 8
  %70 = bitcast %union.acpi_operand_object* %69 to %struct.TYPE_9__*
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %74 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %73, i64 1
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %74, align 8
  %76 = bitcast %union.acpi_operand_object* %75 to %struct.TYPE_9__*
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %80 = bitcast %union.acpi_operand_object* %79 to %struct.TYPE_9__*
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = call i32 @acpi_ut_divide(i64 %72, i64 %78, i32* null, i64* %81)
  store i32 %82, i32* %7, align 4
  br label %334

83:                                               ; preds = %55
  %84 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %85 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %84, i64 0
  %86 = load %union.acpi_operand_object*, %union.acpi_operand_object** %85, align 8
  %87 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %88 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %87, i64 1
  %89 = load %union.acpi_operand_object*, %union.acpi_operand_object** %88, align 8
  %90 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %91 = call i32 @acpi_ex_do_concatenate(%union.acpi_operand_object* %86, %union.acpi_operand_object* %89, %union.acpi_operand_object** %5, %struct.acpi_walk_state* %90)
  store i32 %91, i32* %7, align 4
  br label %334

92:                                               ; preds = %55
  br label %93

93:                                               ; preds = %124, %92
  %94 = load i64, i64* %8, align 8
  %95 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %96 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %95, i64 0
  %97 = load %union.acpi_operand_object*, %union.acpi_operand_object** %96, align 8
  %98 = bitcast %union.acpi_operand_object* %97 to %struct.TYPE_11__*
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %94, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %93
  %103 = load i64, i64* %8, align 8
  %104 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %105 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %104, i64 1
  %106 = load %union.acpi_operand_object*, %union.acpi_operand_object** %105, align 8
  %107 = bitcast %union.acpi_operand_object* %106 to %struct.TYPE_9__*
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ult i64 %103, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %102
  %112 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %113 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %112, i64 0
  %114 = load %union.acpi_operand_object*, %union.acpi_operand_object** %113, align 8
  %115 = bitcast %union.acpi_operand_object* %114 to %struct.TYPE_11__*
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br label %122

122:                                              ; preds = %111, %102, %93
  %123 = phi i1 [ false, %102 ], [ false, %93 ], [ %121, %111 ]
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = load i64, i64* %8, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %8, align 8
  br label %93

127:                                              ; preds = %122
  %128 = load i64, i64* %8, align 8
  %129 = call %union.acpi_operand_object* @acpi_ut_create_string_object(i64 %128)
  store %union.acpi_operand_object* %129, %union.acpi_operand_object** %5, align 8
  %130 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %131 = icmp ne %union.acpi_operand_object* %130, null
  br i1 %131, label %134, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %133, i32* %7, align 4
  br label %361

134:                                              ; preds = %127
  %135 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %136 = bitcast %union.acpi_operand_object* %135 to %struct.TYPE_10__*
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %140 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %139, i64 0
  %141 = load %union.acpi_operand_object*, %union.acpi_operand_object** %140, align 8
  %142 = bitcast %union.acpi_operand_object* %141 to %struct.TYPE_11__*
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %8, align 8
  %146 = call i32 @memcpy(i32 %138, i32* %144, i64 %145)
  br label %334

147:                                              ; preds = %55
  %148 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %149 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %148, i64 0
  %150 = load %union.acpi_operand_object*, %union.acpi_operand_object** %149, align 8
  %151 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %152 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %151, i64 1
  %153 = load %union.acpi_operand_object*, %union.acpi_operand_object** %152, align 8
  %154 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %155 = call i32 @acpi_ex_concat_template(%union.acpi_operand_object* %150, %union.acpi_operand_object* %153, %union.acpi_operand_object** %5, %struct.acpi_walk_state* %154)
  store i32 %155, i32* %7, align 4
  br label %334

156:                                              ; preds = %55
  %157 = load i32, i32* @ACPI_TYPE_LOCAL_REFERENCE, align 4
  %158 = call %union.acpi_operand_object* @acpi_ut_create_internal_object(i32 %157)
  store %union.acpi_operand_object* %158, %union.acpi_operand_object** %5, align 8
  %159 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %160 = icmp ne %union.acpi_operand_object* %159, null
  br i1 %160, label %163, label %161

161:                                              ; preds = %156
  %162 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %162, i32* %7, align 4
  br label %361

163:                                              ; preds = %156
  %164 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %165 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %164, i64 1
  %166 = load %union.acpi_operand_object*, %union.acpi_operand_object** %165, align 8
  %167 = bitcast %union.acpi_operand_object* %166 to %struct.TYPE_9__*
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  store i64 %169, i64* %6, align 8
  %170 = load i64, i64* %6, align 8
  %171 = trunc i64 %170 to i32
  %172 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %173 = bitcast %union.acpi_operand_object* %172 to %struct.TYPE_12__*
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 5
  store i32 %171, i32* %174, align 4
  %175 = load i32, i32* @ACPI_REFCLASS_INDEX, align 4
  %176 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %177 = bitcast %union.acpi_operand_object* %176 to %struct.TYPE_12__*
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 4
  store i32 %175, i32* %178, align 8
  %179 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %180 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %179, i64 0
  %181 = load %union.acpi_operand_object*, %union.acpi_operand_object** %180, align 8
  %182 = bitcast %union.acpi_operand_object* %181 to %struct.TYPE_14__*
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  switch i32 %184, label %285 [
    i32 133, label %185
    i32 135, label %219
    i32 134, label %253
  ]

185:                                              ; preds = %163
  %186 = load i64, i64* %6, align 8
  %187 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %188 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %187, i64 0
  %189 = load %union.acpi_operand_object*, %union.acpi_operand_object** %188, align 8
  %190 = bitcast %union.acpi_operand_object* %189 to %struct.TYPE_10__*
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = icmp uge i64 %186, %192
  br i1 %193, label %194, label %202

194:                                              ; preds = %185
  %195 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %196 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %195, i64 0
  %197 = load %union.acpi_operand_object*, %union.acpi_operand_object** %196, align 8
  %198 = bitcast %union.acpi_operand_object* %197 to %struct.TYPE_10__*
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  store i64 %200, i64* %8, align 8
  %201 = load i32, i32* @AE_AML_STRING_LIMIT, align 4
  store i32 %201, i32* %7, align 4
  br label %202

202:                                              ; preds = %194, %185
  %203 = load i8*, i8** @ACPI_TYPE_BUFFER_FIELD, align 8
  %204 = ptrtoint i8* %203 to i32
  %205 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %206 = bitcast %union.acpi_operand_object* %205 to %struct.TYPE_12__*
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  store i32 %204, i32* %207, align 8
  %208 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %209 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %208, i64 0
  %210 = load %union.acpi_operand_object*, %union.acpi_operand_object** %209, align 8
  %211 = bitcast %union.acpi_operand_object* %210 to %struct.TYPE_11__*
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* %6, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %217 = bitcast %union.acpi_operand_object* %216 to %struct.TYPE_12__*
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 3
  store i32* %215, i32** %218, align 8
  br label %295

219:                                              ; preds = %163
  %220 = load i64, i64* %6, align 8
  %221 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %222 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %221, i64 0
  %223 = load %union.acpi_operand_object*, %union.acpi_operand_object** %222, align 8
  %224 = bitcast %union.acpi_operand_object* %223 to %struct.TYPE_11__*
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp uge i64 %220, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %219
  %229 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %230 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %229, i64 0
  %231 = load %union.acpi_operand_object*, %union.acpi_operand_object** %230, align 8
  %232 = bitcast %union.acpi_operand_object* %231 to %struct.TYPE_11__*
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  store i64 %234, i64* %8, align 8
  %235 = load i32, i32* @AE_AML_BUFFER_LIMIT, align 4
  store i32 %235, i32* %7, align 4
  br label %236

236:                                              ; preds = %228, %219
  %237 = load i8*, i8** @ACPI_TYPE_BUFFER_FIELD, align 8
  %238 = ptrtoint i8* %237 to i32
  %239 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %240 = bitcast %union.acpi_operand_object* %239 to %struct.TYPE_12__*
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  store i32 %238, i32* %241, align 8
  %242 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %243 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %242, i64 0
  %244 = load %union.acpi_operand_object*, %union.acpi_operand_object** %243, align 8
  %245 = bitcast %union.acpi_operand_object* %244 to %struct.TYPE_11__*
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* %6, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  %250 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %251 = bitcast %union.acpi_operand_object* %250 to %struct.TYPE_12__*
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 3
  store i32* %249, i32** %252, align 8
  br label %295

253:                                              ; preds = %163
  %254 = load i64, i64* %6, align 8
  %255 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %256 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %255, i64 0
  %257 = load %union.acpi_operand_object*, %union.acpi_operand_object** %256, align 8
  %258 = bitcast %union.acpi_operand_object* %257 to %struct.TYPE_13__*
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp uge i64 %254, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %253
  %263 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %264 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %263, i64 0
  %265 = load %union.acpi_operand_object*, %union.acpi_operand_object** %264, align 8
  %266 = bitcast %union.acpi_operand_object* %265 to %struct.TYPE_13__*
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  store i64 %268, i64* %8, align 8
  %269 = load i32, i32* @AE_AML_PACKAGE_LIMIT, align 4
  store i32 %269, i32* %7, align 4
  br label %270

270:                                              ; preds = %262, %253
  %271 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %272 = bitcast %union.acpi_operand_object* %271 to %struct.TYPE_12__*
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  store i32 134, i32* %273, align 8
  %274 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %275 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %274, i64 0
  %276 = load %union.acpi_operand_object*, %union.acpi_operand_object** %275, align 8
  %277 = bitcast %union.acpi_operand_object* %276 to %struct.TYPE_13__*
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 1
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* %6, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %283 = bitcast %union.acpi_operand_object* %282 to %struct.TYPE_12__*
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 2
  store i32* %281, i32** %284, align 8
  br label %295

285:                                              ; preds = %163
  %286 = load i32, i32* @AE_INFO, align 4
  %287 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %288 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %287, i64 0
  %289 = load %union.acpi_operand_object*, %union.acpi_operand_object** %288, align 8
  %290 = bitcast %union.acpi_operand_object* %289 to %struct.TYPE_14__*
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = call i32 @ACPI_ERROR(i32 %292)
  %294 = load i32, i32* @AE_AML_INTERNAL, align 4
  store i32 %294, i32* %7, align 4
  br label %361

295:                                              ; preds = %270, %236, %202
  %296 = load i32, i32* %7, align 4
  %297 = call i64 @ACPI_FAILURE(i32 %296)
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %307

299:                                              ; preds = %295
  %300 = load i32, i32* @AE_INFO, align 4
  %301 = load i32, i32* %7, align 4
  %302 = load i64, i64* %6, align 8
  %303 = call i32 @ACPI_FORMAT_UINT64(i64 %302)
  %304 = load i64, i64* %8, align 8
  %305 = trunc i64 %304 to i32
  %306 = call i32 @ACPI_BIOS_EXCEPTION(i32 %305)
  br label %361

307:                                              ; preds = %295
  %308 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %309 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %308, i64 0
  %310 = load %union.acpi_operand_object*, %union.acpi_operand_object** %309, align 8
  %311 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %312 = bitcast %union.acpi_operand_object* %311 to %struct.TYPE_12__*
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 1
  store %union.acpi_operand_object* %310, %union.acpi_operand_object** %313, align 8
  %314 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %315 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %314, i64 0
  %316 = load %union.acpi_operand_object*, %union.acpi_operand_object** %315, align 8
  %317 = call i32 @acpi_ut_add_reference(%union.acpi_operand_object* %316)
  %318 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %319 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %320 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %319, i64 2
  %321 = load %union.acpi_operand_object*, %union.acpi_operand_object** %320, align 8
  %322 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %323 = call i32 @acpi_ex_store(%union.acpi_operand_object* %318, %union.acpi_operand_object* %321, %struct.acpi_walk_state* %322)
  store i32 %323, i32* %7, align 4
  %324 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %325 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %326 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %325, i32 0, i32 1
  store %union.acpi_operand_object* %324, %union.acpi_operand_object** %326, align 8
  br label %361

327:                                              ; preds = %55
  %328 = load i32, i32* @AE_INFO, align 4
  %329 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %330 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = call i32 @ACPI_ERROR(i32 %331)
  %333 = load i32, i32* @AE_AML_BAD_OPCODE, align 4
  store i32 %333, i32* %7, align 4
  br label %334

334:                                              ; preds = %327, %147, %134, %83, %66
  br label %335

335:                                              ; preds = %334, %35
  %336 = load i32, i32* %7, align 4
  %337 = call i64 @ACPI_SUCCESS(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %360

339:                                              ; preds = %335
  %340 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %341 = load %union.acpi_operand_object**, %union.acpi_operand_object*** %4, align 8
  %342 = getelementptr inbounds %union.acpi_operand_object*, %union.acpi_operand_object** %341, i64 2
  %343 = load %union.acpi_operand_object*, %union.acpi_operand_object** %342, align 8
  %344 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %345 = call i32 @acpi_ex_store(%union.acpi_operand_object* %340, %union.acpi_operand_object* %343, %struct.acpi_walk_state* %344)
  store i32 %345, i32* %7, align 4
  %346 = load i32, i32* %7, align 4
  %347 = call i64 @ACPI_FAILURE(i32 %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %339
  br label %361

350:                                              ; preds = %339
  %351 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %352 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %351, i32 0, i32 1
  %353 = load %union.acpi_operand_object*, %union.acpi_operand_object** %352, align 8
  %354 = icmp ne %union.acpi_operand_object* %353, null
  br i1 %354, label %359, label %355

355:                                              ; preds = %350
  %356 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %357 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %358 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %357, i32 0, i32 1
  store %union.acpi_operand_object* %356, %union.acpi_operand_object** %358, align 8
  br label %359

359:                                              ; preds = %355, %350
  br label %360

360:                                              ; preds = %359, %335
  br label %361

361:                                              ; preds = %360, %349, %307, %299, %285, %161, %132, %64, %33
  %362 = load i32, i32* %7, align 4
  %363 = call i64 @ACPI_FAILURE(i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %361
  %366 = load %union.acpi_operand_object*, %union.acpi_operand_object** %5, align 8
  %367 = call i32 @acpi_ut_remove_reference(%union.acpi_operand_object* %366)
  %368 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %3, align 8
  %369 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %368, i32 0, i32 1
  store %union.acpi_operand_object* null, %union.acpi_operand_object** %369, align 8
  br label %370

370:                                              ; preds = %365, %361
  %371 = load i32, i32* %7, align 4
  %372 = call i32 @return_ACPI_STATUS(i32 %371)
  %373 = load i32, i32* %2, align 4
  ret i32 %373
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_STR(i32, i32) #1

declare dso_local i32 @acpi_ps_get_opcode_name(i32) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_internal_object(i32) #1

declare dso_local i64 @acpi_ex_do_math_op(i32, i64, i64) #1

declare dso_local i32 @acpi_ut_divide(i64, i64, i32*, i64*) #1

declare dso_local i32 @acpi_ex_do_concatenate(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local %union.acpi_operand_object* @acpi_ut_create_string_object(i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @acpi_ex_concat_template(%union.acpi_operand_object*, %union.acpi_operand_object*, %union.acpi_operand_object**, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_BIOS_EXCEPTION(i32) #1

declare dso_local i32 @ACPI_FORMAT_UINT64(i64) #1

declare dso_local i32 @acpi_ut_add_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @acpi_ex_store(%union.acpi_operand_object*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_ut_remove_reference(%union.acpi_operand_object*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
