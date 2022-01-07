; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_LightContributionToSample.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_LightContributionToSample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32, i64, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, float, i64, float, float, float, float, float, float, float, i32, i32, i32, i32, i32 }

@LIGHT_SURFACES = common dso_local global i32 0, align 4
@EMIT_SUN = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@EMIT_AREA = common dso_local global i64 0, align 8
@LIGHT_TWOSIDED = common dso_local global i32 0, align 4
@faster = common dso_local global i64 0, align 8
@EMIT_POINT = common dso_local global i64 0, align 8
@EMIT_SPOT = common dso_local global i64 0, align 8
@LIGHT_ATTEN_ANGLE = common dso_local global i32 0, align 4
@LIGHT_ATTEN_LINEAR = common dso_local global i32 0, align 4
@linearScale = common dso_local global float 0.000000e+00, align 4
@qtrue = common dso_local global i64 0, align 8
@C_SKY = common dso_local global i32 0, align 4
@LIGHT_FAST_ACTUAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LightContributionToSample(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %4, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @VectorClear(i32 %21)
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LIGHT_SURFACES, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load float, float* %31, align 4
  %33 = fcmp ole float %32, 0.000000e+00
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %1
  store i32 0, i32* %2, align 4
  br label %589

35:                                               ; preds = %29
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EMIT_SUN, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @qfalse, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 4
  %54 = call float @DotProduct(i32 %50, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = call float @DotProduct(i32 %57, i32 %60)
  %62 = fsub float %54, %61
  %63 = fcmp olt float %62, 0.000000e+00
  br i1 %63, label %64, label %65

64:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %589

65:                                               ; preds = %47
  br label %66

66:                                               ; preds = %65, %41
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 13
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ClusterVisible(i32 %69, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %589

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %35
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @EMIT_AREA, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %281

83:                                               ; preds = %77
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 11
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 4
  %90 = call float @DotProduct(i32 %86, i32 %89)
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 3
  %93 = load float, float* %92, align 8
  %94 = fsub float %90, %93
  store float %94, float* %9, align 4
  %95 = load float, float* %9, align 4
  %96 = fcmp olt float %95, 3.000000e+00
  br i1 %96, label %97, label %122

97:                                               ; preds = %83
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @LIGHT_TWOSIDED, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %97
  %105 = load float, float* %9, align 4
  %106 = fcmp olt float %105, -1.000000e+00
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 0, i32* %2, align 4
  br label %589

108:                                              ; preds = %104, %97
  %109 = load float, float* %9, align 4
  %110 = fcmp ogt float %109, -3.000000e+00
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 9
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 12
  %117 = load i32, i32* %116, align 4
  %118 = call float @DotProduct(i32 %114, i32 %117)
  %119 = fcmp ogt float %118, 0x3FECCCCCC0000000
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %589

121:                                              ; preds = %111, %108
  br label %122

122:                                              ; preds = %121, %83
  %123 = load float, float* %9, align 4
  %124 = fcmp ogt float %123, -8.000000e+00
  br i1 %124, label %125, label %139

125:                                              ; preds = %122
  %126 = load float, float* %9, align 4
  %127 = fcmp olt float %126, 8.000000e+00
  br i1 %127, label %128, label %139

128:                                              ; preds = %125
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 11
  %131 = load i32, i32* %130, align 4
  %132 = load float, float* %9, align 4
  %133 = fsub float 8.000000e+00, %132
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 12
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @VectorMA(i32 %131, float %133, i32 %136, i32 %137)
  br label %145

139:                                              ; preds = %125, %122
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 11
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @VectorCopy(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %139, %128
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 10
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @VectorCopy(i32 %148, i32 %151)
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %154 = call float @SetupTrace(%struct.TYPE_6__* %153)
  store float %154, float* %7, align 4
  %155 = load float, float* %7, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load float, float* %157, align 4
  %159 = fcmp oge float %155, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %145
  store i32 0, i32* %2, align 4
  br label %589

161:                                              ; preds = %145
  %162 = load i64, i64* @faster, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %222

164:                                              ; preds = %161
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 9
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = call float @DotProduct(i32 %167, i32 %170)
  store float %171, float* %5, align 4
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %164
  %177 = load float, float* %5, align 4
  %178 = call float @fabs(float %177)
  store float %178, float* %5, align 4
  br label %179

179:                                              ; preds = %176, %164
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 12
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 8
  %186 = call float @DotProduct(i32 %182, i32 %185)
  %187 = fneg float %186
  %188 = load float, float* %5, align 4
  %189 = fmul float %188, %187
  store float %189, float* %5, align 4
  %190 = load float, float* %5, align 4
  %191 = fcmp oeq float %190, 0.000000e+00
  br i1 %191, label %192, label %193

192:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %589

193:                                              ; preds = %179
  %194 = load float, float* %5, align 4
  %195 = fcmp olt float %194, 0.000000e+00
  br i1 %195, label %196, label %211

196:                                              ; preds = %193
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %208, label %201

201:                                              ; preds = %196
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @LIGHT_TWOSIDED, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %201, %196
  %209 = load float, float* %5, align 4
  %210 = fneg float %209
  store float %210, float* %5, align 4
  br label %211

211:                                              ; preds = %208, %201, %193
  br label %212

212:                                              ; preds = %211
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 4
  %215 = load float, float* %214, align 4
  %216 = load float, float* %7, align 4
  %217 = load float, float* %7, align 4
  %218 = fmul float %216, %217
  %219 = fdiv float %215, %218
  %220 = load float, float* %5, align 4
  %221 = fmul float %219, %220
  store float %221, float* %6, align 4
  br label %280

222:                                              ; preds = %161
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 9
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 13
  %229 = load i32, i32* %228, align 8
  %230 = call float @PointToPolygonFormFactor(i32 %223, i32 %226, i32 %229)
  store float %230, float* %8, align 4
  %231 = load float, float* %8, align 4
  %232 = fcmp oeq float %231, 0.000000e+00
  br i1 %232, label %233, label %234

233:                                              ; preds = %222
  store i32 0, i32* %2, align 4
  br label %589

234:                                              ; preds = %222
  %235 = load float, float* %8, align 4
  %236 = fcmp olt float %235, 0.000000e+00
  br i1 %236, label %237, label %273

237:                                              ; preds = %234
  %238 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %249, label %242

242:                                              ; preds = %237
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load i32, i32* @LIGHT_TWOSIDED, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %271

249:                                              ; preds = %242, %237
  %250 = load float, float* %8, align 4
  %251 = fneg float %250
  store float %251, float* %8, align 4
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 11
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 12
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 10
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @VectorMA(i32 %254, float -2.000000e+00, i32 %257, i32 %260)
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %263 = call float @SetupTrace(%struct.TYPE_6__* %262)
  store float %263, float* %7, align 4
  %264 = load float, float* %7, align 4
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  %267 = load float, float* %266, align 4
  %268 = fcmp oge float %264, %267
  br i1 %268, label %269, label %270

269:                                              ; preds = %249
  store i32 0, i32* %2, align 4
  br label %589

270:                                              ; preds = %249
  br label %272

271:                                              ; preds = %242
  store i32 0, i32* %2, align 4
  br label %589

272:                                              ; preds = %270
  br label %273

273:                                              ; preds = %272, %234
  br label %274

274:                                              ; preds = %273
  %275 = load float, float* %8, align 4
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 5
  %278 = load float, float* %277, align 8
  %279 = fmul float %275, %278
  store float %279, float* %6, align 4
  br label %280

280:                                              ; preds = %274, %212
  br label %543

281:                                              ; preds = %77
  %282 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load i64, i64* @EMIT_POINT, align 8
  %286 = icmp eq i64 %284, %285
  br i1 %286, label %293, label %287

287:                                              ; preds = %281
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @EMIT_SPOT, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %447

293:                                              ; preds = %287, %281
  %294 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %294, i32 0, i32 11
  %296 = load i32, i32* %295, align 8
  %297 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %297, i32 0, i32 10
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @VectorCopy(i32 %296, i32 %299)
  %301 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %302 = call float @SetupTrace(%struct.TYPE_6__* %301)
  store float %302, float* %7, align 4
  %303 = load float, float* %7, align 4
  %304 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %304, i32 0, i32 1
  %306 = load float, float* %305, align 4
  %307 = fcmp oge float %303, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %293
  store i32 0, i32* %2, align 4
  br label %589

309:                                              ; preds = %293
  %310 = load float, float* %7, align 4
  %311 = fcmp olt float %310, 1.600000e+01
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  store float 1.600000e+01, float* %7, align 4
  br label %313

313:                                              ; preds = %312, %309
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @LIGHT_ATTEN_ANGLE, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %328

320:                                              ; preds = %313
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i32 0, i32 9
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 8
  %326 = load i32, i32* %325, align 8
  %327 = call float @DotProduct(i32 %323, i32 %326)
  br label %329

328:                                              ; preds = %313
  br label %329

329:                                              ; preds = %328, %320
  %330 = phi float [ %327, %320 ], [ 1.000000e+00, %328 ]
  store float %330, float* %5, align 4
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 6
  %333 = load float, float* %332, align 4
  %334 = fcmp une float %333, 0.000000e+00
  br i1 %334, label %335, label %345

335:                                              ; preds = %329
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %337 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %336, i32 0, i32 6
  %338 = load float, float* %337, align 4
  %339 = load float, float* %5, align 4
  %340 = fdiv float %339, %338
  store float %340, float* %5, align 4
  %341 = load float, float* %5, align 4
  %342 = fcmp ogt float %341, 1.000000e+00
  br i1 %342, label %343, label %344

343:                                              ; preds = %335
  store float 1.000000e+00, float* %5, align 4
  br label %344

344:                                              ; preds = %343, %335
  br label %345

345:                                              ; preds = %344, %329
  %346 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %347 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %345
  %351 = load float, float* %5, align 4
  %352 = call float @fabs(float %351)
  store float %352, float* %5, align 4
  br label %353

353:                                              ; preds = %350, %345
  %354 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %355 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* @LIGHT_ATTEN_LINEAR, align 4
  %358 = and i32 %356, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %378

360:                                              ; preds = %353
  %361 = load float, float* %5, align 4
  %362 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %362, i32 0, i32 4
  %364 = load float, float* %363, align 4
  %365 = fmul float %361, %364
  %366 = load float, float* @linearScale, align 4
  %367 = fmul float %365, %366
  %368 = load float, float* %7, align 4
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 7
  %371 = load float, float* %370, align 8
  %372 = fmul float %368, %371
  %373 = fsub float %367, %372
  store float %373, float* %6, align 4
  %374 = load float, float* %6, align 4
  %375 = fcmp olt float %374, 0.000000e+00
  br i1 %375, label %376, label %377

376:                                              ; preds = %360
  store float 0.000000e+00, float* %6, align 4
  br label %377

377:                                              ; preds = %376, %360
  br label %388

378:                                              ; preds = %353
  %379 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %379, i32 0, i32 4
  %381 = load float, float* %380, align 4
  %382 = load float, float* %7, align 4
  %383 = load float, float* %7, align 4
  %384 = fmul float %382, %383
  %385 = fdiv float %381, %384
  %386 = load float, float* %5, align 4
  %387 = fmul float %385, %386
  store float %387, float* %6, align 4
  br label %388

388:                                              ; preds = %378, %377
  %389 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %389, i32 0, i32 2
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @EMIT_SPOT, align 8
  %393 = icmp eq i64 %391, %392
  br i1 %393, label %394, label %446

394:                                              ; preds = %388
  %395 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %395, i32 0, i32 12
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %398, i32 0, i32 12
  %400 = load i32, i32* %399, align 4
  %401 = call float @DotProduct(i32 %397, i32 %400)
  %402 = fneg float %401
  store float %402, float* %11, align 4
  %403 = load float, float* %11, align 4
  %404 = fcmp olt float %403, 0.000000e+00
  br i1 %404, label %405, label %406

405:                                              ; preds = %394
  store i32 0, i32* %2, align 4
  br label %589

406:                                              ; preds = %394
  %407 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 11
  %409 = load i32, i32* %408, align 8
  %410 = load float, float* %11, align 4
  %411 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %412 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %411, i32 0, i32 12
  %413 = load i32, i32* %412, align 4
  %414 = load i32, i32* %14, align 4
  %415 = call i32 @VectorMA(i32 %409, float %410, i32 %413, i32 %414)
  %416 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 8
  %418 = load float, float* %417, align 4
  %419 = load float, float* %11, align 4
  %420 = fmul float %418, %419
  store float %420, float* %12, align 4
  %421 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %422 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %421, i32 0, i32 11
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* %14, align 4
  %425 = load i32, i32* %15, align 4
  %426 = call i32 @VectorSubtract(i32 %423, i32 %424, i32 %425)
  %427 = load i32, i32* %15, align 4
  %428 = call float @VectorLength(i32 %427)
  store float %428, float* %13, align 4
  %429 = load float, float* %13, align 4
  %430 = load float, float* %12, align 4
  %431 = fcmp oge float %429, %430
  br i1 %431, label %432, label %433

432:                                              ; preds = %406
  store i32 0, i32* %2, align 4
  br label %589

433:                                              ; preds = %406
  %434 = load float, float* %13, align 4
  %435 = load float, float* %12, align 4
  %436 = fsub float %435, 3.200000e+01
  %437 = fcmp ogt float %434, %436
  br i1 %437, label %438, label %445

438:                                              ; preds = %433
  %439 = load float, float* %12, align 4
  %440 = load float, float* %13, align 4
  %441 = fsub float %439, %440
  %442 = fdiv float %441, 3.200000e+01
  %443 = load float, float* %6, align 4
  %444 = fmul float %443, %442
  store float %444, float* %6, align 4
  br label %445

445:                                              ; preds = %438, %433
  br label %446

446:                                              ; preds = %445, %388
  br label %542

447:                                              ; preds = %287
  %448 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %449 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %448, i32 0, i32 2
  %450 = load i64, i64* %449, align 8
  %451 = load i64, i64* @EMIT_SUN, align 8
  %452 = icmp eq i64 %450, %451
  br i1 %452, label %453, label %541

453:                                              ; preds = %447
  %454 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %455 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %454, i32 0, i32 11
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %457, i32 0, i32 11
  %459 = load i32, i32* %458, align 8
  %460 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %461 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %460, i32 0, i32 10
  %462 = load i32, i32* %461, align 8
  %463 = call i32 @VectorAdd(i32 %456, i32 %459, i32 %462)
  %464 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %465 = call float @SetupTrace(%struct.TYPE_6__* %464)
  store float %465, float* %7, align 4
  %466 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %467 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %466, i32 0, i32 0
  %468 = load i32, i32* %467, align 8
  %469 = load i32, i32* @LIGHT_ATTEN_ANGLE, align 4
  %470 = and i32 %468, %469
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %480

472:                                              ; preds = %453
  %473 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %474 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %473, i32 0, i32 9
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %476, i32 0, i32 8
  %478 = load i32, i32* %477, align 8
  %479 = call float @DotProduct(i32 %475, i32 %478)
  br label %481

480:                                              ; preds = %453
  br label %481

481:                                              ; preds = %480, %472
  %482 = phi float [ %479, %472 ], [ 1.000000e+00, %480 ]
  store float %482, float* %5, align 4
  %483 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %483, i32 0, i32 0
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %490

487:                                              ; preds = %481
  %488 = load float, float* %5, align 4
  %489 = call float @fabs(float %488)
  store float %489, float* %5, align 4
  br label %490

490:                                              ; preds = %487, %481
  %491 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %492 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %491, i32 0, i32 4
  %493 = load float, float* %492, align 4
  %494 = load float, float* %5, align 4
  %495 = fmul float %493, %494
  store float %495, float* %6, align 4
  %496 = load float, float* %6, align 4
  %497 = fcmp ole float %496, 0.000000e+00
  br i1 %497, label %498, label %499

498:                                              ; preds = %490
  store i32 0, i32* %2, align 4
  br label %589

499:                                              ; preds = %490
  %500 = load i64, i64* @qtrue, align 8
  %501 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %502 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %501, i32 0, i32 5
  store i64 %500, i64* %502, align 8
  %503 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %504 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %503, i32 0, i32 10
  %505 = load i32, i32* %504, align 4
  %506 = load float, float* %6, align 4
  %507 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %508 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %507, i32 0, i32 2
  %509 = load i32, i32* %508, align 4
  %510 = call i32 @VectorScale(i32 %505, float %506, i32 %509)
  %511 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %512 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %511, i32 0, i32 7
  %513 = load i64, i64* %512, align 8
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %540

515:                                              ; preds = %499
  %516 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %517 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %516, i32 0, i32 6
  %518 = load i32, i32* %517, align 8
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %540, label %520

520:                                              ; preds = %515
  %521 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %522 = call i32 @TraceLine(%struct.TYPE_6__* %521)
  %523 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %523, i32 0, i32 1
  %525 = load i32, i32* %524, align 8
  %526 = load i32, i32* @C_SKY, align 4
  %527 = and i32 %525, %526
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %534

529:                                              ; preds = %520
  %530 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %530, i32 0, i32 3
  %532 = load i64, i64* %531, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %539

534:                                              ; preds = %529, %520
  %535 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %536 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %535, i32 0, i32 2
  %537 = load i32, i32* %536, align 4
  %538 = call i32 @VectorClear(i32 %537)
  store i32 -1, i32* %2, align 4
  br label %589

539:                                              ; preds = %529
  br label %540

540:                                              ; preds = %539, %515, %499
  store i32 1, i32* %2, align 4
  br label %589

541:                                              ; preds = %447
  store i32 -1, i32* %2, align 4
  br label %589

542:                                              ; preds = %446
  br label %543

543:                                              ; preds = %542, %280
  %544 = load float, float* %6, align 4
  %545 = fcmp ole float %544, 0.000000e+00
  br i1 %545, label %559, label %546

546:                                              ; preds = %543
  %547 = load float, float* %6, align 4
  %548 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %549 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %548, i32 0, i32 9
  %550 = load float, float* %549, align 8
  %551 = fcmp ole float %547, %550
  br i1 %551, label %552, label %560

552:                                              ; preds = %546
  %553 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %554 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %553, i32 0, i32 0
  %555 = load i32, i32* %554, align 8
  %556 = load i32, i32* @LIGHT_FAST_ACTUAL, align 4
  %557 = and i32 %555, %556
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %560

559:                                              ; preds = %552, %543
  store i32 0, i32* %2, align 4
  br label %589

560:                                              ; preds = %552, %546
  %561 = load i64, i64* @qfalse, align 8
  %562 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %563 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %562, i32 0, i32 5
  store i64 %561, i64* %563, align 8
  %564 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %565 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %564, i32 0, i32 10
  %566 = load i32, i32* %565, align 4
  %567 = load float, float* %6, align 4
  %568 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %569 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %568, i32 0, i32 2
  %570 = load i32, i32* %569, align 4
  %571 = call i32 @VectorScale(i32 %566, float %567, i32 %570)
  %572 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %573 = call i32 @TraceLine(%struct.TYPE_6__* %572)
  %574 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %574, i32 0, i32 4
  %576 = load i64, i64* %575, align 8
  %577 = icmp ne i64 %576, 0
  br i1 %577, label %583, label %578

578:                                              ; preds = %560
  %579 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %580 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %579, i32 0, i32 3
  %581 = load i64, i64* %580, align 8
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %588

583:                                              ; preds = %578, %560
  %584 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %585 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %584, i32 0, i32 2
  %586 = load i32, i32* %585, align 4
  %587 = call i32 @VectorClear(i32 %586)
  store i32 -1, i32* %2, align 4
  br label %589

588:                                              ; preds = %578
  store i32 1, i32* %2, align 4
  br label %589

589:                                              ; preds = %588, %583, %559, %541, %540, %534, %498, %432, %405, %308, %271, %269, %233, %192, %160, %120, %107, %75, %64, %34
  %590 = load i32, i32* %2, align 4
  ret i32 %590
}

declare dso_local i32 @VectorClear(i32) #1

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local i32 @ClusterVisible(i32, i32) #1

declare dso_local i32 @VectorMA(i32, float, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local float @SetupTrace(%struct.TYPE_6__*) #1

declare dso_local float @fabs(float) #1

declare dso_local float @PointToPolygonFormFactor(i32, i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local i32 @TraceLine(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
