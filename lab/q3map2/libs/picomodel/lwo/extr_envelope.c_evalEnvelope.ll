; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_evalEnvelope.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_evalEnvelope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { float, float, i32, %struct.TYPE_10__*, %struct.TYPE_10__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @evalEnvelope(%struct.TYPE_11__* %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store float %1, float* %5, align 4
  store float 0.000000e+00, float* %17, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store float 0.000000e+00, float* %3, align 4
  br label %364

24:                                               ; preds = %2
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load float, float* %33, align 8
  store float %34, float* %3, align 4
  br label %364

35:                                               ; preds = %24
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %9, align 8
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %8, align 8
  br label %39

39:                                               ; preds = %44, %35
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  store %struct.TYPE_10__* %47, %struct.TYPE_10__** %9, align 8
  br label %39

48:                                               ; preds = %39
  %49 = load float, float* %5, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load float, float* %51, align 4
  %53 = fcmp olt float %49, %52
  br i1 %53, label %54, label %144

54:                                               ; preds = %48
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  switch i32 %59, label %143 [
    i32 134, label %60
    i32 139, label %61
    i32 135, label %65
    i32 136, label %74
    i32 137, label %97
    i32 138, label %116
  ]

60:                                               ; preds = %54
  store float 0.000000e+00, float* %3, align 4
  br label %364

61:                                               ; preds = %54
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load float, float* %63, align 8
  store float %64, float* %3, align 4
  br label %364

65:                                               ; preds = %54
  %66 = load float, float* %5, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load float, float* %68, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load float, float* %71, align 4
  %73 = call float @range(float %66, float %69, float %72, i32* null)
  store float %73, float* %5, align 4
  br label %143

74:                                               ; preds = %54
  %75 = load float, float* %5, align 4
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load float, float* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load float, float* %80, align 4
  %82 = call float @range(float %75, float %78, float %81, i32* %18)
  store float %82, float* %5, align 4
  %83 = load i32, i32* %18, align 4
  %84 = srem i32 %83, 2
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %74
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load float, float* %88, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load float, float* %91, align 4
  %93 = fsub float %89, %92
  %94 = load float, float* %5, align 4
  %95 = fsub float %93, %94
  store float %95, float* %5, align 4
  br label %96

96:                                               ; preds = %86, %74
  br label %143

97:                                               ; preds = %54
  %98 = load float, float* %5, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load float, float* %100, align 4
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = load float, float* %103, align 4
  %105 = call float @range(float %98, float %101, float %104, i32* %18)
  store float %105, float* %5, align 4
  %106 = load i32, i32* %18, align 4
  %107 = sitofp i32 %106 to float
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load float, float* %109, align 8
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load float, float* %112, align 8
  %114 = fsub float %110, %113
  %115 = fmul float %107, %114
  store float %115, float* %17, align 4
  br label %143

116:                                              ; preds = %54
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = call float @outgoing(%struct.TYPE_10__* %117, %struct.TYPE_10__* %120)
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 3
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 1
  %126 = load float, float* %125, align 4
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load float, float* %128, align 4
  %130 = fsub float %126, %129
  %131 = fdiv float %121, %130
  store float %131, float* %16, align 4
  %132 = load float, float* %16, align 4
  %133 = load float, float* %5, align 4
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 1
  %136 = load float, float* %135, align 4
  %137 = fsub float %133, %136
  %138 = fmul float %132, %137
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load float, float* %140, align 8
  %142 = fadd float %138, %141
  store float %142, float* %3, align 4
  br label %364

143:                                              ; preds = %54, %97, %96, %65
  br label %241

144:                                              ; preds = %48
  %145 = load float, float* %5, align 4
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load float, float* %147, align 4
  %149 = fcmp ogt float %145, %148
  br i1 %149, label %150, label %240

150:                                              ; preds = %144
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  %155 = load i32, i32* %154, align 4
  switch i32 %155, label %239 [
    i32 134, label %156
    i32 139, label %157
    i32 135, label %161
    i32 136, label %170
    i32 137, label %193
    i32 138, label %212
  ]

156:                                              ; preds = %150
  store float 0.000000e+00, float* %3, align 4
  br label %364

157:                                              ; preds = %150
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load float, float* %159, align 8
  store float %160, float* %3, align 4
  br label %364

161:                                              ; preds = %150
  %162 = load float, float* %5, align 4
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 1
  %165 = load float, float* %164, align 4
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load float, float* %167, align 4
  %169 = call float @range(float %162, float %165, float %168, i32* null)
  store float %169, float* %5, align 4
  br label %239

170:                                              ; preds = %150
  %171 = load float, float* %5, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = load float, float* %173, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load float, float* %176, align 4
  %178 = call float @range(float %171, float %174, float %177, i32* %18)
  store float %178, float* %5, align 4
  %179 = load i32, i32* %18, align 4
  %180 = srem i32 %179, 2
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %170
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 1
  %185 = load float, float* %184, align 4
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 1
  %188 = load float, float* %187, align 4
  %189 = fsub float %185, %188
  %190 = load float, float* %5, align 4
  %191 = fsub float %189, %190
  store float %191, float* %5, align 4
  br label %192

192:                                              ; preds = %182, %170
  br label %239

193:                                              ; preds = %150
  %194 = load float, float* %5, align 4
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 1
  %197 = load float, float* %196, align 4
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 1
  %200 = load float, float* %199, align 4
  %201 = call float @range(float %194, float %197, float %200, i32* %18)
  store float %201, float* %5, align 4
  %202 = load i32, i32* %18, align 4
  %203 = sitofp i32 %202 to float
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 0
  %206 = load float, float* %205, align 8
  %207 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load float, float* %208, align 8
  %210 = fsub float %206, %209
  %211 = fmul float %203, %210
  store float %211, float* %17, align 4
  br label %239

212:                                              ; preds = %150
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 4
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %214, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %217 = call float @incoming(%struct.TYPE_10__* %215, %struct.TYPE_10__* %216)
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 1
  %220 = load float, float* %219, align 4
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 4
  %223 = load %struct.TYPE_10__*, %struct.TYPE_10__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %223, i32 0, i32 1
  %225 = load float, float* %224, align 4
  %226 = fsub float %220, %225
  %227 = fdiv float %217, %226
  store float %227, float* %15, align 4
  %228 = load float, float* %15, align 4
  %229 = load float, float* %5, align 4
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load float, float* %231, align 4
  %233 = fsub float %229, %232
  %234 = fmul float %228, %233
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 0
  %237 = load float, float* %236, align 8
  %238 = fadd float %234, %237
  store float %238, float* %3, align 4
  br label %364

239:                                              ; preds = %150, %193, %192, %161
  br label %240

240:                                              ; preds = %239, %144
  br label %241

241:                                              ; preds = %240, %143
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_10__*, %struct.TYPE_10__** %243, align 8
  store %struct.TYPE_10__* %244, %struct.TYPE_10__** %6, align 8
  br label %245

245:                                              ; preds = %253, %241
  %246 = load float, float* %5, align 4
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 3
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 1
  %251 = load float, float* %250, align 4
  %252 = fcmp ogt float %246, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %245
  %254 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 3
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %255, align 8
  store %struct.TYPE_10__* %256, %struct.TYPE_10__** %6, align 8
  br label %245

257:                                              ; preds = %245
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %259, align 8
  store %struct.TYPE_10__* %260, %struct.TYPE_10__** %7, align 8
  %261 = load float, float* %5, align 4
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 1
  %264 = load float, float* %263, align 4
  %265 = fcmp oeq float %261, %264
  br i1 %265, label %266, label %272

266:                                              ; preds = %257
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 0
  %269 = load float, float* %268, align 8
  %270 = load float, float* %17, align 4
  %271 = fadd float %269, %270
  store float %271, float* %3, align 4
  br label %364

272:                                              ; preds = %257
  %273 = load float, float* %5, align 4
  %274 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 1
  %276 = load float, float* %275, align 4
  %277 = fcmp oeq float %273, %276
  br i1 %277, label %278, label %284

278:                                              ; preds = %272
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 0
  %281 = load float, float* %280, align 8
  %282 = load float, float* %17, align 4
  %283 = fadd float %281, %282
  store float %283, float* %3, align 4
  br label %364

284:                                              ; preds = %272
  br label %285

285:                                              ; preds = %284
  %286 = load float, float* %5, align 4
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 1
  %289 = load float, float* %288, align 4
  %290 = fsub float %286, %289
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 1
  %293 = load float, float* %292, align 4
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load float, float* %295, align 4
  %297 = fsub float %293, %296
  %298 = fdiv float %290, %297
  store float %298, float* %10, align 4
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 8
  switch i32 %301, label %362 [
    i32 128, label %302
    i32 132, label %302
    i32 131, label %302
    i32 133, label %332
    i32 130, label %340
    i32 129, label %356
  ]

302:                                              ; preds = %285, %285, %285
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %304 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %305 = call float @outgoing(%struct.TYPE_10__* %303, %struct.TYPE_10__* %304)
  store float %305, float* %16, align 4
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %308 = call float @incoming(%struct.TYPE_10__* %306, %struct.TYPE_10__* %307)
  store float %308, float* %15, align 4
  %309 = load float, float* %10, align 4
  %310 = call i32 @hermite(float %309, float* %11, float* %12, float* %13, float* %14)
  %311 = load float, float* %11, align 4
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 0
  %314 = load float, float* %313, align 8
  %315 = fmul float %311, %314
  %316 = load float, float* %12, align 4
  %317 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %318 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %317, i32 0, i32 0
  %319 = load float, float* %318, align 8
  %320 = fmul float %316, %319
  %321 = fadd float %315, %320
  %322 = load float, float* %13, align 4
  %323 = load float, float* %16, align 4
  %324 = fmul float %322, %323
  %325 = fadd float %321, %324
  %326 = load float, float* %14, align 4
  %327 = load float, float* %15, align 4
  %328 = fmul float %326, %327
  %329 = fadd float %325, %328
  %330 = load float, float* %17, align 4
  %331 = fadd float %329, %330
  store float %331, float* %3, align 4
  br label %364

332:                                              ; preds = %285
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %334 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %335 = load float, float* %5, align 4
  %336 = call i32 @bez2(%struct.TYPE_10__* %333, %struct.TYPE_10__* %334, float %335)
  %337 = sitofp i32 %336 to float
  %338 = load float, float* %17, align 4
  %339 = fadd float %337, %338
  store float %339, float* %3, align 4
  br label %364

340:                                              ; preds = %285
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 0
  %343 = load float, float* %342, align 8
  %344 = load float, float* %10, align 4
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 0
  %347 = load float, float* %346, align 8
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i32 0, i32 0
  %350 = load float, float* %349, align 8
  %351 = fsub float %347, %350
  %352 = fmul float %344, %351
  %353 = fadd float %343, %352
  %354 = load float, float* %17, align 4
  %355 = fadd float %353, %354
  store float %355, float* %3, align 4
  br label %364

356:                                              ; preds = %285
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = load float, float* %358, align 8
  %360 = load float, float* %17, align 4
  %361 = fadd float %359, %360
  store float %361, float* %3, align 4
  br label %364

362:                                              ; preds = %285
  %363 = load float, float* %17, align 4
  store float %363, float* %3, align 4
  br label %364

364:                                              ; preds = %362, %356, %340, %332, %302, %278, %266, %212, %157, %156, %116, %61, %60, %29, %23
  %365 = load float, float* %3, align 4
  ret float %365
}

declare dso_local float @range(float, float, float, i32*) #1

declare dso_local float @outgoing(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local float @incoming(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

declare dso_local i32 @hermite(float, float*, float*, float*, float*) #1

declare dso_local i32 @bez2(%struct.TYPE_10__*, %struct.TYPE_10__*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
