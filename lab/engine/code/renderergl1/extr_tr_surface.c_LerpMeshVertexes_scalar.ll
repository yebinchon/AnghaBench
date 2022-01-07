; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_surface.c_LerpMeshVertexes_scalar.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_surface.c_LerpMeshVertexes_scalar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { float**, i64, float** }
%struct.TYPE_13__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_11__ = type { float* }
%struct.TYPE_10__ = type { i32, i32 }

@tess = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@MD3_XYZ_SCALE = common dso_local global double 0.000000e+00, align 8
@FUNCTABLE_SIZE = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FUNCTABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, float)* @LerpMeshVertexes_scalar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LerpMeshVertexes_scalar(%struct.TYPE_10__* %0, float %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca float, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca float*, align 8
  %20 = alloca float*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store float %1, float* %4, align 4
  %21 = load float**, float*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 0), align 8
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 1), align 8
  %23 = getelementptr inbounds float*, float** %21, i64 %22
  %24 = load float*, float** %23, align 8
  store float* %24, float** %9, align 8
  %25 = load float**, float*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 2), align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 1), align 8
  %27 = getelementptr inbounds float*, float** %25, i64 %26
  %28 = load float*, float** %27, align 8
  store float* %28, float** %10, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = bitcast %struct.TYPE_10__* %29 to i32*
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = bitcast i32* %35 to i16*
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0), align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %40, %43
  %45 = mul nsw i32 %44, 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i16, i16* %36, i64 %46
  store i16* %47, i16** %6, align 8
  %48 = load i16*, i16** %6, align 8
  %49 = getelementptr inbounds i16, i16* %48, i64 3
  store i16* %49, i16** %8, align 8
  %50 = load double, double* @MD3_XYZ_SCALE, align 8
  %51 = load float, float* %4, align 4
  %52 = fpext float %51 to double
  %53 = fsub double 1.000000e+00, %52
  %54 = fmul double %50, %53
  %55 = fptrunc double %54 to float
  store float %55, float* %12, align 4
  %56 = load float, float* %4, align 4
  %57 = fpext float %56 to double
  %58 = fsub double 1.000000e+00, %57
  %59 = fptrunc double %58 to float
  store float %59, float* %14, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %18, align 4
  %63 = load float, float* %4, align 4
  %64 = fcmp oeq float %63, 0.000000e+00
  br i1 %64, label %65, label %172

65:                                               ; preds = %2
  store i32 0, i32* %15, align 4
  br label %66

66:                                               ; preds = %160, %65
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %18, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %171

