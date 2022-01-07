; ModuleID = '/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-conversion.c_ecma_op_to_property_descriptor.c'
source_filename = "/home/carl/AnghaBench/jerryscript/jerry-core/ecma/operations/extr_ecma-conversion.c_ecma_op_to_property_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32*, i32 }

@ECMA_VALUE_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Expected an object.\00", align 1
@enumerable_prop_value = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_ENUMERABLE = common dso_local global i32 0, align 4
@ECMA_PROP_IS_ENUMERABLE = common dso_local global i32 0, align 4
@ECMA_PROP_NO_OPTS = common dso_local global i32 0, align 4
@ECMA_PROP_IS_ENUMERABLE_DEFINED = common dso_local global i32 0, align 4
@configurable_prop_value = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_CONFIGURABLE = common dso_local global i32 0, align 4
@ECMA_PROP_IS_CONFIGURABLE = common dso_local global i32 0, align 4
@ECMA_PROP_IS_CONFIGURABLE_DEFINED = common dso_local global i32 0, align 4
@value_prop_value = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_VALUE = common dso_local global i32 0, align 4
@ECMA_PROP_IS_VALUE_DEFINED = common dso_local global i32 0, align 4
@writable_prop_value = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_WRITABLE = common dso_local global i32 0, align 4
@ECMA_PROP_IS_WRITABLE = common dso_local global i32 0, align 4
@ECMA_PROP_IS_WRITABLE_DEFINED = common dso_local global i32 0, align 4
@get_prop_value = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Expected a function.\00", align 1
@ECMA_PROP_IS_GET_DEFINED = common dso_local global i32 0, align 4
@set_prop_value = common dso_local global i32 0, align 4
@LIT_MAGIC_STRING_SET = common dso_local global i32 0, align 4
@ECMA_PROP_IS_SET_DEFINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Accessors cannot be writable.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecma_op_to_property_descriptor(i32 %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %13 = load i32, i32* @ECMA_VALUE_EMPTY, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @ecma_is_value_object(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @ecma_raise_type_error(i32 %18)
  store i32 %19, i32* %5, align 4
  br label %303

20:                                               ; preds = %2
  %21 = load i32, i32* %3, align 4
  %22 = call i32* @ecma_get_object_from_value(i32 %21)
  store i32* %22, i32** %6, align 8
  call void (%struct.TYPE_5__*, ...) @ecma_make_empty_property_descriptor(%struct.TYPE_5__* sret %7)
  %23 = load i32, i32* @enumerable_prop_value, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @LIT_MAGIC_STRING_ENUMERABLE, align 4
  %26 = call i32 @ecma_get_magic_string(i32 %25)
  %27 = call i32 @ecma_op_object_find(i32* %24, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ECMA_TRY_CATCH(i32 %23, i32 %27, i32 %28)
  %30 = load i32, i32* @enumerable_prop_value, align 4
  %31 = call i64 @ecma_is_value_found(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %20
  %34 = load i32, i32* @enumerable_prop_value, align 4
  %35 = call i64 @ecma_op_to_boolean(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ECMA_PROP_IS_ENUMERABLE, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @ECMA_PROP_NO_OPTS, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @ECMA_PROP_IS_ENUMERABLE_DEFINED, align 4
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %43, %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %41, %20
  %50 = load i32, i32* @enumerable_prop_value, align 4
  %51 = call i32 @ECMA_FINALIZE(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ECMA_IS_VALUE_ERROR(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %88, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ecma_is_value_empty(i32 %56)
  %58 = call i32 @JERRY_ASSERT(i32 %57)
  %59 = load i32, i32* @configurable_prop_value, align 4
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @LIT_MAGIC_STRING_CONFIGURABLE, align 4
  %62 = call i32 @ecma_get_magic_string(i32 %61)
  %63 = call i32 @ecma_op_object_find(i32* %60, i32 %62)
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @ECMA_TRY_CATCH(i32 %59, i32 %63, i32 %64)
  %66 = load i32, i32* @configurable_prop_value, align 4
  %67 = call i64 @ecma_is_value_found(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %55
  %70 = load i32, i32* @configurable_prop_value, align 4
  %71 = call i64 @ecma_op_to_boolean(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @ECMA_PROP_IS_CONFIGURABLE, align 4
  br label %77

75:                                               ; preds = %69
  %76 = load i32, i32* @ECMA_PROP_NO_OPTS, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %74, %73 ], [ %76, %75 ]
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* @ECMA_PROP_IS_CONFIGURABLE_DEFINED, align 4
  %80 = load i32, i32* %9, align 4
  %81 = or i32 %79, %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %77, %55
  %86 = load i32, i32* @configurable_prop_value, align 4
  %87 = call i32 @ECMA_FINALIZE(i32 %86)
  br label %88

88:                                               ; preds = %85, %49
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @ECMA_IS_VALUE_ERROR(i32 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %117, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @ecma_is_value_empty(i32 %93)
  %95 = call i32 @JERRY_ASSERT(i32 %94)
  %96 = load i32, i32* @value_prop_value, align 4
  %97 = load i32*, i32** %6, align 8
  %98 = load i32, i32* @LIT_MAGIC_STRING_VALUE, align 4
  %99 = call i32 @ecma_get_magic_string(i32 %98)
  %100 = call i32 @ecma_op_object_find(i32* %97, i32 %99)
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @ECMA_TRY_CATCH(i32 %96, i32 %100, i32 %101)
  %103 = load i32, i32* @value_prop_value, align 4
  %104 = call i64 @ecma_is_value_found(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %92
  %107 = load i32, i32* @ECMA_PROP_IS_VALUE_DEFINED, align 4
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @value_prop_value, align 4
  %112 = call i32 @ecma_copy_value(i32 %111)
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32 %112, i32* %113, align 8
  br label %114

114:                                              ; preds = %106, %92
  %115 = load i32, i32* @value_prop_value, align 4
  %116 = call i32 @ECMA_FINALIZE(i32 %115)
  br label %117

117:                                              ; preds = %114, %88
  %118 = load i32, i32* %5, align 4
  %119 = call i32 @ECMA_IS_VALUE_ERROR(i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %154, label %121

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @ecma_is_value_empty(i32 %122)
  %124 = call i32 @JERRY_ASSERT(i32 %123)
  %125 = load i32, i32* @writable_prop_value, align 4
  %126 = load i32*, i32** %6, align 8
  %127 = load i32, i32* @LIT_MAGIC_STRING_WRITABLE, align 4
  %128 = call i32 @ecma_get_magic_string(i32 %127)
  %129 = call i32 @ecma_op_object_find(i32* %126, i32 %128)
  %130 = load i32, i32* %5, align 4
  %131 = call i32 @ECMA_TRY_CATCH(i32 %125, i32 %129, i32 %130)
  %132 = load i32, i32* @writable_prop_value, align 4
  %133 = call i64 @ecma_is_value_found(i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %121
  %136 = load i32, i32* @writable_prop_value, align 4
  %137 = call i64 @ecma_op_to_boolean(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @ECMA_PROP_IS_WRITABLE, align 4
  br label %143

141:                                              ; preds = %135
  %142 = load i32, i32* @ECMA_PROP_NO_OPTS, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* @ECMA_PROP_IS_WRITABLE_DEFINED, align 4
  %146 = load i32, i32* %10, align 4
  %147 = or i32 %145, %146
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %147
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %143, %121
  %152 = load i32, i32* @writable_prop_value, align 4
  %153 = call i32 @ECMA_FINALIZE(i32 %152)
  br label %154

154:                                              ; preds = %151, %117
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @ECMA_IS_VALUE_ERROR(i32 %155)
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %208, label %158

158:                                              ; preds = %154
  %159 = load i32, i32* %5, align 4
  %160 = call i32 @ecma_is_value_empty(i32 %159)
  %161 = call i32 @JERRY_ASSERT(i32 %160)
  %162 = load i32, i32* @get_prop_value, align 4
  %163 = load i32*, i32** %6, align 8
  %164 = load i32, i32* @LIT_MAGIC_STRING_GET, align 4
  %165 = call i32 @ecma_get_magic_string(i32 %164)
  %166 = call i32 @ecma_op_object_find(i32* %163, i32 %165)
  %167 = load i32, i32* %5, align 4
  %168 = call i32 @ECMA_TRY_CATCH(i32 %162, i32 %166, i32 %167)
  %169 = load i32, i32* @get_prop_value, align 4
  %170 = call i64 @ecma_is_value_found(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %205

172:                                              ; preds = %158
  %173 = load i32, i32* @get_prop_value, align 4
  %174 = call i32 @ecma_op_is_callable(i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %183, label %176

176:                                              ; preds = %172
  %177 = load i32, i32* @get_prop_value, align 4
  %178 = call i64 @ecma_is_value_undefined(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %176
  %181 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %182 = call i32 @ecma_raise_type_error(i32 %181)
  store i32 %182, i32* %5, align 4
  br label %204

183:                                              ; preds = %176, %172
  %184 = load i32, i32* @ECMA_PROP_IS_GET_DEFINED, align 4
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %184
  store i32 %187, i32* %185, align 8
  %188 = load i32, i32* @get_prop_value, align 4
  %189 = call i64 @ecma_is_value_undefined(i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %183
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32* null, i32** %192, align 8
  br label %203

193:                                              ; preds = %183
  %194 = load i32, i32* @get_prop_value, align 4
  %195 = call i32 @ecma_is_value_object(i32 %194)
  %196 = call i32 @JERRY_ASSERT(i32 %195)
  %197 = load i32, i32* @get_prop_value, align 4
  %198 = call i32* @ecma_get_object_from_value(i32 %197)
  store i32* %198, i32** %11, align 8
  %199 = load i32*, i32** %11, align 8
  %200 = call i32 @ecma_ref_object(i32* %199)
  %201 = load i32*, i32** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32* %201, i32** %202, align 8
  br label %203

203:                                              ; preds = %193, %191
  br label %204

204:                                              ; preds = %203, %180
  br label %205

205:                                              ; preds = %204, %158
  %206 = load i32, i32* @get_prop_value, align 4
  %207 = call i32 @ECMA_FINALIZE(i32 %206)
  br label %208

208:                                              ; preds = %205, %154
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @ECMA_IS_VALUE_ERROR(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %262, label %212

212:                                              ; preds = %208
  %213 = load i32, i32* %5, align 4
  %214 = call i32 @ecma_is_value_empty(i32 %213)
  %215 = call i32 @JERRY_ASSERT(i32 %214)
  %216 = load i32, i32* @set_prop_value, align 4
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* @LIT_MAGIC_STRING_SET, align 4
  %219 = call i32 @ecma_get_magic_string(i32 %218)
  %220 = call i32 @ecma_op_object_find(i32* %217, i32 %219)
  %221 = load i32, i32* %5, align 4
  %222 = call i32 @ECMA_TRY_CATCH(i32 %216, i32 %220, i32 %221)
  %223 = load i32, i32* @set_prop_value, align 4
  %224 = call i64 @ecma_is_value_found(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %259

226:                                              ; preds = %212
  %227 = load i32, i32* @set_prop_value, align 4
  %228 = call i32 @ecma_op_is_callable(i32 %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %237, label %230

230:                                              ; preds = %226
  %231 = load i32, i32* @set_prop_value, align 4
  %232 = call i64 @ecma_is_value_undefined(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %237, label %234

234:                                              ; preds = %230
  %235 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %236 = call i32 @ecma_raise_type_error(i32 %235)
  store i32 %236, i32* %5, align 4
  br label %258

237:                                              ; preds = %230, %226
  %238 = load i32, i32* @ECMA_PROP_IS_SET_DEFINED, align 4
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = or i32 %240, %238
  store i32 %241, i32* %239, align 8
  %242 = load i32, i32* @set_prop_value, align 4
  %243 = call i64 @ecma_is_value_undefined(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %237
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32* null, i32** %246, align 8
  br label %257

247:                                              ; preds = %237
  %248 = load i32, i32* @set_prop_value, align 4
  %249 = call i32 @ecma_is_value_object(i32 %248)
  %250 = call i32 @JERRY_ASSERT(i32 %249)
  %251 = load i32, i32* @set_prop_value, align 4
  %252 = call i32* @ecma_get_object_from_value(i32 %251)
  store i32* %252, i32** %12, align 8
  %253 = load i32*, i32** %12, align 8
  %254 = call i32 @ecma_ref_object(i32* %253)
  %255 = load i32*, i32** %12, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32* %255, i32** %256, align 8
  br label %257

257:                                              ; preds = %247, %245
  br label %258

258:                                              ; preds = %257, %234
  br label %259

259:                                              ; preds = %258, %212
  %260 = load i32, i32* @set_prop_value, align 4
  %261 = call i32 @ECMA_FINALIZE(i32 %260)
  br label %262

262:                                              ; preds = %259, %208
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @ECMA_IS_VALUE_ERROR(i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %289, label %266

266:                                              ; preds = %262
  %267 = load i32, i32* %5, align 4
  %268 = call i32 @ecma_is_value_empty(i32 %267)
  %269 = call i32 @JERRY_ASSERT(i32 %268)
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @ECMA_PROP_IS_VALUE_DEFINED, align 4
  %273 = load i32, i32* @ECMA_PROP_IS_WRITABLE_DEFINED, align 4
  %274 = or i32 %272, %273
  %275 = and i32 %271, %274
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %266
  %278 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @ECMA_PROP_IS_GET_DEFINED, align 4
  %281 = load i32, i32* @ECMA_PROP_IS_SET_DEFINED, align 4
  %282 = or i32 %280, %281
  %283 = and i32 %279, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %277
  %286 = call i32 @ECMA_ERR_MSG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %287 = call i32 @ecma_raise_type_error(i32 %286)
  store i32 %287, i32* %5, align 4
  br label %288

288:                                              ; preds = %285, %277, %266
  br label %289

289:                                              ; preds = %288, %262
  %290 = load i32, i32* %5, align 4
  %291 = call i32 @ECMA_IS_VALUE_ERROR(i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %297, label %293

293:                                              ; preds = %289
  %294 = load i32, i32* %5, align 4
  %295 = call i32 @ecma_is_value_empty(i32 %294)
  %296 = call i32 @JERRY_ASSERT(i32 %295)
  br label %299

297:                                              ; preds = %289
  %298 = call i32 @ecma_free_property_descriptor(%struct.TYPE_5__* %7)
  br label %299

299:                                              ; preds = %297, %293
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %301 = bitcast %struct.TYPE_5__* %300 to i8*
  %302 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %301, i8* align 8 %302, i64 32, i1 false)
  br label %303

303:                                              ; preds = %299, %17
  %304 = load i32, i32* %5, align 4
  ret i32 %304
}

declare dso_local i32 @ecma_is_value_object(i32) #1

declare dso_local i32 @ecma_raise_type_error(i32) #1

declare dso_local i32 @ECMA_ERR_MSG(i8*) #1

declare dso_local i32* @ecma_get_object_from_value(i32) #1

declare dso_local void @ecma_make_empty_property_descriptor(%struct.TYPE_5__* sret, ...) #1

declare dso_local i32 @ECMA_TRY_CATCH(i32, i32, i32) #1

declare dso_local i32 @ecma_op_object_find(i32*, i32) #1

declare dso_local i32 @ecma_get_magic_string(i32) #1

declare dso_local i64 @ecma_is_value_found(i32) #1

declare dso_local i64 @ecma_op_to_boolean(i32) #1

declare dso_local i32 @ECMA_FINALIZE(i32) #1

declare dso_local i32 @ECMA_IS_VALUE_ERROR(i32) #1

declare dso_local i32 @JERRY_ASSERT(i32) #1

declare dso_local i32 @ecma_is_value_empty(i32) #1

declare dso_local i32 @ecma_copy_value(i32) #1

declare dso_local i32 @ecma_op_is_callable(i32) #1

declare dso_local i64 @ecma_is_value_undefined(i32) #1

declare dso_local i32 @ecma_ref_object(i32*) #1

declare dso_local i32 @ecma_free_property_descriptor(%struct.TYPE_5__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
