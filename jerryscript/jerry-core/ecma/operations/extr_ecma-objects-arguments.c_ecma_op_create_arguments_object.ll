; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-objects-arguments.c_ecma_op_create_arguments_object.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-objects-arguments.c_ecma_op_create_arguments_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__, %struct.TYPE_18__, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32*, i32* }

@CBC_CODE_FLAGS_STRICT_MODE = common dso_local global i32 0, align 4
@CBC_CODE_FLAGS_UINT16_ARGUMENTS = common dso_local global i32 0, align 4
@ECMA_BUILTIN_ID_OBJECT_PROTOTYPE = common dso_local global i32 0, align 4
@CBC_CODE_FLAGS_MAPPED_ARGUMENTS_NEEDED = common dso_local global i32 0, align 4
@ECMA_OBJECT_TYPE_PSEUDO_ARRAY = common dso_local global i32 0, align 4
@ECMA_PSEUDO_ARRAY_ARGUMENTS = common dso_local global i32 0, align 4
@JMEM_ALIGNMENT_LOG = common dso_local global i64 0, align 8
@ECMA_VALUE_EMPTY = common dso_local global i64 0, align 8
@ECMA_OBJECT_TYPE_CLASS = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_ARGUMENTS_UL = common dso_local global i32 0, align 4
@ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_LENGTH = common dso_local global i32 0, align 4
@ECMA_PROPERTY_CONFIGURABLE_WRITABLE = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_CALLEE = common dso_local global i32 0, align 4
@ECMA_BUILTIN_ID_TYPE_ERROR_THROWER = common dso_local global i32 0, align 4
@ECMA_PROP_IS_GET_DEFINED = common dso_local global i32 0, align 4
@ECMA_PROP_IS_SET_DEFINED = common dso_local global i32 0, align 4
@ECMA_PROP_IS_ENUMERABLE_DEFINED = common dso_local global i32 0, align 4
@ECMA_PROP_IS_CONFIGURABLE_DEFINED = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_CALLER = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_ARGUMENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecma_op_create_arguments_object(i32* %0, i32* %1, i64* %2, i64 %3, %struct.TYPE_26__* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_16__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_25__*, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_25__*, align 8
  %24 = alloca %struct.TYPE_23__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_24__, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_24__, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %10, align 8
  %33 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CBC_CODE_FLAGS_STRICT_MODE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CBC_CODE_FLAGS_UINT16_ARGUMENTS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %5
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %48 = bitcast %struct.TYPE_26__* %47 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %48, %struct.TYPE_17__** %13, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %12, align 8
  br label %58

52:                                               ; preds = %5
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %54 = bitcast %struct.TYPE_26__* %53 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %14, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %12, align 8
  br label %58

58:                                               ; preds = %52, %46
  %59 = load i32, i32* @ECMA_BUILTIN_ID_OBJECT_PROTOTYPE, align 4
  %60 = call i32* @ecma_builtin_get(i32 %59)
  store i32* %60, i32** %15, align 8
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CBC_CODE_FLAGS_MAPPED_ARGUMENTS_NEEDED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %147

67:                                               ; preds = %58
  %68 = load i64, i64* %9, align 8
  %69 = icmp sgt i64 %68, 0
  br i1 %69, label %70, label %147

70:                                               ; preds = %67
  %71 = load i64, i64* %12, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %147

73:                                               ; preds = %70
  %74 = load i64, i64* %12, align 8
  %75 = mul i64 %74, 8
  store i64 %75, i64* %17, align 8
  %76 = load i32*, i32** %15, align 8
  %77 = load i64, i64* %17, align 8
  %78 = add i64 24, %77
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* @ECMA_OBJECT_TYPE_PSEUDO_ARRAY, align 4
  %81 = call i32* @ecma_create_object(i32* %76, i32 %79, i32 %80)
  store i32* %81, i32** %16, align 8
  %82 = load i32*, i32** %16, align 8
  %83 = bitcast i32* %82 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %83, %struct.TYPE_25__** %18, align 8
  %84 = load i32, i32* @ECMA_PSEUDO_ARRAY_ARGUMENTS, align 4
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 2
  store i32 %84, i32* %88, align 4
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @ECMA_SET_INTERNAL_VALUE_POINTER(i32 %94, i32* %95)
  %97 = load i64, i64* %12, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  store i64 %97, i64* %102, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %18, align 8
  %104 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %103, i64 1
  %105 = bitcast %struct.TYPE_25__* %104 to i64*
  store i64* %105, i64** %19, align 8
  %106 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %107 = bitcast %struct.TYPE_26__* %106 to i32*
  store i32* %107, i32** %20, align 8
  %108 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @JMEM_ALIGNMENT_LOG, align 8
  %112 = shl i64 %110, %111
  %113 = load i32*, i32** %20, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 %112
  store i32* %114, i32** %20, align 8
  %115 = load i64, i64* %17, align 8
  %116 = load i32*, i32** %20, align 8
  %117 = sub i64 0, %115
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %20, align 8
  %119 = load i64*, i64** %19, align 8
  %120 = load i32*, i32** %20, align 8
  %121 = load i64, i64* %17, align 8
  %122 = call i32 @memcpy(i64* %119, i32* %120, i64 %121)
  store i64 0, i64* %21, align 8
  br label %123

123:                                              ; preds = %143, %73
  %124 = load i64, i64* %21, align 8
  %125 = load i64, i64* %12, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %123
  %128 = load i64*, i64** %19, align 8
  %129 = load i64, i64* %21, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @ECMA_VALUE_EMPTY, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %127
  %135 = load i64*, i64** %19, align 8
  %136 = load i64, i64* %21, align 8
  %137 = getelementptr inbounds i64, i64* %135, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = call i32* @ecma_get_string_from_value(i64 %138)
  store i32* %139, i32** %22, align 8
  %140 = load i32*, i32** %22, align 8
  %141 = call i32 @ecma_ref_ecma_string(i32* %140)
  br label %142

142:                                              ; preds = %134, %127
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %21, align 8
  %145 = add nsw i64 %144, 1
  store i64 %145, i64* %21, align 8
  br label %123

146:                                              ; preds = %123
  br label %158

147:                                              ; preds = %70, %67, %58
  %148 = load i32*, i32** %15, align 8
  %149 = load i32, i32* @ECMA_OBJECT_TYPE_CLASS, align 4
  %150 = call i32* @ecma_create_object(i32* %148, i32 24, i32 %149)
  store i32* %150, i32** %16, align 8
  %151 = load i32*, i32** %16, align 8
  %152 = bitcast i32* %151 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %152, %struct.TYPE_25__** %23, align 8
  %153 = load i32, i32* @LIT_MAGIC_STRING_ARGUMENTS_UL, align 4
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %23, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %156, i32 0, i32 0
  store i32 %153, i32* %157, align 8
  br label %158

158:                                              ; preds = %147, %146
  store i64 0, i64* %25, align 8
  br label %159

159:                                              ; preds = %179, %158
  %160 = load i64, i64* %25, align 8
  %161 = load i64, i64* %9, align 8
  %162 = icmp slt i64 %160, %161
  br i1 %162, label %163, label %182

163:                                              ; preds = %159
  %164 = load i64, i64* %25, align 8
  %165 = call i32* @ecma_new_ecma_string_from_uint32(i64 %164)
  store i32* %165, i32** %26, align 8
  %166 = load i32*, i32** %16, align 8
  %167 = load i32*, i32** %26, align 8
  %168 = load i32, i32* @ECMA_PROPERTY_CONFIGURABLE_ENUMERABLE_WRITABLE, align 4
  %169 = call %struct.TYPE_23__* @ecma_create_named_data_property(i32* %166, i32* %167, i32 %168, i32* null)
  store %struct.TYPE_23__* %169, %struct.TYPE_23__** %24, align 8
  %170 = load i64*, i64** %8, align 8
  %171 = load i64, i64* %25, align 8
  %172 = getelementptr inbounds i64, i64* %170, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @ecma_copy_value_if_not_object(i64 %173)
  %175 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %176 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 4
  %177 = load i32*, i32** %26, align 8
  %178 = call i32 @ecma_deref_ecma_string(i32* %177)
  br label %179

179:                                              ; preds = %163
  %180 = load i64, i64* %25, align 8
  %181 = add nsw i64 %180, 1
  store i64 %181, i64* %25, align 8
  br label %159

182:                                              ; preds = %159
  %183 = load i32*, i32** %16, align 8
  %184 = load i32, i32* @LIT_MAGIC_STRING_LENGTH, align 4
  %185 = call i32* @ecma_get_magic_string(i32 %184)
  %186 = load i32, i32* @ECMA_PROPERTY_CONFIGURABLE_WRITABLE, align 4
  %187 = call %struct.TYPE_23__* @ecma_create_named_data_property(i32* %183, i32* %185, i32 %186, i32* null)
  store %struct.TYPE_23__* %187, %struct.TYPE_23__** %24, align 8
  %188 = load i64, i64* %9, align 8
  %189 = call i32 @ecma_make_uint32_value(i64 %188)
  %190 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %191 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  call void (%struct.TYPE_24__*, ...) @ecma_make_empty_property_descriptor(%struct.TYPE_24__* sret %27)
  %192 = load i32, i32* %11, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %204, label %194

194:                                              ; preds = %182
  %195 = load i32*, i32** %16, align 8
  %196 = load i32, i32* @LIT_MAGIC_STRING_CALLEE, align 4
  %197 = call i32* @ecma_get_magic_string(i32 %196)
  %198 = load i32, i32* @ECMA_PROPERTY_CONFIGURABLE_WRITABLE, align 4
  %199 = call %struct.TYPE_23__* @ecma_create_named_data_property(i32* %195, i32* %197, i32 %198, i32* null)
  store %struct.TYPE_23__* %199, %struct.TYPE_23__** %24, align 8
  %200 = load i32*, i32** %6, align 8
  %201 = call i32 @ecma_make_object_value(i32* %200)
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  br label %235

204:                                              ; preds = %182
  %205 = load i32, i32* @ECMA_BUILTIN_ID_TYPE_ERROR_THROWER, align 4
  %206 = call i32* @ecma_builtin_get(i32 %205)
  store i32* %206, i32** %28, align 8
  call void (%struct.TYPE_24__*, ...) @ecma_make_empty_property_descriptor(%struct.TYPE_24__* sret %29)
  %207 = bitcast %struct.TYPE_24__* %27 to i8*
  %208 = bitcast %struct.TYPE_24__* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %207, i8* align 8 %208, i64 24, i1 false)
  %209 = load i32, i32* @ECMA_PROP_IS_GET_DEFINED, align 4
  %210 = load i32, i32* @ECMA_PROP_IS_SET_DEFINED, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @ECMA_PROP_IS_ENUMERABLE_DEFINED, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @ECMA_PROP_IS_CONFIGURABLE_DEFINED, align 4
  %215 = or i32 %213, %214
  %216 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 0
  store i32 %215, i32* %216, align 8
  %217 = load i32*, i32** %28, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 2
  store i32* %217, i32** %218, align 8
  %219 = load i32*, i32** %28, align 8
  %220 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 1
  store i32* %219, i32** %220, align 8
  %221 = load i32*, i32** %16, align 8
  %222 = load i32, i32* @LIT_MAGIC_STRING_CALLEE, align 4
  %223 = call i32* @ecma_get_magic_string(i32 %222)
  %224 = call i64 @ecma_op_object_define_own_property(i32* %221, i32* %223, %struct.TYPE_24__* %27)
  store i64 %224, i64* %30, align 8
  %225 = load i64, i64* %30, align 8
  %226 = call i32 @ecma_is_value_true(i64 %225)
  %227 = call i32 @JERRY_ASSERT(i32 %226)
  %228 = load i32*, i32** %16, align 8
  %229 = load i32, i32* @LIT_MAGIC_STRING_CALLER, align 4
  %230 = call i32* @ecma_get_magic_string(i32 %229)
  %231 = call i64 @ecma_op_object_define_own_property(i32* %228, i32* %230, %struct.TYPE_24__* %27)
  store i64 %231, i64* %30, align 8
  %232 = load i64, i64* %30, align 8
  %233 = call i32 @ecma_is_value_true(i64 %232)
  %234 = call i32 @JERRY_ASSERT(i32 %233)
  br label %235

