; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_g_combat.c_CanDamage.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_g_combat.c_CanDamage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { double, i64 }

@vec3_origin = common dso_local global i32 0, align 4
@ENTITYNUM_NONE = common dso_local global i32 0, align 4
@MASK_SOLID = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CanDamage(%struct.TYPE_12__* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_11__, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* inttoptr (i64 -15 to i64*), i64** %9, align 8
  store i64* inttoptr (i64 15 to i64*), i64** %10, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = call i32 @VectorAdd(i32 %14, i32 %18, i64* %19)
  %21 = load i64*, i64** %8, align 8
  %22 = load i64*, i64** %8, align 8
  %23 = call i32 @VectorScale(i64* %21, double 5.000000e-01, i64* %22)
  %24 = load i64*, i64** %8, align 8
  %25 = load i64*, i64** %6, align 8
  %26 = call i32 @VectorCopy(i64* %24, i64* %25)
  %27 = load i64*, i64** %5, align 8
  %28 = load i32, i32* @vec3_origin, align 4
  %29 = load i32, i32* @vec3_origin, align 4
  %30 = load i64*, i64** %6, align 8
  %31 = load i32, i32* @ENTITYNUM_NONE, align 4
  %32 = load i32, i32* @MASK_SOLID, align 4
  %33 = call i32 @trap_Trace(%struct.TYPE_11__* %7, i64* %27, i32 %28, i32 %29, i64* %30, i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %35 = load double, double* %34, align 8
  %36 = fcmp oeq double %35, 1.000000e+00
  br i1 %36, label %45, label %37

37:                                               ; preds = %2
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37, %2
  %46 = load i32, i32* @qtrue, align 4
  store i32 %46, i32* %3, align 4
  br label %345

47:                                               ; preds = %37
  %48 = load i64*, i64** %8, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = call i32 @VectorCopy(i64* %48, i64* %49)
  %51 = load i64*, i64** %10, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, %53
  store i64 %57, i64* %55, align 8
  %58 = load i64*, i64** %10, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64*, i64** %6, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = add nsw i64 %63, %60
  store i64 %64, i64* %62, align 8
  %65 = load i64*, i64** %10, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %6, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i64*, i64** %5, align 8
  %73 = load i32, i32* @vec3_origin, align 4
  %74 = load i32, i32* @vec3_origin, align 4
  %75 = load i64*, i64** %6, align 8
  %76 = load i32, i32* @ENTITYNUM_NONE, align 4
  %77 = load i32, i32* @MASK_SOLID, align 4
  %78 = call i32 @trap_Trace(%struct.TYPE_11__* %7, i64* %72, i32 %73, i32 %74, i64* %75, i32 %76, i32 %77)
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %80 = load double, double* %79, align 8
  %81 = fcmp oeq double %80, 1.000000e+00
  br i1 %81, label %82, label %84

82:                                               ; preds = %47
  %83 = load i32, i32* @qtrue, align 4
  store i32 %83, i32* %3, align 4
  br label %345

84:                                               ; preds = %47
  %85 = load i64*, i64** %8, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = call i32 @VectorCopy(i64* %85, i64* %86)
  %88 = load i64*, i64** %10, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %6, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %6, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, %97
  store i64 %101, i64* %99, align 8
  %102 = load i64*, i64** %10, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 2
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %6, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 2
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, %104
  store i64 %108, i64* %106, align 8
  %109 = load i64*, i64** %5, align 8
  %110 = load i32, i32* @vec3_origin, align 4
  %111 = load i32, i32* @vec3_origin, align 4
  %112 = load i64*, i64** %6, align 8
  %113 = load i32, i32* @ENTITYNUM_NONE, align 4
  %114 = load i32, i32* @MASK_SOLID, align 4
  %115 = call i32 @trap_Trace(%struct.TYPE_11__* %7, i64* %109, i32 %110, i32 %111, i64* %112, i32 %113, i32 %114)
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %117 = load double, double* %116, align 8
  %118 = fcmp oeq double %117, 1.000000e+00
  br i1 %118, label %119, label %121

119:                                              ; preds = %84
  %120 = load i32, i32* @qtrue, align 4
  store i32 %120, i32* %3, align 4
  br label %345

121:                                              ; preds = %84
  %122 = load i64*, i64** %8, align 8
  %123 = load i64*, i64** %6, align 8
  %124 = call i32 @VectorCopy(i64* %122, i64* %123)
  %125 = load i64*, i64** %9, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %6, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 0
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load i64*, i64** %10, align 8
  %133 = getelementptr inbounds i64, i64* %132, i64 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64*, i64** %6, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, %134
  store i64 %138, i64* %136, align 8
  %139 = load i64*, i64** %10, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64*, i64** %6, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 2
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  %146 = load i64*, i64** %5, align 8
  %147 = load i32, i32* @vec3_origin, align 4
  %148 = load i32, i32* @vec3_origin, align 4
  %149 = load i64*, i64** %6, align 8
  %150 = load i32, i32* @ENTITYNUM_NONE, align 4
  %151 = load i32, i32* @MASK_SOLID, align 4
  %152 = call i32 @trap_Trace(%struct.TYPE_11__* %7, i64* %146, i32 %147, i32 %148, i64* %149, i32 %150, i32 %151)
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %154 = load double, double* %153, align 8
  %155 = fcmp oeq double %154, 1.000000e+00
  br i1 %155, label %156, label %158

156:                                              ; preds = %121
  %157 = load i32, i32* @qtrue, align 4
  store i32 %157, i32* %3, align 4
  br label %345

158:                                              ; preds = %121
  %159 = load i64*, i64** %8, align 8
  %160 = load i64*, i64** %6, align 8
  %161 = call i32 @VectorCopy(i64* %159, i64* %160)
  %162 = load i64*, i64** %9, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64*, i64** %6, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load i64*, i64** %9, align 8
  %170 = getelementptr inbounds i64, i64* %169, i64 1
  %171 = load i64, i64* %170, align 8
  %172 = load i64*, i64** %6, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 1
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, %171
  store i64 %175, i64* %173, align 8
  %176 = load i64*, i64** %10, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 2
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** %6, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 2
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, %178
  store i64 %182, i64* %180, align 8
  %183 = load i64*, i64** %5, align 8
  %184 = load i32, i32* @vec3_origin, align 4
  %185 = load i32, i32* @vec3_origin, align 4
  %186 = load i64*, i64** %6, align 8
  %187 = load i32, i32* @ENTITYNUM_NONE, align 4
  %188 = load i32, i32* @MASK_SOLID, align 4
  %189 = call i32 @trap_Trace(%struct.TYPE_11__* %7, i64* %183, i32 %184, i32 %185, i64* %186, i32 %187, i32 %188)
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %191 = load double, double* %190, align 8
  %192 = fcmp oeq double %191, 1.000000e+00
  br i1 %192, label %193, label %195

193:                                              ; preds = %158
  %194 = load i32, i32* @qtrue, align 4
  store i32 %194, i32* %3, align 4
  br label %345

195:                                              ; preds = %158
  %196 = load i64*, i64** %8, align 8
  %197 = load i64*, i64** %6, align 8
  %198 = call i32 @VectorCopy(i64* %196, i64* %197)
  %199 = load i64*, i64** %10, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64*, i64** %6, align 8
  %203 = getelementptr inbounds i64, i64* %202, i64 0
  %204 = load i64, i64* %203, align 8
  %205 = add nsw i64 %204, %201
  store i64 %205, i64* %203, align 8
  %206 = load i64*, i64** %10, align 8
  %207 = getelementptr inbounds i64, i64* %206, i64 1
  %208 = load i64, i64* %207, align 8
  %209 = load i64*, i64** %6, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 1
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, %208
  store i64 %212, i64* %210, align 8
  %213 = load i64*, i64** %9, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64*, i64** %6, align 8
  %217 = getelementptr inbounds i64, i64* %216, i64 2
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, %215
  store i64 %219, i64* %217, align 8
  %220 = load i64*, i64** %5, align 8
  %221 = load i32, i32* @vec3_origin, align 4
  %222 = load i32, i32* @vec3_origin, align 4
  %223 = load i64*, i64** %6, align 8
  %224 = load i32, i32* @ENTITYNUM_NONE, align 4
  %225 = load i32, i32* @MASK_SOLID, align 4
  %226 = call i32 @trap_Trace(%struct.TYPE_11__* %7, i64* %220, i32 %221, i32 %222, i64* %223, i32 %224, i32 %225)
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %228 = load double, double* %227, align 8
  %229 = fcmp oeq double %228, 1.000000e+00
  br i1 %229, label %230, label %232

230:                                              ; preds = %195
  %231 = load i32, i32* @qtrue, align 4
  store i32 %231, i32* %3, align 4
  br label %345

232:                                              ; preds = %195
  %233 = load i64*, i64** %8, align 8
  %234 = load i64*, i64** %6, align 8
  %235 = call i32 @VectorCopy(i64* %233, i64* %234)
  %236 = load i64*, i64** %10, align 8
  %237 = getelementptr inbounds i64, i64* %236, i64 0
  %238 = load i64, i64* %237, align 8
  %239 = load i64*, i64** %6, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 0
  %241 = load i64, i64* %240, align 8
  %242 = add nsw i64 %241, %238
  store i64 %242, i64* %240, align 8
  %243 = load i64*, i64** %9, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64*, i64** %6, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 1
  %248 = load i64, i64* %247, align 8
  %249 = add nsw i64 %248, %245
  store i64 %249, i64* %247, align 8
  %250 = load i64*, i64** %9, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 2
  %252 = load i64, i64* %251, align 8
  %253 = load i64*, i64** %6, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 2
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, %252
  store i64 %256, i64* %254, align 8
  %257 = load i64*, i64** %5, align 8
  %258 = load i32, i32* @vec3_origin, align 4
  %259 = load i32, i32* @vec3_origin, align 4
  %260 = load i64*, i64** %6, align 8
  %261 = load i32, i32* @ENTITYNUM_NONE, align 4
  %262 = load i32, i32* @MASK_SOLID, align 4
  %263 = call i32 @trap_Trace(%struct.TYPE_11__* %7, i64* %257, i32 %258, i32 %259, i64* %260, i32 %261, i32 %262)
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %265 = load double, double* %264, align 8
  %266 = fcmp oeq double %265, 1.000000e+00
  br i1 %266, label %267, label %269

267:                                              ; preds = %232
  %268 = load i32, i32* @qtrue, align 4
  store i32 %268, i32* %3, align 4
  br label %345

269:                                              ; preds = %232
  %270 = load i64*, i64** %8, align 8
  %271 = load i64*, i64** %6, align 8
  %272 = call i32 @VectorCopy(i64* %270, i64* %271)
  %273 = load i64*, i64** %9, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 0
  %275 = load i64, i64* %274, align 8
  %276 = load i64*, i64** %6, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 0
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, %275
  store i64 %279, i64* %277, align 8
  %280 = load i64*, i64** %10, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 1
  %282 = load i64, i64* %281, align 8
  %283 = load i64*, i64** %6, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 1
  %285 = load i64, i64* %284, align 8
  %286 = add nsw i64 %285, %282
  store i64 %286, i64* %284, align 8
  %287 = load i64*, i64** %9, align 8
  %288 = getelementptr inbounds i64, i64* %287, i64 2
  %289 = load i64, i64* %288, align 8
  %290 = load i64*, i64** %6, align 8
  %291 = getelementptr inbounds i64, i64* %290, i64 2
  %292 = load i64, i64* %291, align 8
  %293 = add nsw i64 %292, %289
  store i64 %293, i64* %291, align 8
  %294 = load i64*, i64** %5, align 8
  %295 = load i32, i32* @vec3_origin, align 4
  %296 = load i32, i32* @vec3_origin, align 4
  %297 = load i64*, i64** %6, align 8
  %298 = load i32, i32* @ENTITYNUM_NONE, align 4
  %299 = load i32, i32* @MASK_SOLID, align 4
  %300 = call i32 @trap_Trace(%struct.TYPE_11__* %7, i64* %294, i32 %295, i32 %296, i64* %297, i32 %298, i32 %299)
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %302 = load double, double* %301, align 8
  %303 = fcmp oeq double %302, 1.000000e+00
  br i1 %303, label %304, label %306

304:                                              ; preds = %269
  %305 = load i32, i32* @qtrue, align 4
  store i32 %305, i32* %3, align 4
  br label %345

306:                                              ; preds = %269
  %307 = load i64*, i64** %8, align 8
  %308 = load i64*, i64** %6, align 8
  %309 = call i32 @VectorCopy(i64* %307, i64* %308)
  %310 = load i64*, i64** %9, align 8
  %311 = getelementptr inbounds i64, i64* %310, i64 0
  %312 = load i64, i64* %311, align 8
  %313 = load i64*, i64** %6, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 0
  %315 = load i64, i64* %314, align 8
  %316 = add nsw i64 %315, %312
  store i64 %316, i64* %314, align 8
  %317 = load i64*, i64** %9, align 8
  %318 = getelementptr inbounds i64, i64* %317, i64 1
  %319 = load i64, i64* %318, align 8
  %320 = load i64*, i64** %6, align 8
  %321 = getelementptr inbounds i64, i64* %320, i64 1
  %322 = load i64, i64* %321, align 8
  %323 = add nsw i64 %322, %319
  store i64 %323, i64* %321, align 8
  %324 = load i64*, i64** %9, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 2
  %326 = load i64, i64* %325, align 8
  %327 = load i64*, i64** %6, align 8
  %328 = getelementptr inbounds i64, i64* %327, i64 2
  %329 = load i64, i64* %328, align 8
  %330 = add nsw i64 %329, %326
  store i64 %330, i64* %328, align 8
  %331 = load i64*, i64** %5, align 8
  %332 = load i32, i32* @vec3_origin, align 4
  %333 = load i32, i32* @vec3_origin, align 4
  %334 = load i64*, i64** %6, align 8
  %335 = load i32, i32* @ENTITYNUM_NONE, align 4
  %336 = load i32, i32* @MASK_SOLID, align 4
  %337 = call i32 @trap_Trace(%struct.TYPE_11__* %7, i64* %331, i32 %332, i32 %333, i64* %334, i32 %335, i32 %336)
  %338 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %339 = load double, double* %338, align 8
  %340 = fcmp oeq double %339, 1.000000e+00
  br i1 %340, label %341, label %343

341:                                              ; preds = %306
  %342 = load i32, i32* @qtrue, align 4
  store i32 %342, i32* %3, align 4
  br label %345

343:                                              ; preds = %306
  %344 = load i32, i32* @qfalse, align 4
  store i32 %344, i32* %3, align 4
  br label %345

345:                                              ; preds = %343, %341, %304, %267, %230, %193, %156, %119, %82, %45
  %346 = load i32, i32* %3, align 4
  ret i32 %346
}

declare dso_local i32 @VectorAdd(i32, i32, i64*) #1

declare dso_local i32 @VectorScale(i64*, double, i64*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @trap_Trace(%struct.TYPE_11__*, i64*, i32, i32, i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
