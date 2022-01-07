; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_check_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_core-book3s.c_power_check_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i32, i32 (i32, i32, i32*)*, i64 (i32, i64*, i64*)*, i32 (i32)* }
%struct.cpu_hw_events = type { i64**, i64**, i32** }

@MAX_HWEVENTS = common dso_local global i32 0, align 4
@ppmu = common dso_local global %struct.TYPE_2__* null, align 8
@PPMU_LIMITED_PMC_REQD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpu_hw_events*, i32*, i32*, i32)* @power_check_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @power_check_constraints(%struct.cpu_hw_events* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpu_hw_events*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.cpu_hw_events* %0, %struct.cpu_hw_events** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load i32, i32* @MAX_HWEVENTS, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %13, align 8
  %28 = alloca i64, i64 %26, align 16
  store i64 %26, i64* %14, align 8
  %29 = load i32, i32* @MAX_HWEVENTS, align 4
  %30 = zext i32 %29 to i64
  %31 = alloca i64, i64 %30, align 16
  store i64 %30, i64* %15, align 8
  %32 = load i32, i32* @MAX_HWEVENTS, align 4
  %33 = zext i32 %32 to i64
  %34 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %35 = load i32, i32* @MAX_HWEVENTS, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %17, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %20, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %21, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %22, align 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %23, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %511

56:                                               ; preds = %4
  store i32 0, i32* %18, align 4
  br label %57

57:                                               ; preds = %145, %56
  %58 = load i32, i32* %18, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %148

61:                                               ; preds = %57
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @PPMU_LIMITED_PMC_REQD, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %116

70:                                               ; preds = %61
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 7
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* %18, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %73(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %116, label %81

81:                                               ; preds = %70
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 5
  %84 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %83, align 8
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %18, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %18, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %96 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %95, i32 0, i32 2
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %18, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 %84(i32 %89, i32 %94, i32* %101)
  %103 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %104 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %103, i32 0, i32 2
  %105 = load i32**, i32*** %104, align 8
  %106 = load i32, i32* %18, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %105, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %7, align 8
  %113 = load i32, i32* %18, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %111, i32* %115, align 4
  br label %116

116:                                              ; preds = %81, %70, %61
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 6
  %119 = load i64 (i32, i64*, i64*)*, i64 (i32, i64*, i64*)** %118, align 8
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %18, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %126 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %125, i32 0, i32 0
  %127 = load i64**, i64*** %126, align 8
  %128 = load i32, i32* %18, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64*, i64** %127, i64 %129
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %134 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %133, i32 0, i32 1
  %135 = load i64**, i64*** %134, align 8
  %136 = load i32, i32* %18, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i64*, i64** %135, i64 %137
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = call i64 %119(i32 %124, i64* %132, i64* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %116
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %511

144:                                              ; preds = %116
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %18, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %57

148:                                              ; preds = %57
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i32 0, i32* %18, align 4
  br label %149

149:                                              ; preds = %233, %148
  %150 = load i32, i32* %18, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %236

153:                                              ; preds = %149
  %154 = load i64, i64* %11, align 8
  %155 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %156 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %155, i32 0, i32 1
  %157 = load i64**, i64*** %156, align 8
  %158 = load i32, i32* %18, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64*, i64** %157, i64 %159
  %161 = load i64*, i64** %160, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 0
  %163 = load i64, i64* %162, align 8
  %164 = or i64 %154, %163
  %165 = load i64, i64* %11, align 8
  %166 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %167 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %166, i32 0, i32 1
  %168 = load i64**, i64*** %167, align 8
  %169 = load i32, i32* %18, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64*, i64** %168, i64 %170
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = and i64 %165, %174
  %176 = load i64, i64* %20, align 8
  %177 = and i64 %175, %176
  %178 = add i64 %164, %177
  store i64 %178, i64* %12, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load i64, i64* %21, align 8
  %181 = add i64 %179, %180
  %182 = load i64, i64* %11, align 8
  %183 = xor i64 %181, %182
  %184 = load i64, i64* %10, align 8
  %185 = and i64 %183, %184
  %186 = load i64, i64* %22, align 8
  %187 = xor i64 %186, -1
  %188 = and i64 %185, %187
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %153
  br label %236

191:                                              ; preds = %153
  %192 = load i64, i64* %12, align 8
  %193 = load i64, i64* %21, align 8
  %194 = add i64 %192, %193
  %195 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %196 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %195, i32 0, i32 1
  %197 = load i64**, i64*** %196, align 8
  %198 = load i32, i32* %18, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i64*, i64** %197, i64 %199
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 0
  %203 = load i64, i64* %202, align 8
  %204 = xor i64 %194, %203
  %205 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %206 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %205, i32 0, i32 0
  %207 = load i64**, i64*** %206, align 8
  %208 = load i32, i32* %18, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64*, i64** %207, i64 %209
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 0
  %213 = load i64, i64* %212, align 8
  %214 = and i64 %204, %213
  %215 = load i64, i64* %22, align 8
  %216 = xor i64 %215, -1
  %217 = and i64 %214, %216
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %220

219:                                              ; preds = %191
  br label %236

220:                                              ; preds = %191
  %221 = load i64, i64* %12, align 8
  store i64 %221, i64* %11, align 8
  %222 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %223 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %222, i32 0, i32 0
  %224 = load i64**, i64*** %223, align 8
  %225 = load i32, i32* %18, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64*, i64** %224, i64 %226
  %228 = load i64*, i64** %227, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* %10, align 8
  %232 = or i64 %231, %230
  store i64 %232, i64* %10, align 8
  br label %233

233:                                              ; preds = %220
  %234 = load i32, i32* %18, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %18, align 4
  br label %149

236:                                              ; preds = %219, %190, %149
  %237 = load i32, i32* %18, align 4
  %238 = load i32, i32* %9, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %236
  %241 = load i64, i64* %11, align 8
  %242 = load i64, i64* %10, align 8
  %243 = and i64 %241, %242
  %244 = load i64, i64* %22, align 8
  %245 = and i64 %243, %244
  %246 = load i64, i64* %10, align 8
  %247 = load i64, i64* %23, align 8
  %248 = and i64 %246, %247
  %249 = icmp ne i64 %245, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %511

251:                                              ; preds = %240
  store i32 0, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %511

252:                                              ; preds = %236
  %253 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 5
  %255 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %254, align 8
  %256 = icmp ne i32 (i32, i32, i32*)* %255, null
  br i1 %256, label %258, label %257

257:                                              ; preds = %252
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %511

258:                                              ; preds = %252
  store i32 0, i32* %18, align 4
  br label %259

259:                                              ; preds = %338, %258
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %9, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %341

263:                                              ; preds = %259
  %264 = load i32, i32* %18, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %37, i64 %265
  store i32 0, i32* %266, align 4
  %267 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 5
  %269 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %268, align 8
  %270 = load i32*, i32** %7, align 8
  %271 = load i32, i32* %18, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32, i32* %270, i64 %272
  %274 = load i32, i32* %273, align 4
  %275 = load i32*, i32** %8, align 8
  %276 = load i32, i32* %18, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %281 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %280, i32 0, i32 2
  %282 = load i32**, i32*** %281, align 8
  %283 = load i32, i32* %18, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i32*, i32** %282, i64 %284
  %286 = load i32*, i32** %285, align 8
  %287 = call i32 %269(i32 %274, i32 %279, i32* %286)
  %288 = load i32, i32* %18, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %34, i64 %289
  store i32 %287, i32* %290, align 4
  store i32 1, i32* %19, align 4
  br label %291

291:                                              ; preds = %334, %263
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* %18, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %34, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = icmp slt i32 %292, %296
  br i1 %297, label %298, label %337

298:                                              ; preds = %291
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ppmu, align 8
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 6
  %301 = load i64 (i32, i64*, i64*)*, i64 (i32, i64*, i64*)** %300, align 8
  %302 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %303 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %302, i32 0, i32 2
  %304 = load i32**, i32*** %303, align 8
  %305 = load i32, i32* %18, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32*, i32** %304, i64 %306
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %19, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %314 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %313, i32 0, i32 0
  %315 = load i64**, i64*** %314, align 8
  %316 = load i32, i32* %18, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i64*, i64** %315, i64 %317
  %319 = load i64*, i64** %318, align 8
  %320 = load i32, i32* %19, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i64, i64* %319, i64 %321
  %323 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %324 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %323, i32 0, i32 1
  %325 = load i64**, i64*** %324, align 8
  %326 = load i32, i32* %18, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i64*, i64** %325, i64 %327
  %329 = load i64*, i64** %328, align 8
  %330 = load i32, i32* %19, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i64, i64* %329, i64 %331
  %333 = call i64 %301(i32 %312, i64* %322, i64* %332)
  br label %334

334:                                              ; preds = %298
  %335 = load i32, i32* %19, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %19, align 4
  br label %291

337:                                              ; preds = %291
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %18, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %18, align 4
  br label %259

341:                                              ; preds = %259
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i64 0, i64* %12, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %342

342:                                              ; preds = %482, %341
  %343 = load i32, i32* %18, align 4
  %344 = load i32, i32* %9, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %483

346:                                              ; preds = %342
  %347 = load i32, i32* %19, align 4
  %348 = icmp sge i32 %347, 0
  br i1 %348, label %349, label %362

349:                                              ; preds = %346
  %350 = load i32, i32* %18, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i64, i64* %31, i64 %351
  %353 = load i64, i64* %352, align 8
  store i64 %353, i64* %11, align 8
  %354 = load i32, i32* %18, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %28, i64 %355
  %357 = load i64, i64* %356, align 8
  store i64 %357, i64* %10, align 8
  %358 = load i32, i32* %18, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %37, i64 %359
  %361 = load i32, i32* %360, align 4
  store i32 %361, i32* %19, align 4
  br label %362

362:                                              ; preds = %349, %346
  br label %363

363:                                              ; preds = %439, %362
  %364 = load i32, i32* %19, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %19, align 4
  %366 = load i32, i32* %18, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %34, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = icmp slt i32 %365, %369
  br i1 %370, label %371, label %440

371:                                              ; preds = %363
  %372 = load i64, i64* %11, align 8
  %373 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %374 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %373, i32 0, i32 1
  %375 = load i64**, i64*** %374, align 8
  %376 = load i32, i32* %18, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i64*, i64** %375, i64 %377
  %379 = load i64*, i64** %378, align 8
  %380 = load i32, i32* %19, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i64, i64* %379, i64 %381
  %383 = load i64, i64* %382, align 8
  %384 = or i64 %372, %383
  %385 = load i64, i64* %11, align 8
  %386 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %387 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %386, i32 0, i32 1
  %388 = load i64**, i64*** %387, align 8
  %389 = load i32, i32* %18, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i64*, i64** %388, i64 %390
  %392 = load i64*, i64** %391, align 8
  %393 = load i32, i32* %19, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i64, i64* %392, i64 %394
  %396 = load i64, i64* %395, align 8
  %397 = and i64 %385, %396
  %398 = load i64, i64* %20, align 8
  %399 = and i64 %397, %398
  %400 = add i64 %384, %399
  store i64 %400, i64* %12, align 8
  %401 = load i64, i64* %12, align 8
  %402 = load i64, i64* %21, align 8
  %403 = add i64 %401, %402
  %404 = load i64, i64* %11, align 8
  %405 = xor i64 %403, %404
  %406 = load i64, i64* %10, align 8
  %407 = and i64 %405, %406
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %409, label %439

409:                                              ; preds = %371
  %410 = load i64, i64* %12, align 8
  %411 = load i64, i64* %21, align 8
  %412 = add i64 %410, %411
  %413 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %414 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %413, i32 0, i32 1
  %415 = load i64**, i64*** %414, align 8
  %416 = load i32, i32* %18, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i64*, i64** %415, i64 %417
  %419 = load i64*, i64** %418, align 8
  %420 = load i32, i32* %19, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds i64, i64* %419, i64 %421
  %423 = load i64, i64* %422, align 8
  %424 = xor i64 %412, %423
  %425 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %426 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %425, i32 0, i32 0
  %427 = load i64**, i64*** %426, align 8
  %428 = load i32, i32* %18, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i64*, i64** %427, i64 %429
  %431 = load i64*, i64** %430, align 8
  %432 = load i32, i32* %19, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i64, i64* %431, i64 %433
  %435 = load i64, i64* %434, align 8
  %436 = and i64 %424, %435
  %437 = icmp eq i64 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %409
  br label %440

439:                                              ; preds = %409, %371
  br label %363

440:                                              ; preds = %438, %363
  %441 = load i32, i32* %19, align 4
  %442 = load i32, i32* %18, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i32, i32* %34, i64 %443
  %445 = load i32, i32* %444, align 4
  %446 = icmp sge i32 %441, %445
  br i1 %446, label %447, label %453

447:                                              ; preds = %440
  %448 = load i32, i32* %18, align 4
  %449 = add nsw i32 %448, -1
  store i32 %449, i32* %18, align 4
  %450 = icmp slt i32 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %447
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %511

452:                                              ; preds = %447
  br label %482

453:                                              ; preds = %440
  %454 = load i32, i32* %19, align 4
  %455 = load i32, i32* %18, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32, i32* %37, i64 %456
  store i32 %454, i32* %457, align 4
  %458 = load i64, i64* %11, align 8
  %459 = load i32, i32* %18, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i64, i64* %31, i64 %460
  store i64 %458, i64* %461, align 8
  %462 = load i64, i64* %10, align 8
  %463 = load i32, i32* %18, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i64, i64* %28, i64 %464
  store i64 %462, i64* %465, align 8
  %466 = load i64, i64* %12, align 8
  store i64 %466, i64* %11, align 8
  %467 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %468 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %467, i32 0, i32 0
  %469 = load i64**, i64*** %468, align 8
  %470 = load i32, i32* %18, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i64*, i64** %469, i64 %471
  %473 = load i64*, i64** %472, align 8
  %474 = load i32, i32* %19, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds i64, i64* %473, i64 %475
  %477 = load i64, i64* %476, align 8
  %478 = load i64, i64* %10, align 8
  %479 = or i64 %478, %477
  store i64 %479, i64* %10, align 8
  %480 = load i32, i32* %18, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  br label %482

482:                                              ; preds = %453, %452
  br label %342

483:                                              ; preds = %342
  store i32 0, i32* %18, align 4
  br label %484

484:                                              ; preds = %507, %483
  %485 = load i32, i32* %18, align 4
  %486 = load i32, i32* %9, align 4
  %487 = icmp slt i32 %485, %486
  br i1 %487, label %488, label %510

488:                                              ; preds = %484
  %489 = load %struct.cpu_hw_events*, %struct.cpu_hw_events** %6, align 8
  %490 = getelementptr inbounds %struct.cpu_hw_events, %struct.cpu_hw_events* %489, i32 0, i32 2
  %491 = load i32**, i32*** %490, align 8
  %492 = load i32, i32* %18, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32*, i32** %491, i64 %493
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %18, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %37, i64 %497
  %499 = load i32, i32* %498, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds i32, i32* %495, i64 %500
  %502 = load i32, i32* %501, align 4
  %503 = load i32*, i32** %7, align 8
  %504 = load i32, i32* %18, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds i32, i32* %503, i64 %505
  store i32 %502, i32* %506, align 4
  br label %507

507:                                              ; preds = %488
  %508 = load i32, i32* %18, align 4
  %509 = add nsw i32 %508, 1
  store i32 %509, i32* %18, align 4
  br label %484

510:                                              ; preds = %484
  store i32 0, i32* %5, align 4
  store i32 1, i32* %24, align 4
  br label %511

511:                                              ; preds = %510, %451, %257, %251, %250, %143, %55
  %512 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %512)
  %513 = load i32, i32* %5, align 4
  ret i32 %513
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