235:                                              ; preds = %204, %194
  %236 = load i32, i32* @LIT_MAGIC_STRING_ARGUMENTS, align 4
  %237 = call i32* @ecma_get_magic_string(i32 %236)
  store i32* %237, i32** %31, align 8
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %235
  %241 = load i32*, i32** %7, align 8
  %242 = load i32*, i32** %31, align 8
  %243 = load i32*, i32** %16, align 8
  %244 = call i32 @ecma_make_object_value(i32* %243)
  %245 = call i32 @ecma_op_create_immutable_binding(i32* %241, i32* %242, i32 %244)
  br label %261

246:                                              ; preds = %235
  %247 = load i32*, i32** %7, align 8
  %248 = load i32*, i32** %31, align 8
  %249 = call i64 @ecma_op_create_mutable_binding(i32* %247, i32* %248, i32 0)
  store i64 %249, i64* %32, align 8
  %250 = load i64, i64* %32, align 8
  %251 = call i32 @ecma_is_value_empty(i64 %250)
  %252 = call i32 @JERRY_ASSERT(i32 %251)
  %253 = load i32*, i32** %7, align 8
  %254 = load i32*, i32** %31, align 8
  %255 = load i32*, i32** %16, align 8
  %256 = call i32 @ecma_make_object_value(i32* %255)
  %257 = call i64 @ecma_op_set_mutable_binding(i32* %253, i32* %254, i32 %256, i32 0)
  store i64 %257, i64* %32, align 8
  %258 = load i64, i64* %32, align 8
  %259 = call i32 @ecma_is_value_empty(i64 %258)
  %260 = call i32 @JERRY_ASSERT(i32 %259)
  br label %261

