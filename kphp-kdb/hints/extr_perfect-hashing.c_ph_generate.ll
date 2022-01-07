; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_perfect-hashing.c_ph_generate.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_perfect-hashing.c_ph_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32, i32*, i32* }

@va = common dso_local global i32* null, align 8
@ne = common dso_local global i32* null, align 8
@st = common dso_local global i32* null, align 8
@was = common dso_local global i32* null, align 8
@di = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ph_generate(%struct.TYPE_3__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 5
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = sitofp i32 %25 to double
  %27 = fmul double %26, 1.100000e+00
  %28 = fptosi double %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @get_code_len(i32 %32)
  %34 = call i8* @dl_malloc0(i32 %33)
  %35 = bitcast i8* %34 to i32*
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 5
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @get_used_len(i32 %38)
  %40 = call i8* @dl_malloc0(i32 %39)
  %41 = bitcast i8* %40 to i32*
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 4
  store i32* %41, i32** %43, align 8
  %44 = call i32 @assert(i32 1)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @get_sums_len(i32 %45)
  %47 = call i8* @dl_malloc0(i32 %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32* %48, i32** %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = mul nsw i32 2, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %7, align 4
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 4, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32* @dl_malloc(i32 %58)
  store i32* %59, i32** @va, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = mul i64 4, %61
  %63 = trunc i64 %62 to i32
  %64 = call i32* @dl_malloc(i32 %63)
  store i32* %64, i32** @ne, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32* @dl_malloc(i32 %68)
  store i32* %69, i32** @st, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = mul i64 4, %71
  %73 = trunc i64 %72 to i32
  %74 = call i32* @dl_malloc(i32 %73)
  store i32* %74, i32** @was, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32* @dl_malloc(i32 %78)
  store i32* %79, i32** @di, align 8
  store i32 0, i32* %10, align 4
  store i32 301, i32* %11, align 4
  store i32 303, i32* %12, align 4
  br label %80

80:                                               ; preds = %3, %282
  %81 = load i32*, i32** @st, align 8
  %82 = load i32, i32* %7, align 4
  %83 = mul nsw i32 2, %82
  %84 = sext i32 %83 to i64
  %85 = mul i64 4, %84
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memset(i32* %81, i32 -1, i32 %86)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %151, %80
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %154

92:                                               ; preds = %88
  %93 = load i64*, i64** %5, align 8
  %94 = load i32, i32* %13, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @poly_h(i64 %97, i32 %98, i32 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i64*, i64** %5, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @poly_h(i64 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %108, %109
  store i32 %110, i32* %15, align 4
  %111 = load i32*, i32** @st, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load i32*, i32** @ne, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** @st, align 8
  %122 = load i32, i32* %14, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %15, align 4
  %126 = load i32*, i32** @va, align 8
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load i32*, i32** @st, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** @ne, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %135, i32* %139, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32*, i32** @st, align 8
  %142 = load i32, i32* %15, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* %14, align 4
  %146 = load i32*, i32** @va, align 8
  %147 = load i32, i32* %8, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %8, align 4
  %149 = sext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  store i32 %145, i32* %150, align 4
  br label %151

151:                                              ; preds = %92
  %152 = load i32, i32* %13, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %13, align 4
  br label %88

154:                                              ; preds = %88
  %155 = load i32*, i32** @was, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = mul i64 4, %157
  %159 = trunc i64 %158 to i32
  %160 = call i32 @memset(i32* %155, i32 0, i32 %159)
  store i32 1, i32* %16, align 4
  store i32 0, i32* %13, align 4
  br label %161

161:                                              ; preds = %183, %154
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %161
  %166 = load i32, i32* %16, align 4
  %167 = icmp ne i32 %166, 0
  br label %168

168:                                              ; preds = %165, %161
  %169 = phi i1 [ false, %161 ], [ %167, %165 ]
  br i1 %169, label %170, label %186

170:                                              ; preds = %168
  %171 = load i32*, i32** @was, align 8
  %172 = load i32, i32* %13, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %182, label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %13, align 4
  %179 = call i32 @dfs(i32 %178, i32 -1, i32 0)
  %180 = load i32, i32* %16, align 4
  %181 = and i32 %180, %179
  store i32 %181, i32* %16, align 4
  br label %182

182:                                              ; preds = %177, %170
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %13, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %13, align 4
  br label %161

186:                                              ; preds = %168
  %187 = load i32, i32* %16, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %282

189:                                              ; preds = %186
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  br label %190

190:                                              ; preds = %240, %189
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %9, align 4
  %193 = icmp slt i32 %191, %192
  br i1 %193, label %194, label %243

194:                                              ; preds = %190
  %195 = load i32*, i32** @was, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %239

201:                                              ; preds = %194
  %202 = load i32*, i32** @di, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = srem i32 %206, 4
  %208 = icmp eq i32 %207, 1
  br i1 %208, label %217, label %209

209:                                              ; preds = %201
  %210 = load i32*, i32** @di, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = srem i32 %214, 4
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %223

217:                                              ; preds = %209, %201
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 5
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %13, align 4
  %222 = call i32 @set_bit(i32* %220, i32 %221)
  br label %223

223:                                              ; preds = %217, %209
  %224 = load i32*, i32** @di, align 8
  %225 = load i32, i32* %13, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %238

230:                                              ; preds = %223
  %231 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %13, align 4
  %235 = call i32 @set_bit(i32* %233, i32 %234)
  %236 = load i32, i32* %17, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %17, align 4
  br label %238

238:                                              ; preds = %230, %223
  br label %239

239:                                              ; preds = %238, %194
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %13, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %13, align 4
  br label %190

243:                                              ; preds = %190
  store i32 0, i32* %18, align 4
  store i32 0, i32* %13, align 4
  br label %244

244:                                              ; preds = %272, %243
  %245 = load i32, i32* %13, align 4
  %246 = load i32, i32* %9, align 4
  %247 = icmp slt i32 %245, %246
  br i1 %247, label %248, label %275

248:                                              ; preds = %244
  %249 = load i32, i32* %13, align 4
  %250 = and i32 %249, 63
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %261

252:                                              ; preds = %248
  %253 = load i32, i32* %18, align 4
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = ashr i32 %257, 6
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  store i32 %253, i32* %260, align 4
  br label %261

261:                                              ; preds = %252, %248
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = call i64 @get_bit(i32* %264, i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %261
  %269 = load i32, i32* %18, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %18, align 4
  br label %271

271:                                              ; preds = %268, %261
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %13, align 4
  br label %244

275:                                              ; preds = %244
  %276 = load i32, i32* %11, align 4
  %277 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 8
  %279 = load i32, i32* %12, align 4
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 3
  store i32 %279, i32* %281, align 4
  br label %287

282:                                              ; preds = %186
  %283 = load i32, i32* %10, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %10, align 4
  %285 = call i32 @R(i32 1, i32 1000000000)
  store i32 %285, i32* %11, align 4
  %286 = call i32 @R(i32 1, i32 1000000000)
  store i32 %286, i32* %12, align 4
  br label %80

287:                                              ; preds = %275
  %288 = load i32, i32* %7, align 4
  %289 = mul nsw i32 2, %288
  store i32 %289, i32* %8, align 4
  %290 = load i32*, i32** @va, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = mul i64 4, %292
  %294 = trunc i64 %293 to i32
  %295 = call i32 @dl_free(i32* %290, i32 %294)
  %296 = load i32*, i32** @ne, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = mul i64 4, %298
  %300 = trunc i64 %299 to i32
  %301 = call i32 @dl_free(i32* %296, i32 %300)
  %302 = load i32*, i32** @st, align 8
  %303 = load i32, i32* %9, align 4
  %304 = sext i32 %303 to i64
  %305 = mul i64 4, %304
  %306 = trunc i64 %305 to i32
  %307 = call i32 @dl_free(i32* %302, i32 %306)
  %308 = load i32*, i32** @was, align 8
  %309 = load i32, i32* %9, align 4
  %310 = sext i32 %309 to i64
  %311 = mul i64 4, %310
  %312 = trunc i64 %311 to i32
  %313 = call i32 @dl_free(i32* %308, i32 %312)
  %314 = load i32*, i32** @di, align 8
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = mul i64 4, %316
  %318 = trunc i64 %317 to i32
  %319 = call i32 @dl_free(i32* %314, i32 %318)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @dl_malloc0(i32) #1

declare dso_local i32 @get_code_len(i32) #1

declare dso_local i32 @get_used_len(i32) #1

declare dso_local i32 @get_sums_len(i32) #1

declare dso_local i32* @dl_malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @poly_h(i64, i32, i32) #1

declare dso_local i32 @dfs(i32, i32, i32) #1

declare dso_local i32 @set_bit(i32*, i32) #1

declare dso_local i64 @get_bit(i32*, i32) #1

declare dso_local i32 @R(i32, i32) #1

declare dso_local i32 @dl_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
