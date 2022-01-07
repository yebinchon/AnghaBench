; ModuleID = '/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotEntityVisible.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/game/extr_ai_dmq3.c_BotEntityVisible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i64* }
%struct.TYPE_6__ = type { i64*, i64*, i64*, i32 }

@CONTENTS_FOG = common dso_local global i32 0, align 4
@CONTENTS_LAVA = common dso_local global i32 0, align 4
@CONTENTS_SLIME = common dso_local global i32 0, align 4
@CONTENTS_WATER = common dso_local global i32 0, align 4
@CONTENTS_SOLID = common dso_local global i32 0, align 4
@CONTENTS_PLAYERCLIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @BotEntityVisible(i32 %0, i64* %1, i64* %2, float %3, i32 %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float, align 4
  %24 = alloca %struct.TYPE_5__, align 8
  %25 = alloca %struct.TYPE_6__, align 8
  %26 = alloca i64*, align 8
  %27 = alloca i64*, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i64*, align 8
  store i32 %0, i32* %7, align 4
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store float %3, float* %10, align 4
  store i32 %4, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @BotEntityInfo(i32 %31, %struct.TYPE_6__* %25)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %5
  store float 0.000000e+00, float* %6, align 4
  br label %304

37:                                               ; preds = %5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = load i64*, i64** %30, align 8
  %43 = call i32 @VectorAdd(i64* %39, i64* %41, i64* %42)
  %44 = load i64*, i64** %30, align 8
  %45 = load i64*, i64** %30, align 8
  %46 = call i32 @VectorScale(i64* %44, double 5.000000e-01, i64* %45)
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i64*, i64** %30, align 8
  %50 = load i64*, i64** %30, align 8
  %51 = call i32 @VectorAdd(i64* %48, i64* %49, i64* %50)
  %52 = load i64*, i64** %30, align 8
  %53 = load i64*, i64** %8, align 8
  %54 = load i64*, i64** %26, align 8
  %55 = call i32 @VectorSubtract(i64* %52, i64* %53, i64* %54)
  %56 = load i64*, i64** %26, align 8
  %57 = load i64*, i64** %27, align 8
  %58 = call i32 @vectoangles(i64* %56, i64* %57)
  %59 = load i64*, i64** %9, align 8
  %60 = load float, float* %10, align 4
  %61 = load i64*, i64** %27, align 8
  %62 = call i32 @InFieldOfVision(i64* %59, float %60, i64* %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %37
  store float 0.000000e+00, float* %6, align 4
  br label %304

65:                                               ; preds = %37
  %66 = load i64*, i64** %8, align 8
  %67 = call i32 @trap_AAS_PointContents(i64* %66)
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %19, align 4
  %69 = load i32, i32* @CONTENTS_FOG, align 4
  %70 = and i32 %68, %69
  store i32 %70, i32* %16, align 4
  %71 = load i32, i32* %19, align 4
  %72 = load i32, i32* @CONTENTS_LAVA, align 4
  %73 = load i32, i32* @CONTENTS_SLIME, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @CONTENTS_WATER, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %71, %76
  store i32 %77, i32* %17, align 4
  store float 0.000000e+00, float* %23, align 4
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %299, %65
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 3
  br i1 %80, label %81, label %302

81:                                               ; preds = %78
  %82 = load i32, i32* @CONTENTS_SOLID, align 4
  %83 = load i32, i32* @CONTENTS_PLAYERCLIP, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %15, align 4
  %87 = load i64*, i64** %8, align 8
  %88 = load i64*, i64** %28, align 8
  %89 = call i32 @VectorCopy(i64* %87, i64* %88)
  %90 = load i64*, i64** %30, align 8
  %91 = load i64*, i64** %29, align 8
  %92 = call i32 @VectorCopy(i64* %90, i64* %91)
  %93 = load i64*, i64** %30, align 8
  %94 = call i32 @trap_AAS_PointContents(i64* %93)
  %95 = load i32, i32* @CONTENTS_LAVA, align 4
  %96 = load i32, i32* @CONTENTS_SLIME, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @CONTENTS_WATER, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %94, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %81
  %103 = load i32, i32* @CONTENTS_LAVA, align 4
  %104 = load i32, i32* @CONTENTS_SLIME, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @CONTENTS_WATER, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %13, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %102, %81
  %111 = load i32, i32* %17, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %139

113:                                              ; preds = %110
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* @CONTENTS_LAVA, align 4
  %116 = load i32, i32* @CONTENTS_SLIME, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @CONTENTS_WATER, align 4
  %119 = or i32 %117, %118
  %120 = and i32 %114, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %113
  %123 = load i32, i32* %11, align 4
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %7, align 4
  store i32 %124, i32* %15, align 4
  %125 = load i64*, i64** %30, align 8
  %126 = load i64*, i64** %28, align 8
  %127 = call i32 @VectorCopy(i64* %125, i64* %126)
  %128 = load i64*, i64** %8, align 8
  %129 = load i64*, i64** %29, align 8
  %130 = call i32 @VectorCopy(i64* %128, i64* %129)
  br label %131

131:                                              ; preds = %122, %113
  %132 = load i32, i32* @CONTENTS_LAVA, align 4
  %133 = load i32, i32* @CONTENTS_SLIME, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @CONTENTS_WATER, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %13, align 4
  %138 = xor i32 %137, %136
  store i32 %138, i32* %13, align 4
  br label %139

139:                                              ; preds = %131, %110
  %140 = load i64*, i64** %28, align 8
  %141 = load i64*, i64** %29, align 8
  %142 = load i32, i32* %14, align 4
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @BotAI_Trace(%struct.TYPE_5__* %24, i64* %140, i32* null, i32* null, i64* %141, i32 %142, i32 %143)
  store float 1.000000e+00, float* %21, align 4
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CONTENTS_LAVA, align 4
  %148 = load i32, i32* @CONTENTS_SLIME, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @CONTENTS_WATER, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %146, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %139
  %155 = load i32, i32* @CONTENTS_LAVA, align 4
  %156 = load i32, i32* @CONTENTS_SLIME, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @CONTENTS_WATER, align 4
  %159 = or i32 %157, %158
  %160 = xor i32 %159, -1
  %161 = load i32, i32* %13, align 4
  %162 = and i32 %161, %160
  store i32 %162, i32* %13, align 4
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %164 = load i64*, i64** %163, align 8
  %165 = load i64*, i64** %29, align 8
  %166 = load i32, i32* %14, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @BotAI_Trace(%struct.TYPE_5__* %24, i64* %164, i32* null, i32* null, i64* %165, i32 %166, i32 %167)
  store float 5.000000e-01, float* %21, align 4
  br label %169

169:                                              ; preds = %154, %139
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp sge i32 %171, 1
  br i1 %172, label %178, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %15, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %268

178:                                              ; preds = %173, %169
  %179 = load i64*, i64** %30, align 8
  %180 = call i32 @trap_AAS_PointContents(i64* %179)
  %181 = load i32, i32* @CONTENTS_FOG, align 4
  %182 = and i32 %180, %181
  store i32 %182, i32* %18, align 4
  %183 = load i32, i32* %16, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %178
  %186 = load i32, i32* %18, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %190 = load i64*, i64** %189, align 8
  %191 = load i64*, i64** %8, align 8
  %192 = load i64*, i64** %26, align 8
  %193 = call i32 @VectorSubtract(i64* %190, i64* %191, i64* %192)
  %194 = load i64*, i64** %26, align 8
  %195 = call float @VectorLengthSquared(i64* %194)
  store float %195, float* %20, align 4
  br label %239

196:                                              ; preds = %185, %178
  %197 = load i32, i32* %16, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %216

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %201 = load i64*, i64** %200, align 8
  %202 = load i64*, i64** %28, align 8
  %203 = call i32 @VectorCopy(i64* %201, i64* %202)
  %204 = load i64*, i64** %28, align 8
  %205 = load i64*, i64** %8, align 8
  %206 = load i32, i32* %7, align 4
  %207 = load i32, i32* @CONTENTS_FOG, align 4
  %208 = call i32 @BotAI_Trace(%struct.TYPE_5__* %24, i64* %204, i32* null, i32* null, i64* %205, i32 %206, i32 %207)
  %209 = load i64*, i64** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %211 = load i64*, i64** %210, align 8
  %212 = load i64*, i64** %26, align 8
  %213 = call i32 @VectorSubtract(i64* %209, i64* %211, i64* %212)
  %214 = load i64*, i64** %26, align 8
  %215 = call float @VectorLengthSquared(i64* %214)
  store float %215, float* %20, align 4
  br label %238

216:                                              ; preds = %196
  %217 = load i32, i32* %18, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %236

219:                                              ; preds = %216
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %221 = load i64*, i64** %220, align 8
  %222 = load i64*, i64** %29, align 8
  %223 = call i32 @VectorCopy(i64* %221, i64* %222)
  %224 = load i64*, i64** %8, align 8
  %225 = load i64*, i64** %29, align 8
  %226 = load i32, i32* %7, align 4
  %227 = load i32, i32* @CONTENTS_FOG, align 4
  %228 = call i32 @BotAI_Trace(%struct.TYPE_5__* %24, i64* %224, i32* null, i32* null, i64* %225, i32 %226, i32 %227)
  %229 = load i64*, i64** %29, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %231 = load i64*, i64** %230, align 8
  %232 = load i64*, i64** %26, align 8
  %233 = call i32 @VectorSubtract(i64* %229, i64* %231, i64* %232)
  %234 = load i64*, i64** %26, align 8
  %235 = call float @VectorLengthSquared(i64* %234)
  store float %235, float* %20, align 4
  br label %237

236:                                              ; preds = %216
  store float 0.000000e+00, float* %20, align 4
  br label %237

237:                                              ; preds = %236, %219
  br label %238

238:                                              ; preds = %237, %199
  br label %239

239:                                              ; preds = %238, %188
  %240 = load float, float* %20, align 4
  %241 = fpext float %240 to double
  %242 = fmul double %241, 1.000000e-03
  %243 = fcmp olt double %242, 1.000000e+00
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  br label %249

245:                                              ; preds = %239
  %246 = load float, float* %20, align 4
  %247 = fpext float %246 to double
  %248 = fmul double %247, 1.000000e-03
  br label %249

249:                                              ; preds = %245, %244
  %250 = phi double [ 1.000000e+00, %244 ], [ %248, %245 ]
  %251 = fdiv double 1.000000e+00, %250
  %252 = fptrunc double %251 to float
  store float %252, float* %22, align 4
  %253 = load float, float* %21, align 4
  %254 = load float, float* %22, align 4
  %255 = fmul float %254, %253
  store float %255, float* %22, align 4
  %256 = load float, float* %22, align 4
  %257 = load float, float* %23, align 4
  %258 = fcmp ogt float %256, %257
  br i1 %258, label %259, label %261

259:                                              ; preds = %249
  %260 = load float, float* %22, align 4
  store float %260, float* %23, align 4
  br label %261

261:                                              ; preds = %259, %249
  %262 = load float, float* %23, align 4
  %263 = fpext float %262 to double
  %264 = fcmp oge double %263, 0x3FEE666666666666
  br i1 %264, label %265, label %267

265:                                              ; preds = %261
  %266 = load float, float* %23, align 4
  store float %266, float* %6, align 4
  br label %304

267:                                              ; preds = %261
  br label %268

268:                                              ; preds = %267, %173
  %269 = load i32, i32* %12, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %280

271:                                              ; preds = %268
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %273 = load i64*, i64** %272, align 8
  %274 = getelementptr inbounds i64, i64* %273, i64 2
  %275 = load i64, i64* %274, align 8
  %276 = load i64*, i64** %30, align 8
  %277 = getelementptr inbounds i64, i64* %276, i64 2
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %278, %275
  store i64 %279, i64* %277, align 8
  br label %298

280:                                              ; preds = %268
  %281 = load i32, i32* %12, align 4
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %283, label %297

283:                                              ; preds = %280
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %285 = load i64*, i64** %284, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 2
  %287 = load i64, i64* %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %289 = load i64*, i64** %288, align 8
  %290 = getelementptr inbounds i64, i64* %289, i64 2
  %291 = load i64, i64* %290, align 8
  %292 = sub nsw i64 %287, %291
  %293 = load i64*, i64** %30, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 2
  %295 = load i64, i64* %294, align 8
  %296 = add nsw i64 %295, %292
  store i64 %296, i64* %294, align 8
  br label %297

297:                                              ; preds = %283, %280
  br label %298

298:                                              ; preds = %297, %271
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %12, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %12, align 4
  br label %78

302:                                              ; preds = %78
  %303 = load float, float* %23, align 4
  store float %303, float* %6, align 4
  br label %304

304:                                              ; preds = %302, %265, %64, %36
  %305 = load float, float* %6, align 4
  ret float %305
}

declare dso_local i32 @BotEntityInfo(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @VectorAdd(i64*, i64*, i64*) #1

declare dso_local i32 @VectorScale(i64*, double, i64*) #1

declare dso_local i32 @VectorSubtract(i64*, i64*, i64*) #1

declare dso_local i32 @vectoangles(i64*, i64*) #1

declare dso_local i32 @InFieldOfVision(i64*, float, i64*) #1

declare dso_local i32 @trap_AAS_PointContents(i64*) #1

declare dso_local i32 @VectorCopy(i64*, i64*) #1

declare dso_local i32 @BotAI_Trace(%struct.TYPE_5__*, i64*, i32*, i32*, i64*, i32, i32) #1

declare dso_local float @VectorLengthSquared(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