70:                                               ; preds = %66
  %71 = load i16*, i16** %6, align 8
  %72 = getelementptr inbounds i16, i16* %71, i64 0
  %73 = load i16, i16* %72, align 2
  %74 = sext i16 %73 to i32
  %75 = sitofp i32 %74 to float
  %76 = load float, float* %12, align 4
  %77 = fmul float %75, %76
  %78 = load float*, float** %9, align 8
  %79 = getelementptr inbounds float, float* %78, i64 0
  store float %77, float* %79, align 4
  %80 = load i16*, i16** %6, align 8
  %81 = getelementptr inbounds i16, i16* %80, i64 1
  %82 = load i16, i16* %81, align 2
  %83 = sext i16 %82 to i32
  %84 = sitofp i32 %83 to float
  %85 = load float, float* %12, align 4
  %86 = fmul float %84, %85
  %87 = load float*, float** %9, align 8
  %88 = getelementptr inbounds float, float* %87, i64 1
  store float %86, float* %88, align 4
  %89 = load i16*, i16** %6, align 8
  %90 = getelementptr inbounds i16, i16* %89, i64 2
  %91 = load i16, i16* %90, align 2
  %92 = sext i16 %91 to i32
  %93 = sitofp i32 %92 to float
  %94 = load float, float* %12, align 4
  %95 = fmul float %93, %94
  %96 = load float*, float** %9, align 8
  %97 = getelementptr inbounds float, float* %96, i64 2
  store float %95, float* %97, align 4
  %98 = load i16*, i16** %8, align 8
  %99 = getelementptr inbounds i16, i16* %98, i64 0
  %100 = load i16, i16* %99, align 2
  %101 = sext i16 %100 to i32
  %102 = ashr i32 %101, 8
  %103 = and i32 %102, 255
  store i32 %103, i32* %16, align 4
  %104 = load i16*, i16** %8, align 8
  %105 = getelementptr inbounds i16, i16* %104, i64 0
  %106 = load i16, i16* %105, align 2
  %107 = sext i16 %106 to i32
  %108 = and i32 %107, 255
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %110 = sdiv i32 %109, 256
  %111 = load i32, i32* %16, align 4
  %112 = mul i32 %111, %110
  store i32 %112, i32* %16, align 4
  %113 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %114 = sdiv i32 %113, 256
  %115 = load i32, i32* %17, align 4
  %116 = mul i32 %115, %114
  store i32 %116, i32* %17, align 4
  %117 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %118 = load i32, i32* %16, align 4
  %119 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %120 = sdiv i32 %119, 4
  %121 = add i32 %118, %120
  %122 = load i32, i32* @FUNCTABLE_MASK, align 4
  %123 = and i32 %121, %122
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds float, float* %117, i64 %124
  %126 = load float, float* %125, align 4
  %127 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %128 = load i32, i32* %17, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds float, float* %127, i64 %129
  %131 = load float, float* %130, align 4
  %132 = fmul float %126, %131
  %133 = load float*, float** %10, align 8
  %134 = getelementptr inbounds float, float* %133, i64 0
  store float %132, float* %134, align 4
  %135 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %136 = load i32, i32* %16, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds float, float* %135, i64 %137
  %139 = load float, float* %138, align 4
  %140 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %141 = load i32, i32* %17, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds float, float* %140, i64 %142
  %144 = load float, float* %143, align 4
  %145 = fmul float %139, %144
  %146 = load float*, float** %10, align 8
  %147 = getelementptr inbounds float, float* %146, i64 1
  store float %145, float* %147, align 4
  %148 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %149 = load i32, i32* %17, align 4
  %150 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %151 = sdiv i32 %150, 4
  %152 = add i32 %149, %151
  %153 = load i32, i32* @FUNCTABLE_MASK, align 4
  %154 = and i32 %152, %153
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds float, float* %148, i64 %155
  %157 = load float, float* %156, align 4
  %158 = load float*, float** %10, align 8
  %159 = getelementptr inbounds float, float* %158, i64 2
  store float %157, float* %159, align 4
  br label %160

160:                                              ; preds = %70
  %161 = load i32, i32* %15, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %15, align 4
  %163 = load i16*, i16** %6, align 8
  %164 = getelementptr inbounds i16, i16* %163, i64 4
  store i16* %164, i16** %6, align 8
  %165 = load i16*, i16** %8, align 8
  %166 = getelementptr inbounds i16, i16* %165, i64 4
  store i16* %166, i16** %8, align 8
  %167 = load float*, float** %9, align 8
  %168 = getelementptr inbounds float, float* %167, i64 4
  store float* %168, float** %9, align 8
  %169 = load float*, float** %10, align 8
  %170 = getelementptr inbounds float, float* %169, i64 4
  store float* %170, float** %10, align 8
  br label %66

171:                                              ; preds = %66
  br label %434

172:                                              ; preds = %2
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %174 = bitcast %struct.TYPE_10__* %173 to i32*
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %174, i64 %178
  %180 = bitcast i32* %179 to i16*
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @backEnd, i32 0, i32 0), align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %184, %187
  %189 = mul nsw i32 %188, 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i16, i16* %180, i64 %190
  store i16* %191, i16** %5, align 8
  %192 = load i16*, i16** %5, align 8
  %193 = getelementptr inbounds i16, i16* %192, i64 3
  store i16* %193, i16** %7, align 8
  %194 = load double, double* @MD3_XYZ_SCALE, align 8
  %195 = load float, float* %4, align 4
  %196 = fpext float %195 to double
  %197 = fmul double %194, %196
  %198 = fptrunc double %197 to float
  store float %198, float* %11, align 4
  %199 = load float, float* %4, align 4
  store float %199, float* %13, align 4
  store i32 0, i32* %15, align 4
  br label %200