261:                                              ; preds = %246, %240
  %262 = load i32*, i32** %16, align 8
  %263 = call i32 @ecma_deref_object(i32* %262)
  ret void
}

declare dso_local i32* @ecma_builtin_get(i32) #1

declare dso_local i32* @ecma_create_object(i32*, i32, i32) #1

declare dso_local i32 @ECMA_SET_INTERNAL_VALUE_POINTER(i32, i32*) #1

declare dso_local i32 @memcpy(i64*, i32*, i64) #1

declare dso_local i32* @ecma_get_string_from_value(i64) #1

declare dso_local i32 @ecma_ref_ecma_string(i32*) #1

declare dso_local i32* @ecma_new_ecma_string_from_uint32(i64) #1

declare dso_local %struct.TYPE_23__* @ecma_create_named_data_property(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ecma_copy_value_if_not_object(i64) #1

declare dso_local i32 @ecma_deref_ecma_string(i32*) #1

declare dso_local i32* @ecma_get_magic_string(i32) #1

declare dso_local i32 @ecma_make_uint32_value(i64) #1

declare dso_local void @ecma_make_empty_property_descriptor(%struct.TYPE_24__* sret, ...) #1

declare dso_local i32 @ecma_make_object_value(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ecma_op_object_define_own_property(i32*, i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_is_value_true(i64) #1

declare dso_local i32 @ecma_op_create_immutable_binding(i32*, i32*, i32) #1

declare dso_local i64 @ecma_op_create_mutable_binding(i32*, i32*, i32) #1

declare dso_local i32 @ecma_is_value_empty(i64) #1

declare dso_local i64 @ecma_op_set_mutable_binding(i32*, i32*, i32, i32) #1

declare dso_local i32 @ecma_deref_object(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
