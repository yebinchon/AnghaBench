; ModuleID = '/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_begin_method_execution.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/acpi/acpica/extr_dsmethod.c_acpi_ds_begin_method_execution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_namespace_node = type { i32 }
%union.acpi_operand_object = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i64, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i32, i32 }
%struct.acpi_walk_state = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@AE_OK = common dso_local global i32 0, align 4
@ds_begin_method_execution = common dso_local global i32 0, align 4
@AE_NULL_ENTRY = common dso_local global i32 0, align 4
@ACPI_UINT8_MAX = common dso_local global i64 0, align 8
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Method reached maximum reentrancy limit (255)\00", align 1
@AE_AML_METHOD_LIMIT = common dso_local global i32 0, align 4
@ACPI_METHOD_SERIALIZED = common dso_local global i32 0, align 4
@ACPI_METHOD_IGNORE_SYNC_LEVEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"Cannot acquire Mutex for method [%4.4s], current SyncLevel is too large (%u)\00", align 1
@AE_AML_MUTEX_ORDER = common dso_local global i32 0, align 4
@ACPI_WAIT_FOREVER = common dso_local global i32 0, align 4
@acpi_method_count = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_ds_begin_method_execution(%struct.acpi_namespace_node* %0, %union.acpi_operand_object* %1, %struct.acpi_walk_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_namespace_node*, align 8
  %6 = alloca %union.acpi_operand_object*, align 8
  %7 = alloca %struct.acpi_walk_state*, align 8
  %8 = alloca i32, align 4
  store %struct.acpi_namespace_node* %0, %struct.acpi_namespace_node** %5, align 8
  store %union.acpi_operand_object* %1, %union.acpi_operand_object** %6, align 8
  store %struct.acpi_walk_state* %2, %struct.acpi_walk_state** %7, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @ds_begin_method_execution, align 4
  %11 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %struct.acpi_namespace_node* %11)
  %13 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %14 = icmp ne %struct.acpi_namespace_node* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @AE_NULL_ENTRY, align 4
  %17 = call i32 @return_ACPI_STATUS(i32 %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %20 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %21 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %22 = call i32 @acpi_ex_start_trace_method(%struct.acpi_namespace_node* %19, %union.acpi_operand_object* %20, %struct.acpi_walk_state* %21)
  %23 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %24 = bitcast %union.acpi_operand_object* %23 to %struct.TYPE_8__*
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ACPI_UINT8_MAX, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load i32, i32* @AE_INFO, align 4
  %31 = call i32 @ACPI_ERROR(i32 ptrtoint ([46 x i8]* @.str to i32))
  %32 = load i32, i32* @AE_AML_METHOD_LIMIT, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  br label %34

34:                                               ; preds = %29, %18
  %35 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %36 = bitcast %union.acpi_operand_object* %35 to %struct.TYPE_8__*
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @ACPI_METHOD_SERIALIZED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %212

42:                                               ; preds = %34
  %43 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %44 = bitcast %union.acpi_operand_object* %43 to %struct.TYPE_8__*
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = icmp ne %struct.TYPE_7__* %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %42
  %49 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %50 = call i32 @acpi_ds_create_method_mutex(%union.acpi_operand_object* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i64 @ACPI_FAILURE(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @return_ACPI_STATUS(i32 %55)
  br label %57

57:                                               ; preds = %54, %48
  br label %58

58:                                               ; preds = %57, %42
  %59 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %60 = icmp ne %struct.acpi_walk_state* %59, null
  br i1 %60, label %61, label %96

61:                                               ; preds = %58
  %62 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %63 = bitcast %union.acpi_operand_object* %62 to %struct.TYPE_8__*
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ACPI_METHOD_IGNORE_SYNC_LEVEL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %61
  %70 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %71 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %76 = bitcast %union.acpi_operand_object* %75 to %struct.TYPE_8__*
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %74, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %69
  %84 = load i32, i32* @AE_INFO, align 4
  %85 = load %struct.acpi_namespace_node*, %struct.acpi_namespace_node** %5, align 8
  %86 = call i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node* %85)
  %87 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %88 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @ACPI_ERROR(i32 %92)
  %94 = load i32, i32* @AE_AML_MUTEX_ORDER, align 4
  %95 = call i32 @return_ACPI_STATUS(i32 %94)
  br label %96

96:                                               ; preds = %83, %69, %61, %58
  %97 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %98 = icmp ne %struct.acpi_walk_state* %97, null
  br i1 %98, label %99, label %122

99:                                               ; preds = %96
  %100 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %101 = bitcast %union.acpi_operand_object* %100 to %struct.TYPE_8__*
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %99
  %109 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %110 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %115 = bitcast %union.acpi_operand_object* %114 to %struct.TYPE_8__*
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %113, %120
  br i1 %121, label %122, label %203

122:                                              ; preds = %108, %99, %96
  %123 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %124 = bitcast %union.acpi_operand_object* %123 to %struct.TYPE_8__*
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @ACPI_WAIT_FOREVER, align 4
  %131 = call i32 @acpi_ex_system_wait_mutex(i32 %129, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = call i64 @ACPI_FAILURE(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %122
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @return_ACPI_STATUS(i32 %136)
  br label %138

138:                                              ; preds = %135, %122
  %139 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %140 = icmp ne %struct.acpi_walk_state* %139, null
  br i1 %140, label %141, label %181

141:                                              ; preds = %138
  %142 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %143 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %142, i32 0, i32 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %148 = bitcast %union.acpi_operand_object* %147 to %struct.TYPE_8__*
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 2
  store i64 %146, i64* %152, align 8
  %153 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %154 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %153, i32 0, i32 0
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %159 = bitcast %union.acpi_operand_object* %158 to %struct.TYPE_8__*
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 1
  store i64 %157, i64* %163, align 8
  %164 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %165 = bitcast %union.acpi_operand_object* %164 to %struct.TYPE_8__*
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @ACPI_METHOD_IGNORE_SYNC_LEVEL, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %180, label %171

171:                                              ; preds = %141
  %172 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %173 = bitcast %union.acpi_operand_object* %172 to %struct.TYPE_8__*
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.acpi_walk_state*, %struct.acpi_walk_state** %7, align 8
  %177 = getelementptr inbounds %struct.acpi_walk_state, %struct.acpi_walk_state* %176, i32 0, i32 0
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  store i64 %175, i64* %179, align 8
  br label %180

180:                                              ; preds = %171, %141
  br label %202

181:                                              ; preds = %138
  %182 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %183 = bitcast %union.acpi_operand_object* %182 to %struct.TYPE_8__*
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %190 = bitcast %union.acpi_operand_object* %189 to %struct.TYPE_8__*
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 3
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  store i64 %188, i64* %194, align 8
  %195 = call i64 (...) @acpi_os_get_thread_id()
  %196 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %197 = bitcast %union.acpi_operand_object* %196 to %struct.TYPE_8__*
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 3
  %199 = load %struct.TYPE_7__*, %struct.TYPE_7__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store i64 %195, i64* %201, align 8
  br label %202

202:                                              ; preds = %181, %180
  br label %203

203:                                              ; preds = %202, %108
  %204 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %205 = bitcast %union.acpi_operand_object* %204 to %struct.TYPE_8__*
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  br label %212

212:                                              ; preds = %203, %34
  %213 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %214 = bitcast %union.acpi_operand_object* %213 to %struct.TYPE_8__*
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %212
  %219 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %220 = bitcast %union.acpi_operand_object* %219 to %struct.TYPE_8__*
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 4
  %222 = call i32 @acpi_ut_allocate_owner_id(i32* %221)
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %8, align 4
  %224 = call i64 @ACPI_FAILURE(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %218
  br label %238

227:                                              ; preds = %218
  br label %228

228:                                              ; preds = %227, %212
  %229 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %230 = bitcast %union.acpi_operand_object* %229 to %struct.TYPE_8__*
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = add nsw i64 %232, 1
  store i64 %233, i64* %231, align 8
  %234 = load i32, i32* @acpi_method_count, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* @acpi_method_count, align 4
  %236 = load i32, i32* %8, align 4
  %237 = call i32 @return_ACPI_STATUS(i32 %236)
  br label %238

238:                                              ; preds = %228, %226
  %239 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %240 = bitcast %union.acpi_operand_object* %239 to %struct.TYPE_8__*
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 3
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %241, align 8
  %243 = icmp ne %struct.TYPE_7__* %242, null
  br i1 %243, label %244, label %253

244:                                              ; preds = %238
  %245 = load %union.acpi_operand_object*, %union.acpi_operand_object** %6, align 8
  %246 = bitcast %union.acpi_operand_object* %245 to %struct.TYPE_8__*
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 3
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @acpi_os_release_mutex(i32 %251)
  br label %253

253:                                              ; preds = %244, %238
  %254 = load i32, i32* %8, align 4
  %255 = call i32 @return_ACPI_STATUS(i32 %254)
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.acpi_namespace_node*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @acpi_ex_start_trace_method(%struct.acpi_namespace_node*, %union.acpi_operand_object*, %struct.acpi_walk_state*) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @acpi_ds_create_method_mutex(%union.acpi_operand_object*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_ut_get_node_name(%struct.acpi_namespace_node*) #1

declare dso_local i32 @acpi_ex_system_wait_mutex(i32, i32) #1

declare dso_local i64 @acpi_os_get_thread_id(...) #1

declare dso_local i32 @acpi_ut_allocate_owner_id(i32*) #1

declare dso_local i32 @acpi_os_release_mutex(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