200:                                              ; preds = %411, %172
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* %18, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %426

204:                                              ; preds = %200
  %205 = load i16*, i16** %5, align 8
  %206 = getelementptr inbounds i16, i16* %205, i64 0
  %207 = load i16, i16* %206, align 2
  %208 = sext i16 %207 to i32
  %209 = sitofp i32 %208 to float
  %210 = load float, float* %11, align 4
  %211 = fmul float %209, %210
  %212 = load i16*, i16** %6, align 8
  %213 = getelementptr inbounds i16, i16* %212, i64 0
  %214 = load i16, i16* %213, align 2
  %215 = sext i16 %214 to i32
  %216 = sitofp i32 %215 to float
  %217 = load float, float* %12, align 4
  %218 = fmul float %216, %217
  %219 = fadd float %211, %218
  %220 = load float*, float** %9, align 8
  %221 = getelementptr inbounds float, float* %220, i64 0
  store float %219, float* %221, align 4
  %222 = load i16*, i16** %5, align 8
  %223 = getelementptr inbounds i16, i16* %222, i64 1
  %224 = load i16, i16* %223, align 2
  %225 = sext i16 %224 to i32
  %226 = sitofp i32 %225 to float
  %227 = load float, float* %11, align 4
  %228 = fmul float %226, %227
  %229 = load i16*, i16** %6, align 8
  %230 = getelementptr inbounds i16, i16* %229, i64 1
  %231 = load i16, i16* %230, align 2
  %232 = sext i16 %231 to i32
  %233 = sitofp i32 %232 to float
  %234 = load float, float* %12, align 4
  %235 = fmul float %233, %234
  %236 = fadd float %228, %235
  %237 = load float*, float** %9, align 8
  %238 = getelementptr inbounds float, float* %237, i64 1
  store float %236, float* %238, align 4
  %239 = load i16*, i16** %5, align 8
  %240 = getelementptr inbounds i16, i16* %239, i64 2
  %241 = load i16, i16* %240, align 2
  %242 = sext i16 %241 to i32
  %243 = sitofp i32 %242 to float
  %244 = load float, float* %11, align 4
  %245 = fmul float %243, %244
  %246 = load i16*, i16** %6, align 8
  %247 = getelementptr inbounds i16, i16* %246, i64 2
  %248 = load i16, i16* %247, align 2
  %249 = sext i16 %248 to i32
  %250 = sitofp i32 %249 to float
  %251 = load float, float* %12, align 4
  %252 = fmul float %250, %251
  %253 = fadd float %245, %252
  %254 = load float*, float** %9, align 8
  %255 = getelementptr inbounds float, float* %254, i64 2
  store float %253, float* %255, align 4
  %256 = load i16*, i16** %8, align 8
  %257 = getelementptr inbounds i16, i16* %256, i64 0
  %258 = load i16, i16* %257, align 2
  %259 = sext i16 %258 to i32
  %260 = ashr i32 %259, 8
  %261 = and i32 %260, 255
  store i32 %261, i32* %16, align 4
  %262 = load i16*, i16** %8, align 8
  %263 = getelementptr inbounds i16, i16* %262, i64 0
  %264 = load i16, i16* %263, align 2
  %265 = sext i16 %264 to i32
  %266 = and i32 %265, 255
  store i32 %266, i32* %17, align 4
  %267 = load i32, i32* %16, align 4
  %268 = mul i32 %267, 4
  store i32 %268, i32* %16, align 4
  %269 = load i32, i32* %17, align 4
  %270 = mul i32 %269, 4
  store i32 %270, i32* %17, align 4
  %271 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %272 = load i32, i32* %16, align 4
  %273 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %274 = sdiv i32 %273, 4
  %275 = add i32 %272, %274
  %276 = load i32, i32* @FUNCTABLE_MASK, align 4
  %277 = and i32 %275, %276
  %278 = zext i32 %277 to i64
  %279 = getelementptr inbounds float, float* %271, i64 %278
  %280 = load float, float* %279, align 4
  %281 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %282 = load i32, i32* %17, align 4
  %283 = zext i32 %282 to i64
  %284 = getelementptr inbounds float, float* %281, i64 %283
  %285 = load float, float* %284, align 4
  %286 = fmul float %280, %285
  %287 = load float*, float** %20, align 8
  %288 = getelementptr inbounds float, float* %287, i64 0
  store float %286, float* %288, align 4
  %289 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %290 = load i32, i32* %16, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %289, i64 %291
  %293 = load float, float* %292, align 4
  %294 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %295 = load i32, i32* %17, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds float, float* %294, i64 %296
  %298 = load float, float* %297, align 4
  %299 = fmul float %293, %298
  %300 = load float*, float** %20, align 8
  %301 = getelementptr inbounds float, float* %300, i64 1
  store float %299, float* %301, align 4
  %302 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %305 = sdiv i32 %304, 4
  %306 = add i32 %303, %305
  %307 = load i32, i32* @FUNCTABLE_MASK, align 4
  %308 = and i32 %306, %307
  %309 = zext i32 %308 to i64
  %310 = getelementptr inbounds float, float* %302, i64 %309
  %311 = load float, float* %310, align 4
  %312 = load float*, float** %20, align 8
  %313 = getelementptr inbounds float, float* %312, i64 2
  store float %311, float* %313, align 4
  %314 = load i16*, i16** %7, align 8
  %315 = getelementptr inbounds i16, i16* %314, i64 0
  %316 = load i16, i16* %315, align 2
  %317 = sext i16 %316 to i32
  %318 = ashr i32 %317, 8
  %319 = and i32 %318, 255
  store i32 %319, i32* %16, align 4
  %320 = load i16*, i16** %7, align 8
  %321 = getelementptr inbounds i16, i16* %320, i64 0
  %322 = load i16, i16* %321, align 2
  %323 = sext i16 %322 to i32
  %324 = and i32 %323, 255
  store i32 %324, i32* %17, align 4
  %325 = load i32, i32* %16, align 4
  %326 = mul i32 %325, 4
  store i32 %326, i32* %16, align 4
  %327 = load i32, i32* %17, align 4
  %328 = mul i32 %327, 4
  store i32 %328, i32* %17, align 4
  %329 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %330 = load i32, i32* %16, align 4
  %331 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %332 = sdiv i32 %331, 4
  %333 = add i32 %330, %332
  %334 = load i32, i32* @FUNCTABLE_MASK, align 4
  %335 = and i32 %333, %334
  %336 = zext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %329, i64 %336
  %338 = load float, float* %337, align 4
  %339 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %340 = load i32, i32* %17, align 4
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds float, float* %339, i64 %341
  %343 = load float, float* %342, align 4
  %344 = fmul float %338, %343
  %345 = load float*, float** %19, align 8
  %346 = getelementptr inbounds float, float* %345, i64 0
  store float %344, float* %346, align 4
  %347 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %348 = load i32, i32* %16, align 4
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds float, float* %347, i64 %349
  %351 = load float, float* %350, align 4
  %352 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %353 = load i32, i32* %17, align 4
  %354 = zext i32 %353 to i64
  %355 = getelementptr inbounds float, float* %352, i64 %354
  %356 = load float, float* %355, align 4
  %357 = fmul float %351, %356
  %358 = load float*, float** %19, align 8
  %359 = getelementptr inbounds float, float* %358, i64 1
  store float %357, float* %359, align 4
  %360 = load float*, float** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @tr, i32 0, i32 0), align 8
  %361 = load i32, i32* %17, align 4
  %362 = load i32, i32* @FUNCTABLE_SIZE, align 4
  %363 = sdiv i32 %362, 4
  %364 = add i32 %361, %363
  %365 = load i32, i32* @FUNCTABLE_MASK, align 4
  %366 = and i32 %364, %365
  %367 = zext i32 %366 to i64
  %368 = getelementptr inbounds float, float* %360, i64 %367
  %369 = load float, float* %368, align 4
  %370 = load float*, float** %19, align 8
  %371 = getelementptr inbounds float, float* %370, i64 2
  store float %369, float* %371, align 4
  %372 = load float*, float** %19, align 8
  %373 = getelementptr inbounds float, float* %372, i64 0
  %374 = load float, float* %373, align 4
  %375 = load float, float* %13, align 4
  %376 = fmul float %374, %375
  %377 = load float*, float** %20, align 8
  %378 = getelementptr inbounds float, float* %377, i64 0
  %379 = load float, float* %378, align 4
  %380 = load float, float* %14, align 4
  %381 = fmul float %379, %380
  %382 = fadd float %376, %381
  %383 = load float*, float** %10, align 8
  %384 = getelementptr inbounds float, float* %383, i64 0
  store float %382, float* %384, align 4
  %385 = load float*, float** %19, align 8
  %386 = getelementptr inbounds float, float* %385, i64 1
  %387 = load float, float* %386, align 4
  %388 = load float, float* %13, align 4
  %389 = fmul float %387, %388
  %390 = load float*, float** %20, align 8
  %391 = getelementptr inbounds float, float* %390, i64 1
  %392 = load float, float* %391, align 4
  %393 = load float, float* %14, align 4
  %394 = fmul float %392, %393
  %395 = fadd float %389, %394
  %396 = load float*, float** %10, align 8
  %397 = getelementptr inbounds float, float* %396, i64 1
  store float %395, float* %397, align 4
  %398 = load float*, float** %19, align 8
  %399 = getelementptr inbounds float, float* %398, i64 2
  %400 = load float, float* %399, align 4
  %401 = load float, float* %13, align 4
  %402 = fmul float %400, %401
  %403 = load float*, float** %20, align 8
  %404 = getelementptr inbounds float, float* %403, i64 2
  %405 = load float, float* %404, align 4
  %406 = load float, float* %14, align 4
  %407 = fmul float %405, %406
  %408 = fadd float %402, %407
  %409 = load float*, float** %10, align 8
  %410 = getelementptr inbounds float, float* %409, i64 2
  store float %408, float* %410, align 4
  br label %411

