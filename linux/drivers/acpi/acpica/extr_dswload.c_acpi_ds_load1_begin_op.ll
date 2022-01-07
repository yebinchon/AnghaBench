; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswload.c_acpi_ds_load1_begin_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dswload.c_acpi_ds_load1_begin_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.acpi_walk_state = type { i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32, %struct.acpi_namespace_node*, %struct.TYPE_8__*, %union.acpi_parse_object* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%union.acpi_parse_object = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_10__ = type { %struct.acpi_namespace_node* }

@ds_load1_begin_op = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Op=%p State=%p\0A\00", align 1
@AML_NAMED = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"State=%p Op=%p [%s]\0A\00", align 1
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@ACPI_NS_SEARCH_PARENT = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"Type override - [%4.4s] had invalid type (%s) for Scope operator, changed to type ANY\0A\00", align 1
@acpi_gbl_root_node = common dso_local global %struct.acpi_namespace_node* null, align 8
@ACPI_PARSE_MODULE_LEVEL = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [73 x i8] c"Invalid type (%s) for target of Scope operator [%4.4s] (Cannot override)\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@ACPI_NS_NO_UPSEARCH = common dso_local global i32 0, align 4
@ACPI_PARSE_DEFERRED_OP = common dso_local global i32 0, align 4
@ACPI_NS_OVERRIDE_IF_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"[%s] Override allowed\0A\00", align 1
@ACPI_NS_ERROR_IF_FOUND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"[%s] Cannot already exist\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"[%s] Both Find or Create allowed\0A\00", align 1
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ANOBJ_IS_EXTERNAL = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_load1_begin_op(%struct.acpi_walk_state* %0, %union.acpi_parse_object** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_walk_state*, align 8
  %5 = alloca %union.acpi_parse_object**, align 8
  %6 = alloca %union.acpi_parse_object*, align 8
  %7 = alloca %struct.acpi_namespace_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.acpi_walk_state* %0, %struct.acpi_walk_state** %4, align 8
  store %union.acpi_parse_object** %1, %union.acpi_parse_object*** %5, align 8
  %12 = load i32, i32* @ds_load1_begin_op, align 4
  %13 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %13, i32 0, i32 9
  %15 = load %union.acpi_parse_object*, %union.acpi_parse_object** %14, align 8
  %16 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %12, %union.acpi_parse_object* %15)
  %17 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %17, i32 0, i32 9
  %19 = load %union.acpi_parse_object*, %union.acpi_parse_object** %18, align 8
  store %union.acpi_parse_object* %19, %union.acpi_parse_object** %6, align 8
  %20 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %21 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %22 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %23 = ptrtoint %struct.acpi_walk_state* %22 to i32
  %24 = call i32 @ACPI_DEBUG_PRINT(i32 %23)
  %25 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %26 = icmp ne %union.acpi_parse_object* %25, null
  br i1 %26, label %27, label %53

27:                                               ; preds = %2
  %28 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %29 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %28, i32 0, i32 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AML_NAMED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %27
  %37 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %38 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %5, align 8
  store %union.acpi_parse_object* %37, %union.acpi_parse_object** %38, align 8
  %39 = load i32, i32* @AE_OK, align 4
  %40 = call i32 @return_ACPI_STATUS(i32 %39)
  br label %41

41:                                               ; preds = %36, %27
  %42 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %43 = bitcast %union.acpi_parse_object* %42 to %struct.TYPE_10__*
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %44, align 8
  %46 = icmp ne %struct.acpi_namespace_node* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %49 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %5, align 8
  store %union.acpi_parse_object* %48, %union.acpi_parse_object** %49, align 8
  %50 = load i32, i32* @AE_OK, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  br label %52

52:                                               ; preds = %47, %41
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %55 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %54, i32 0, i32 2
  %56 = call i8* @acpi_ps_get_next_namestring(i32* %55)
  store i8* %56, i8** %10, align 8
  %57 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %58 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %57, i32 0, i32 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %63 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %64 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @acpi_ut_get_type_name(i32 %65)
  %67 = call i32 @ACPI_DEBUG_PRINT(i32 %66)
  %68 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %69 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %139 [
    i32 128, label %71
  ]

71:                                               ; preds = %53
  %72 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %73 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %72, i32 0, i32 4
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %78 = load i32, i32* @ACPI_NS_SEARCH_PARENT, align 4
  %79 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %80 = call i32 @acpi_ns_lookup(%struct.TYPE_13__* %74, i8* %75, i32 %76, i32 %77, i32 %78, %struct.acpi_walk_state* %79, %struct.acpi_namespace_node** %7)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @ACPI_FAILURE(i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %71
  %85 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %86 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %85, i32 0, i32 4
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @ACPI_ERROR_NAMESPACE(%struct.TYPE_13__* %87, i8* %88, i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = call i32 @return_ACPI_STATUS(i32 %91)
  br label %93

93:                                               ; preds = %84, %71
  %94 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %95 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %127 [
    i32 138, label %97
    i32 134, label %97
    i32 136, label %97
    i32 132, label %97
    i32 131, label %97
    i32 129, label %97
    i32 135, label %98
    i32 130, label %98
    i32 137, label %98
    i32 133, label %114
  ]

97:                                               ; preds = %93, %93, %93, %93, %93, %93
  br label %138

98:                                               ; preds = %93, %93, %93
  %99 = load i32, i32* @ACPI_DB_INFO, align 4
  %100 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %101 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %100)
  %102 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %103 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @acpi_ut_get_type_name(i32 %104)
  %106 = call i32 @ACPI_DEBUG_PRINT(i32 %105)
  %107 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %108 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %107, i32 0, i32 0
  store i32 138, i32* %108, align 4
  %109 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %110 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %109, i32 0, i32 4
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  store i32 138, i32* %113, align 4
  br label %138

114:                                              ; preds = %93
  %115 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %116 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** @acpi_gbl_root_node, align 8
  %117 = icmp eq %struct.acpi_namespace_node* %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %114
  %119 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %120 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @ACPI_PARSE_MODULE_LEVEL, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  br label %138

126:                                              ; preds = %118, %114
  br label %127

127:                                              ; preds = %93, %126
  %128 = load i32, i32* @AE_INFO, align 4
  %129 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %130 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @acpi_ut_get_type_name(i32 %131)
  %133 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %134 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %133)
  %135 = call i32 @ACPI_ERROR(i32 %134)
  %136 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %137 = call i32 @return_ACPI_STATUS(i32 %136)
  br label %138

138:                                              ; preds = %127, %125, %98, %97
  br label %263

139:                                              ; preds = %53
  %140 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %141 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %140, i32 0, i32 7
  %142 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %141, align 8
  %143 = icmp ne %struct.acpi_namespace_node* %142, null
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %146 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %145, i32 0, i32 7
  %147 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %146, align 8
  store %struct.acpi_namespace_node* %147, %struct.acpi_namespace_node** %7, align 8
  %148 = load i32, i32* @AE_OK, align 4
  store i32 %148, i32* %8, align 4
  br label %263

149:                                              ; preds = %139
  %150 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %151 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %149
  store %struct.acpi_namespace_node* null, %struct.acpi_namespace_node** %7, align 8
  %155 = load i32, i32* @AE_OK, align 4
  store i32 %155, i32* %8, align 4
  br label %263

156:                                              ; preds = %149
  %157 = load i32, i32* @ACPI_NS_NO_UPSEARCH, align 4
  store i32 %157, i32* %11, align 4
  %158 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %159 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 128
  br i1 %161, label %162, label %191

162:                                              ; preds = %156
  %163 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %164 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ACPI_PARSE_DEFERRED_OP, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %191, label %169

169:                                              ; preds = %162
  %170 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %171 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %169
  %175 = load i32, i32* @ACPI_NS_OVERRIDE_IF_FOUND, align 4
  %176 = load i32, i32* %11, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @acpi_ut_get_type_name(i32 %179)
  %181 = call i32 @ACPI_DEBUG_PRINT(i32 %180)
  br label %190

182:                                              ; preds = %169
  %183 = load i32, i32* @ACPI_NS_ERROR_IF_FOUND, align 4
  %184 = load i32, i32* %11, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %187 = load i32, i32* %9, align 4
  %188 = call i32 @acpi_ut_get_type_name(i32 %187)
  %189 = call i32 @ACPI_DEBUG_PRINT(i32 %188)
  br label %190

190:                                              ; preds = %182, %174
  br label %196

191:                                              ; preds = %162, %156
  %192 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @acpi_ut_get_type_name(i32 %193)
  %195 = call i32 @ACPI_DEBUG_PRINT(i32 %194)
  br label %196

196:                                              ; preds = %191, %190
  %197 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %198 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %197, i32 0, i32 4
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %198, align 8
  %200 = load i8*, i8** %10, align 8
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %205 = call i32 @acpi_ns_lookup(%struct.TYPE_13__* %199, i8* %200, i32 %201, i32 %202, i32 %203, %struct.acpi_walk_state* %204, %struct.acpi_namespace_node** %7)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @ACPI_FAILURE(i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %262

209:                                              ; preds = %196
  %210 = load i32, i32* %8, align 4
  %211 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %248

213:                                              ; preds = %209
  %214 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %215 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %247

220:                                              ; preds = %213
  %221 = load i32, i32* @ANOBJ_IS_EXTERNAL, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %224 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %229 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %9, align 4
  %231 = call i32 @acpi_ns_opens_scope(i32 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %245

233:                                              ; preds = %220
  %234 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %235 = load i32, i32* %9, align 4
  %236 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %237 = call i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node* %234, i32 %235, %struct.acpi_walk_state* %236)
  store i32 %237, i32* %8, align 4
  %238 = load i32, i32* %8, align 4
  %239 = call i32 @ACPI_FAILURE(i32 %238)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %233
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @return_ACPI_STATUS(i32 %242)
  br label %244

244:                                              ; preds = %241, %233
  br label %245

245:                                              ; preds = %244, %220
  %246 = load i32, i32* @AE_OK, align 4
  store i32 %246, i32* %8, align 4
  br label %247

247:                                              ; preds = %245, %213
  br label %248

248:                                              ; preds = %247, %209
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @ACPI_FAILURE(i32 %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %248
  %253 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %254 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %253, i32 0, i32 4
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %254, align 8
  %256 = load i8*, i8** %10, align 8
  %257 = load i32, i32* %8, align 4
  %258 = call i32 @ACPI_ERROR_NAMESPACE(%struct.TYPE_13__* %255, i8* %256, i32 %257)
  %259 = load i32, i32* %8, align 4
  %260 = call i32 @return_ACPI_STATUS(i32 %259)
  br label %261

261:                                              ; preds = %252, %248
  br label %262

262:                                              ; preds = %261, %196
  br label %263

263:                                              ; preds = %262, %154, %144, %138
  %264 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %265 = icmp ne %union.acpi_parse_object* %264, null
  br i1 %265, label %280, label %266

266:                                              ; preds = %263
  %267 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %268 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %271 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %270, i32 0, i32 3
  %272 = load i32, i32* %271, align 4
  %273 = call %union.acpi_parse_object* @acpi_ps_alloc_op(i32 %269, i32 %272)
  store %union.acpi_parse_object* %273, %union.acpi_parse_object** %6, align 8
  %274 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %275 = icmp ne %union.acpi_parse_object* %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %266
  %277 = load i32, i32* @AE_NO_MEMORY, align 4
  %278 = call i32 @return_ACPI_STATUS(i32 %277)
  br label %279

279:                                              ; preds = %276, %266
  br label %280

280:                                              ; preds = %279, %263
  %281 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %282 = icmp ne %struct.acpi_namespace_node* %281, null
  br i1 %282, label %283, label %295

283:                                              ; preds = %280
  %284 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %285 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %286 = bitcast %union.acpi_parse_object* %285 to %struct.TYPE_10__*
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 0
  store %struct.acpi_namespace_node* %284, %struct.acpi_namespace_node** %287, align 8
  %288 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %7, align 8
  %289 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %288, i32 0, i32 2
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %293 = bitcast %union.acpi_parse_object* %292 to %struct.TYPE_11__*
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 1
  store i32 %291, i32* %294, align 8
  br label %295

295:                                              ; preds = %283, %280
  %296 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %4, align 8
  %297 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %296, i32 0, i32 2
  %298 = call i32 @acpi_ps_get_parent_scope(i32* %297)
  %299 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %300 = call i32 @acpi_ps_append_arg(i32 %298, %union.acpi_parse_object* %299)
  %301 = load %union.acpi_parse_object*, %union.acpi_parse_object** %6, align 8
  %302 = load %union.acpi_parse_object**, %union.acpi_parse_object*** %5, align 8
  store %union.acpi_parse_object* %301, %union.acpi_parse_object** %302, align 8
  %303 = load i32, i32* %8, align 4
  %304 = call i32 @return_ACPI_STATUS(i32 %303)
  %305 = load i32, i32* %3, align 4
  ret i32 %305
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i8* @acpi_ps_get_next_namestring(i32*) #1

declare dso_local i32 @acpi_ut_get_type_name(i32) #1

declare dso_local i32 @acpi_ns_lookup(%struct.TYPE_13__*, i8*, i32, i32, i32, %struct.acpi_walk_state*, %struct.acpi_namespace_node**) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

declare dso_local i32 @ACPI_ERROR_NAMESPACE(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ns_opens_scope(i32) #1

declare dso_local i32 @acpi_ds_scope_stack_push(%struct.acpi_namespace_node*, i32, %struct.acpi_walk_state*) #1

declare dso_local %union.acpi_parse_object* @acpi_ps_alloc_op(i32, i32) #1

declare dso_local i32 @acpi_ps_append_arg(i32, %union.acpi_parse_object*) #1

declare dso_local i32 @acpi_ps_get_parent_scope(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
