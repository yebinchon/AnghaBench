; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_bsp.c_R_FixSharedVertexLodError_r.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_bsp.c_R_FixSharedVertexLodError_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i64, i64*, i32, i32, i32*, %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i64* }

@s_worldData = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@SF_GRID = common dso_local global i64 0, align 8
@qfalse = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_FixSharedVertexLodError_r(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %14 = load i32, i32* %3, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %771, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_worldData, i32 0, i32 0), align 8
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %774

19:                                               ; preds = %15
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @s_worldData, i32 0, i32 1), align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %13, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SF_GRID, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %771

33:                                               ; preds = %19
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %771

39:                                               ; preds = %33
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %771

48:                                               ; preds = %39
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 3
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 3
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %53, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %771

61:                                               ; preds = %48
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 3
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %66, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %61
  br label %771

74:                                               ; preds = %61
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 3
  %77 = load i64*, i64** %76, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 3
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %79, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %771

87:                                               ; preds = %74
  %88 = load i32, i32* @qfalse, align 4
  store i32 %88, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %412, %87
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %90, 2
  br i1 %91, label %92, label %415

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %92
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  %103 = mul nsw i32 %99, %102
  store i32 %103, i32* %10, align 4
  br label %105

104:                                              ; preds = %92
  store i32 0, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %95
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %107 = load i32, i32* %10, align 4
  %108 = call i64 @R_MergedWidthPoints(%struct.TYPE_10__* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %412

111:                                              ; preds = %105
  store i32 1, i32* %6, align 4
  br label %112

112:                                              ; preds = %408, %111
  %113 = load i32, i32* %6, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp slt i32 %113, %117
  br i1 %118, label %119, label %411

119:                                              ; preds = %112
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %256, %119
  %121 = load i32, i32* %8, align 4
  %122 = icmp slt i32 %121, 2
  br i1 %122, label %123, label %259

123:                                              ; preds = %120
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = sub nsw i32 %129, 1
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %130, %133
  store i32 %134, i32* %11, align 4
  br label %136

135:                                              ; preds = %123
  store i32 0, i32* %11, align 4
  br label %136

136:                                              ; preds = %135, %126
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %138 = load i32, i32* %11, align 4
  %139 = call i64 @R_MergedWidthPoints(%struct.TYPE_10__* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  br label %256

142:                                              ; preds = %136
  store i32 1, i32* %7, align 4
  br label %143

143:                                              ; preds = %252, %142
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 1
  %149 = icmp slt i32 %144, %148
  br i1 %149, label %150, label %255

150:                                              ; preds = %143
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %154, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 7
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %166, %167
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds i64, i64* %172, i64 0
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %162, %174
  %176 = call double @fabs(i64 %175)
  %177 = fcmp ogt double %176, 1.000000e-01
  br i1 %177, label %178, label %179

178:                                              ; preds = %150
  br label %252

179:                                              ; preds = %150
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 7
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 0
  %189 = load i64*, i64** %188, align 8
  %190 = getelementptr inbounds i64, i64* %189, i64 1
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 7
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = getelementptr inbounds i64, i64* %201, i64 1
  %203 = load i64, i64* %202, align 8
  %204 = sub nsw i64 %191, %203
  %205 = call double @fabs(i64 %204)
  %206 = fcmp ogt double %205, 1.000000e-01
  br i1 %206, label %207, label %208

207:                                              ; preds = %179
  br label %252

208:                                              ; preds = %179
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 7
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = load i32, i32* %6, align 4
  %213 = load i32, i32* %10, align 4
  %214 = add nsw i32 %212, %213
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  %218 = load i64*, i64** %217, align 8
  %219 = getelementptr inbounds i64, i64* %218, i64 2
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 7
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %224, %225
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i64*, i64** %229, align 8
  %231 = getelementptr inbounds i64, i64* %230, i64 2
  %232 = load i64, i64* %231, align 8
  %233 = sub nsw i64 %220, %232
  %234 = call double @fabs(i64 %233)
  %235 = fcmp ogt double %234, 1.000000e-01
  br i1 %235, label %236, label %237

236:                                              ; preds = %208
  br label %252

237:                                              ; preds = %208
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 8
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 8
  %247 = load i32*, i32** %246, align 8
  %248 = load i32, i32* %7, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32, i32* %247, i64 %249
  store i32 %244, i32* %250, align 4
  %251 = load i32, i32* @qtrue, align 4
  store i32 %251, i32* %12, align 4
  br label %252

252:                                              ; preds = %237, %236, %207, %178
  %253 = load i32, i32* %7, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %7, align 4
  br label %143

255:                                              ; preds = %143
  br label %256

256:                                              ; preds = %255, %141
  %257 = load i32, i32* %8, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %8, align 4
  br label %120

259:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %260

260:                                              ; preds = %404, %259
  %261 = load i32, i32* %8, align 4
  %262 = icmp slt i32 %261, 2
  br i1 %262, label %263, label %407

263:                                              ; preds = %260
  %264 = load i32, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %271

266:                                              ; preds = %263
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 5
  %269 = load i32, i32* %268, align 4
  %270 = sub nsw i32 %269, 1
  store i32 %270, i32* %11, align 4
  br label %272

271:                                              ; preds = %263
  store i32 0, i32* %11, align 4
  br label %272

272:                                              ; preds = %271, %266
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %274 = load i32, i32* %11, align 4
  %275 = call i64 @R_MergedHeightPoints(%struct.TYPE_10__* %273, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  br label %404

278:                                              ; preds = %272
  store i32 1, i32* %7, align 4
  br label %279

279:                                              ; preds = %400, %278
  %280 = load i32, i32* %7, align 4
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 8
  %284 = sub nsw i32 %283, 1
  %285 = icmp slt i32 %280, %284
  br i1 %285, label %286, label %403

286:                                              ; preds = %279
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 7
  %289 = load %struct.TYPE_8__*, %struct.TYPE_8__** %288, align 8
  %290 = load i32, i32* %6, align 4
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %290, %291
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %289, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 0
  %296 = load i64*, i64** %295, align 8
  %297 = getelementptr inbounds i64, i64* %296, i64 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 7
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %300, align 8
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 5
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* %7, align 4
  %306 = mul nsw i32 %304, %305
  %307 = load i32, i32* %11, align 4
  %308 = add nsw i32 %306, %307
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 0
  %312 = load i64*, i64** %311, align 8
  %313 = getelementptr inbounds i64, i64* %312, i64 0
  %314 = load i64, i64* %313, align 8
  %315 = sub nsw i64 %298, %314
  %316 = call double @fabs(i64 %315)
  %317 = fcmp ogt double %316, 1.000000e-01
  br i1 %317, label %318, label %319

318:                                              ; preds = %286
  br label %400

319:                                              ; preds = %286
  %320 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %320, i32 0, i32 7
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %321, align 8
  %323 = load i32, i32* %6, align 4
  %324 = load i32, i32* %10, align 4
  %325 = add nsw i32 %323, %324
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 0
  %329 = load i64*, i64** %328, align 8
  %330 = getelementptr inbounds i64, i64* %329, i64 1
  %331 = load i64, i64* %330, align 8
  %332 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %333 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %332, i32 0, i32 7
  %334 = load %struct.TYPE_8__*, %struct.TYPE_8__** %333, align 8
  %335 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %7, align 4
  %339 = mul nsw i32 %337, %338
  %340 = load i32, i32* %11, align 4
  %341 = add nsw i32 %339, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i64 %342
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  %345 = load i64*, i64** %344, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 1
  %347 = load i64, i64* %346, align 8
  %348 = sub nsw i64 %331, %347
  %349 = call double @fabs(i64 %348)
  %350 = fcmp ogt double %349, 1.000000e-01
  br i1 %350, label %351, label %352

351:                                              ; preds = %319
  br label %400

352:                                              ; preds = %319
  %353 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %353, i32 0, i32 7
  %355 = load %struct.TYPE_8__*, %struct.TYPE_8__** %354, align 8
  %356 = load i32, i32* %6, align 4
  %357 = load i32, i32* %10, align 4
  %358 = add nsw i32 %356, %357
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %360, i32 0, i32 0
  %362 = load i64*, i64** %361, align 8
  %363 = getelementptr inbounds i64, i64* %362, i64 2
  %364 = load i64, i64* %363, align 8
  %365 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 7
  %367 = load %struct.TYPE_8__*, %struct.TYPE_8__** %366, align 8
  %368 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %369 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %368, i32 0, i32 5
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* %7, align 4
  %372 = mul nsw i32 %370, %371
  %373 = load i32, i32* %11, align 4
  %374 = add nsw i32 %372, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %367, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = load i64*, i64** %377, align 8
  %379 = getelementptr inbounds i64, i64* %378, i64 2
  %380 = load i64, i64* %379, align 8
  %381 = sub nsw i64 %364, %380
  %382 = call double @fabs(i64 %381)
  %383 = fcmp ogt double %382, 1.000000e-01
  br i1 %383, label %384, label %385

384:                                              ; preds = %352
  br label %400

385:                                              ; preds = %352
  %386 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %387 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %386, i32 0, i32 8
  %388 = load i32*, i32** %387, align 8
  %389 = load i32, i32* %6, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32, i32* %388, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %394 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %393, i32 0, i32 6
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %7, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  store i32 %392, i32* %398, align 4
  %399 = load i32, i32* @qtrue, align 4
  store i32 %399, i32* %12, align 4
  br label %400

400:                                              ; preds = %385, %384, %351, %318
  %401 = load i32, i32* %7, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %7, align 4
  br label %279

403:                                              ; preds = %279
  br label %404

404:                                              ; preds = %403, %277
  %405 = load i32, i32* %8, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %8, align 4
  br label %260

407:                                              ; preds = %260
  br label %408

408:                                              ; preds = %407
  %409 = load i32, i32* %6, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %6, align 4
  br label %112

411:                                              ; preds = %112
  br label %412

412:                                              ; preds = %411, %110
  %413 = load i32, i32* %9, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %9, align 4
  br label %89

415:                                              ; preds = %89
  store i32 0, i32* %9, align 4
  br label %416

416:                                              ; preds = %759, %415
  %417 = load i32, i32* %9, align 4
  %418 = icmp slt i32 %417, 2
  br i1 %418, label %419, label %762

419:                                              ; preds = %416
  %420 = load i32, i32* %9, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %427

422:                                              ; preds = %419
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 5
  %425 = load i32, i32* %424, align 4
  %426 = sub nsw i32 %425, 1
  store i32 %426, i32* %10, align 4
  br label %428

427:                                              ; preds = %419
  store i32 0, i32* %10, align 4
  br label %428

428:                                              ; preds = %427, %422
  %429 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %430 = load i32, i32* %10, align 4
  %431 = call i64 @R_MergedHeightPoints(%struct.TYPE_10__* %429, i32 %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %434

433:                                              ; preds = %428
  br label %759

434:                                              ; preds = %428
  store i32 1, i32* %6, align 4
  br label %435

435:                                              ; preds = %755, %434
  %436 = load i32, i32* %6, align 4
  %437 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %438 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %437, i32 0, i32 4
  %439 = load i32, i32* %438, align 8
  %440 = sub nsw i32 %439, 1
  %441 = icmp slt i32 %436, %440
  br i1 %441, label %442, label %758

442:                                              ; preds = %435
  store i32 0, i32* %8, align 4
  br label %443

443:                                              ; preds = %591, %442
  %444 = load i32, i32* %8, align 4
  %445 = icmp slt i32 %444, 2
  br i1 %445, label %446, label %594

446:                                              ; preds = %443
  %447 = load i32, i32* %8, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %458

449:                                              ; preds = %446
  %450 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %451 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %450, i32 0, i32 4
  %452 = load i32, i32* %451, align 8
  %453 = sub nsw i32 %452, 1
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 5
  %456 = load i32, i32* %455, align 4
  %457 = mul nsw i32 %453, %456
  store i32 %457, i32* %11, align 4
  br label %459

458:                                              ; preds = %446
  store i32 0, i32* %11, align 4
  br label %459

459:                                              ; preds = %458, %449
  %460 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %461 = load i32, i32* %11, align 4
  %462 = call i64 @R_MergedWidthPoints(%struct.TYPE_10__* %460, i32 %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %465

464:                                              ; preds = %459
  br label %591

465:                                              ; preds = %459
  store i32 1, i32* %7, align 4
  br label %466

466:                                              ; preds = %587, %465
  %467 = load i32, i32* %7, align 4
  %468 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 5
  %470 = load i32, i32* %469, align 4
  %471 = sub nsw i32 %470, 1
  %472 = icmp slt i32 %467, %471
  br i1 %472, label %473, label %590

473:                                              ; preds = %466
  %474 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %475 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %474, i32 0, i32 7
  %476 = load %struct.TYPE_8__*, %struct.TYPE_8__** %475, align 8
  %477 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %478 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %477, i32 0, i32 5
  %479 = load i32, i32* %478, align 4
  %480 = load i32, i32* %6, align 4
  %481 = mul nsw i32 %479, %480
  %482 = load i32, i32* %10, align 4
  %483 = add nsw i32 %481, %482
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %476, i64 %484
  %486 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %485, i32 0, i32 0
  %487 = load i64*, i64** %486, align 8
  %488 = getelementptr inbounds i64, i64* %487, i64 0
  %489 = load i64, i64* %488, align 8
  %490 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %491 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %490, i32 0, i32 7
  %492 = load %struct.TYPE_8__*, %struct.TYPE_8__** %491, align 8
  %493 = load i32, i32* %7, align 4
  %494 = load i32, i32* %11, align 4
  %495 = add nsw i32 %493, %494
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %492, i64 %496
  %498 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %497, i32 0, i32 0
  %499 = load i64*, i64** %498, align 8
  %500 = getelementptr inbounds i64, i64* %499, i64 0
  %501 = load i64, i64* %500, align 8
  %502 = sub nsw i64 %489, %501
  %503 = call double @fabs(i64 %502)
  %504 = fcmp ogt double %503, 1.000000e-01
  br i1 %504, label %505, label %506

505:                                              ; preds = %473
  br label %587

506:                                              ; preds = %473
  %507 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %508 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i32 0, i32 7
  %509 = load %struct.TYPE_8__*, %struct.TYPE_8__** %508, align 8
  %510 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 5
  %512 = load i32, i32* %511, align 4
  %513 = load i32, i32* %6, align 4
  %514 = mul nsw i32 %512, %513
  %515 = load i32, i32* %10, align 4
  %516 = add nsw i32 %514, %515
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %509, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %518, i32 0, i32 0
  %520 = load i64*, i64** %519, align 8
  %521 = getelementptr inbounds i64, i64* %520, i64 1
  %522 = load i64, i64* %521, align 8
  %523 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %524 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %523, i32 0, i32 7
  %525 = load %struct.TYPE_8__*, %struct.TYPE_8__** %524, align 8
  %526 = load i32, i32* %7, align 4
  %527 = load i32, i32* %11, align 4
  %528 = add nsw i32 %526, %527
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %525, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %530, i32 0, i32 0
  %532 = load i64*, i64** %531, align 8
  %533 = getelementptr inbounds i64, i64* %532, i64 1
  %534 = load i64, i64* %533, align 8
  %535 = sub nsw i64 %522, %534
  %536 = call double @fabs(i64 %535)
  %537 = fcmp ogt double %536, 1.000000e-01
  br i1 %537, label %538, label %539

538:                                              ; preds = %506
  br label %587

539:                                              ; preds = %506
  %540 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %541 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %540, i32 0, i32 7
  %542 = load %struct.TYPE_8__*, %struct.TYPE_8__** %541, align 8
  %543 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %543, i32 0, i32 5
  %545 = load i32, i32* %544, align 4
  %546 = load i32, i32* %6, align 4
  %547 = mul nsw i32 %545, %546
  %548 = load i32, i32* %10, align 4
  %549 = add nsw i32 %547, %548
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %542, i64 %550
  %552 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %551, i32 0, i32 0
  %553 = load i64*, i64** %552, align 8
  %554 = getelementptr inbounds i64, i64* %553, i64 2
  %555 = load i64, i64* %554, align 8
  %556 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %557 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %556, i32 0, i32 7
  %558 = load %struct.TYPE_8__*, %struct.TYPE_8__** %557, align 8
  %559 = load i32, i32* %7, align 4
  %560 = load i32, i32* %11, align 4
  %561 = add nsw i32 %559, %560
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %558, i64 %562
  %564 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %563, i32 0, i32 0
  %565 = load i64*, i64** %564, align 8
  %566 = getelementptr inbounds i64, i64* %565, i64 2
  %567 = load i64, i64* %566, align 8
  %568 = sub nsw i64 %555, %567
  %569 = call double @fabs(i64 %568)
  %570 = fcmp ogt double %569, 1.000000e-01
  br i1 %570, label %571, label %572

571:                                              ; preds = %539
  br label %587

572:                                              ; preds = %539
  %573 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %574 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %573, i32 0, i32 6
  %575 = load i32*, i32** %574, align 8
  %576 = load i32, i32* %6, align 4
  %577 = sext i32 %576 to i64
  %578 = getelementptr inbounds i32, i32* %575, i64 %577
  %579 = load i32, i32* %578, align 4
  %580 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %581 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %580, i32 0, i32 8
  %582 = load i32*, i32** %581, align 8
  %583 = load i32, i32* %7, align 4
  %584 = sext i32 %583 to i64
  %585 = getelementptr inbounds i32, i32* %582, i64 %584
  store i32 %579, i32* %585, align 4
  %586 = load i32, i32* @qtrue, align 4
  store i32 %586, i32* %12, align 4
  br label %587

587:                                              ; preds = %572, %571, %538, %505
  %588 = load i32, i32* %7, align 4
  %589 = add nsw i32 %588, 1
  store i32 %589, i32* %7, align 4
  br label %466

590:                                              ; preds = %466
  br label %591

591:                                              ; preds = %590, %464
  %592 = load i32, i32* %8, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %8, align 4
  br label %443

594:                                              ; preds = %443
  store i32 0, i32* %8, align 4
  br label %595

595:                                              ; preds = %751, %594
  %596 = load i32, i32* %8, align 4
  %597 = icmp slt i32 %596, 2
  br i1 %597, label %598, label %754

598:                                              ; preds = %595
  %599 = load i32, i32* %8, align 4
  %600 = icmp ne i32 %599, 0
  br i1 %600, label %601, label %606

601:                                              ; preds = %598
  %602 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %603 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %602, i32 0, i32 5
  %604 = load i32, i32* %603, align 4
  %605 = sub nsw i32 %604, 1
  store i32 %605, i32* %11, align 4
  br label %607

606:                                              ; preds = %598
  store i32 0, i32* %11, align 4
  br label %607

607:                                              ; preds = %606, %601
  %608 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %609 = load i32, i32* %11, align 4
  %610 = call i64 @R_MergedHeightPoints(%struct.TYPE_10__* %608, i32 %609)
  %611 = icmp ne i64 %610, 0
  br i1 %611, label %612, label %613

612:                                              ; preds = %607
  br label %751

613:                                              ; preds = %607
  store i32 1, i32* %7, align 4
  br label %614

614:                                              ; preds = %747, %613
  %615 = load i32, i32* %7, align 4
  %616 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %617 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %616, i32 0, i32 4
  %618 = load i32, i32* %617, align 8
  %619 = sub nsw i32 %618, 1
  %620 = icmp slt i32 %615, %619
  br i1 %620, label %621, label %750

621:                                              ; preds = %614
  %622 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %623 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %622, i32 0, i32 7
  %624 = load %struct.TYPE_8__*, %struct.TYPE_8__** %623, align 8
  %625 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %626 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %625, i32 0, i32 5
  %627 = load i32, i32* %626, align 4
  %628 = load i32, i32* %6, align 4
  %629 = mul nsw i32 %627, %628
  %630 = load i32, i32* %10, align 4
  %631 = add nsw i32 %629, %630
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %624, i64 %632
  %634 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %633, i32 0, i32 0
  %635 = load i64*, i64** %634, align 8
  %636 = getelementptr inbounds i64, i64* %635, i64 0
  %637 = load i64, i64* %636, align 8
  %638 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %639 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %638, i32 0, i32 7
  %640 = load %struct.TYPE_8__*, %struct.TYPE_8__** %639, align 8
  %641 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %642 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %641, i32 0, i32 5
  %643 = load i32, i32* %642, align 4
  %644 = load i32, i32* %7, align 4
  %645 = mul nsw i32 %643, %644
  %646 = load i32, i32* %11, align 4
  %647 = add nsw i32 %645, %646
  %648 = sext i32 %647 to i64
  %649 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %640, i64 %648
  %650 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %649, i32 0, i32 0
  %651 = load i64*, i64** %650, align 8
  %652 = getelementptr inbounds i64, i64* %651, i64 0
  %653 = load i64, i64* %652, align 8
  %654 = sub nsw i64 %637, %653
  %655 = call double @fabs(i64 %654)
  %656 = fcmp ogt double %655, 1.000000e-01
  br i1 %656, label %657, label %658

657:                                              ; preds = %621
  br label %747

658:                                              ; preds = %621
  %659 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %660 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %659, i32 0, i32 7
  %661 = load %struct.TYPE_8__*, %struct.TYPE_8__** %660, align 8
  %662 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %663 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %662, i32 0, i32 5
  %664 = load i32, i32* %663, align 4
  %665 = load i32, i32* %6, align 4
  %666 = mul nsw i32 %664, %665
  %667 = load i32, i32* %10, align 4
  %668 = add nsw i32 %666, %667
  %669 = sext i32 %668 to i64
  %670 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %661, i64 %669
  %671 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %670, i32 0, i32 0
  %672 = load i64*, i64** %671, align 8
  %673 = getelementptr inbounds i64, i64* %672, i64 1
  %674 = load i64, i64* %673, align 8
  %675 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %676 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %675, i32 0, i32 7
  %677 = load %struct.TYPE_8__*, %struct.TYPE_8__** %676, align 8
  %678 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %679 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %678, i32 0, i32 5
  %680 = load i32, i32* %679, align 4
  %681 = load i32, i32* %7, align 4
  %682 = mul nsw i32 %680, %681
  %683 = load i32, i32* %11, align 4
  %684 = add nsw i32 %682, %683
  %685 = sext i32 %684 to i64
  %686 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %677, i64 %685
  %687 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %686, i32 0, i32 0
  %688 = load i64*, i64** %687, align 8
  %689 = getelementptr inbounds i64, i64* %688, i64 1
  %690 = load i64, i64* %689, align 8
  %691 = sub nsw i64 %674, %690
  %692 = call double @fabs(i64 %691)
  %693 = fcmp ogt double %692, 1.000000e-01
  br i1 %693, label %694, label %695

694:                                              ; preds = %658
  br label %747

695:                                              ; preds = %658
  %696 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %697 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %696, i32 0, i32 7
  %698 = load %struct.TYPE_8__*, %struct.TYPE_8__** %697, align 8
  %699 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %700 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %699, i32 0, i32 5
  %701 = load i32, i32* %700, align 4
  %702 = load i32, i32* %6, align 4
  %703 = mul nsw i32 %701, %702
  %704 = load i32, i32* %10, align 4
  %705 = add nsw i32 %703, %704
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %698, i64 %706
  %708 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %707, i32 0, i32 0
  %709 = load i64*, i64** %708, align 8
  %710 = getelementptr inbounds i64, i64* %709, i64 2
  %711 = load i64, i64* %710, align 8
  %712 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %713 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %712, i32 0, i32 7
  %714 = load %struct.TYPE_8__*, %struct.TYPE_8__** %713, align 8
  %715 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %716 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %715, i32 0, i32 5
  %717 = load i32, i32* %716, align 4
  %718 = load i32, i32* %7, align 4
  %719 = mul nsw i32 %717, %718
  %720 = load i32, i32* %11, align 4
  %721 = add nsw i32 %719, %720
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %714, i64 %722
  %724 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %723, i32 0, i32 0
  %725 = load i64*, i64** %724, align 8
  %726 = getelementptr inbounds i64, i64* %725, i64 2
  %727 = load i64, i64* %726, align 8
  %728 = sub nsw i64 %711, %727
  %729 = call double @fabs(i64 %728)
  %730 = fcmp ogt double %729, 1.000000e-01
  br i1 %730, label %731, label %732

731:                                              ; preds = %695
  br label %747

732:                                              ; preds = %695
  %733 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %734 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %733, i32 0, i32 6
  %735 = load i32*, i32** %734, align 8
  %736 = load i32, i32* %6, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i32, i32* %735, i64 %737
  %739 = load i32, i32* %738, align 4
  %740 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %741 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %740, i32 0, i32 6
  %742 = load i32*, i32** %741, align 8
  %743 = load i32, i32* %7, align 4
  %744 = sext i32 %743 to i64
  %745 = getelementptr inbounds i32, i32* %742, i64 %744
  store i32 %739, i32* %745, align 4
  %746 = load i32, i32* @qtrue, align 4
  store i32 %746, i32* %12, align 4
  br label %747

747:                                              ; preds = %732, %731, %694, %657
  %748 = load i32, i32* %7, align 4
  %749 = add nsw i32 %748, 1
  store i32 %749, i32* %7, align 4
  br label %614

750:                                              ; preds = %614
  br label %751

751:                                              ; preds = %750, %612
  %752 = load i32, i32* %8, align 4
  %753 = add nsw i32 %752, 1
  store i32 %753, i32* %8, align 4
  br label %595

754:                                              ; preds = %595
  br label %755

755:                                              ; preds = %754
  %756 = load i32, i32* %6, align 4
  %757 = add nsw i32 %756, 1
  store i32 %757, i32* %6, align 4
  br label %435

758:                                              ; preds = %435
  br label %759

759:                                              ; preds = %758, %433
  %760 = load i32, i32* %9, align 4
  %761 = add nsw i32 %760, 1
  store i32 %761, i32* %9, align 4
  br label %416

762:                                              ; preds = %416
  %763 = load i32, i32* %12, align 4
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %770

765:                                              ; preds = %762
  %766 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %767 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %766, i32 0, i32 1
  store i32 2, i32* %767, align 8
  %768 = load i32, i32* %3, align 4
  %769 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  call void @R_FixSharedVertexLodError_r(i32 %768, %struct.TYPE_10__* %769)
  br label %770

770:                                              ; preds = %765, %762
  br label %771

771:                                              ; preds = %770, %86, %73, %60, %47, %38, %32
  %772 = load i32, i32* %5, align 4
  %773 = add nsw i32 %772, 1
  store i32 %773, i32* %5, align 4
  br label %15

774:                                              ; preds = %15
  ret void
}

declare dso_local i64 @R_MergedWidthPoints(%struct.TYPE_10__*, i32) #1

declare dso_local double @fabs(i64) #1

declare dso_local i64 @R_MergedHeightPoints(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