411:                                              ; preds = %204
  %412 = load i32, i32* %15, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %15, align 4
  %414 = load i16*, i16** %5, align 8
  %415 = getelementptr inbounds i16, i16* %414, i64 4
  store i16* %415, i16** %5, align 8
  %416 = load i16*, i16** %6, align 8
  %417 = getelementptr inbounds i16, i16* %416, i64 4
  store i16* %417, i16** %6, align 8
  %418 = load i16*, i16** %7, align 8
  %419 = getelementptr inbounds i16, i16* %418, i64 4
  store i16* %419, i16** %7, align 8
  %420 = load i16*, i16** %8, align 8
  %421 = getelementptr inbounds i16, i16* %420, i64 4
  store i16* %421, i16** %8, align 8
  %422 = load float*, float** %9, align 8
  %423 = getelementptr inbounds float, float* %422, i64 4
  store float* %423, float** %9, align 8
  %424 = load float*, float** %10, align 8
  %425 = getelementptr inbounds float, float* %424, i64 4
  store float* %425, float** %10, align 8
  br label %200

426:                                              ; preds = %200
  %427 = load float**, float*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 2), align 8
  %428 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tess, i32 0, i32 1), align 8
  %429 = getelementptr inbounds float*, float** %427, i64 %428
  %430 = load float*, float** %429, align 8
  %431 = bitcast float* %430 to i32*
  %432 = load i32, i32* %18, align 4
  %433 = call i32 @VectorArrayNormalize(i32* %431, i32 %432)
  br label %434

434:                                              ; preds = %426, %171
  ret void
}

declare dso_local i32 @VectorArrayNormalize(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
