; ModuleID = '/home/carl/AnghaBench/libuv/src/win/extr_process.c_make_program_env.c'
source_filename = "/home/carl/AnghaBench/libuv/src/win/extr_process.c_make_program_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@n_required_vars = common dso_local global i32 0, align 4
@CP_UTF8 = common dso_local global i32 0, align 4
@ERROR_OUTOFMEMORY = common dso_local global i32 0, align 4
@qsort_wcscmp = common dso_local global i32 0, align 4
@required_vars = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"GetEnvironmentVariableW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_program_env(i8** %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32**, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8** %0, i8*** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i64 0, i64* %9, align 8
  store i64 1, i64* %13, align 8
  %22 = load i32, i32* @n_required_vars, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = alloca i8, i64 %24, align 16
  %26 = bitcast i8* %25 to i32*
  store i32* %26, i32** %17, align 8
  %27 = load i8**, i8*** %4, align 8
  store i8** %27, i8*** %8, align 8
  br label %28

28:                                               ; preds = %54, %2
  %29 = load i8**, i8*** %8, align 8
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %28
  %33 = load i8**, i8*** %8, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @strchr(i8* %34, i8 signext 61)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load i32, i32* @CP_UTF8, align 4
  %39 = load i8**, i8*** %8, align 8
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @MultiByteToWideChar(i32 %38, i32 0, i8* %40, i32 -1, i32* null, i32 0)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @GetLastError()
  store i32 %45, i32* %3, align 4
  br label %352

46:                                               ; preds = %37
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %13, align 8
  br label %53

53:                                               ; preds = %46, %32
  br label %54

54:                                               ; preds = %53
  %55 = load i8**, i8*** %8, align 8
  %56 = getelementptr inbounds i8*, i8** %55, i32 1
  store i8** %56, i8*** %8, align 8
  br label %28

57:                                               ; preds = %28
  %58 = load i64, i64* %9, align 8
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  %61 = call i32* @uv__malloc(i32 %60)
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = icmp eq i32* %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %57
  %65 = load i64, i64* %9, align 8
  %66 = icmp ugt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %68, i32* %3, align 4
  br label %352

69:                                               ; preds = %64, %57
  %70 = load i64, i64* %13, align 8
  %71 = mul i64 %70, 8
  %72 = alloca i8, i64 %71, align 16
  %73 = bitcast i8* %72 to i32**
  store i32** %73, i32*** %16, align 8
  %74 = load i32*, i32** %14, align 8
  store i32* %74, i32** %7, align 8
  %75 = load i32**, i32*** %16, align 8
  store i32** %75, i32*** %15, align 8
  %76 = load i8**, i8*** %4, align 8
  store i8** %76, i8*** %8, align 8
  br label %77

77:                                               ; preds = %117, %69
  %78 = load i8**, i8*** %8, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %120

81:                                               ; preds = %77
  %82 = load i8**, i8*** %8, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strchr(i8* %83, i8 signext 61)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %116

86:                                               ; preds = %81
  %87 = load i32, i32* @CP_UTF8, align 4
  %88 = load i8**, i8*** %8, align 8
  %89 = load i8*, i8** %88, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = load i32*, i32** %14, align 8
  %94 = ptrtoint i32* %92 to i64
  %95 = ptrtoint i32* %93 to i64
  %96 = sub i64 %94, %95
  %97 = sdiv exact i64 %96, 4
  %98 = sub i64 %91, %97
  %99 = trunc i64 %98 to i32
  %100 = call i32 @MultiByteToWideChar(i32 %87, i32 0, i8* %89, i32 -1, i32* %90, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %86
  %104 = call i32 (...) @GetLastError()
  store i32 %104, i32* %19, align 4
  %105 = load i32*, i32** %14, align 8
  %106 = call i32 @uv__free(i32* %105)
  %107 = load i32, i32* %19, align 4
  store i32 %107, i32* %3, align 4
  br label %352

108:                                              ; preds = %86
  %109 = load i32*, i32** %7, align 8
  %110 = load i32**, i32*** %15, align 8
  %111 = getelementptr inbounds i32*, i32** %110, i32 1
  store i32** %111, i32*** %15, align 8
  store i32* %109, i32** %110, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = sext i32 %112 to i64
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  store i32* %115, i32** %7, align 8
  br label %116

116:                                              ; preds = %108, %81
  br label %117

117:                                              ; preds = %116
  %118 = load i8**, i8*** %8, align 8
  %119 = getelementptr inbounds i8*, i8** %118, i32 1
  store i8** %119, i8*** %8, align 8
  br label %77

120:                                              ; preds = %77
  %121 = load i32**, i32*** %15, align 8
  store i32* null, i32** %121, align 8
  %122 = load i64, i64* %9, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %133, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %9, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = load i32*, i32** %14, align 8
  %128 = ptrtoint i32* %126 to i64
  %129 = ptrtoint i32* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 4
  %132 = icmp eq i64 %125, %131
  br label %133

133:                                              ; preds = %124, %120
  %134 = phi i1 [ true, %120 ], [ %132, %124 ]
  %135 = zext i1 %134 to i32
  %136 = call i32 @assert(i32 %135)
  %137 = load i32**, i32*** %16, align 8
  %138 = load i64, i64* %13, align 8
  %139 = sub i64 %138, 1
  %140 = load i32, i32* @qsort_wcscmp, align 4
  %141 = call i32 @qsort(i32** %137, i64 %139, i32 8, i32 %140)
  %142 = load i32**, i32*** %16, align 8
  store i32** %142, i32*** %15, align 8
  store i64 0, i64* %11, align 8
  br label %143

143:                                              ; preds = %207, %133
  %144 = load i64, i64* %11, align 8
  %145 = load i32, i32* @n_required_vars, align 4
  %146 = sext i32 %145 to i64
  %147 = icmp ult i64 %144, %146
  br i1 %147, label %148, label %208

148:                                              ; preds = %143
  %149 = load i32**, i32*** %15, align 8
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  store i32 -1, i32* %20, align 4
  br label %167

153:                                              ; preds = %148
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** @required_vars, align 8
  %155 = load i64, i64* %11, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** @required_vars, align 8
  %160 = load i64, i64* %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = load i32**, i32*** %15, align 8
  %165 = load i32*, i32** %164, align 8
  %166 = call i32 @env_strncmp(i32 %158, i64 %163, i32* %165)
  store i32 %166, i32* %20, align 4
  br label %167

167:                                              ; preds = %153, %152
  %168 = load i32, i32* %20, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %198

170:                                              ; preds = %167
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @required_vars, align 8
  %172 = load i64, i64* %11, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @GetEnvironmentVariableW(i32 %175, i32* null, i32 0)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = load i32*, i32** %17, align 8
  %179 = load i64, i64* %11, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32 %177, i32* %180, align 4
  %181 = load i32, i32* %12, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %195

183:                                              ; preds = %170
  %184 = load %struct.TYPE_2__*, %struct.TYPE_2__** @required_vars, align 8
  %185 = load i64, i64* %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i64 %185
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* %9, align 8
  %190 = add i64 %189, %188
  store i64 %190, i64* %9, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %9, align 8
  %194 = add i64 %193, %192
  store i64 %194, i64* %9, align 8
  br label %195

195:                                              ; preds = %183, %170
  %196 = load i64, i64* %11, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %11, align 8
  br label %207

198:                                              ; preds = %167
  %199 = load i32**, i32*** %15, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i32 1
  store i32** %200, i32*** %15, align 8
  %201 = load i32, i32* %20, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i64, i64* %11, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %11, align 8
  br label %206

206:                                              ; preds = %203, %198
  br label %207

207:                                              ; preds = %206, %195
  br label %143

208:                                              ; preds = %143
  %209 = load i64, i64* %9, align 8
  %210 = add i64 1, %209
  %211 = mul i64 %210, 4
  %212 = trunc i64 %211 to i32
  %213 = call i32* @uv__malloc(i32 %212)
  store i32* %213, i32** %6, align 8
  %214 = load i32*, i32** %6, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %220, label %216

216:                                              ; preds = %208
  %217 = load i32*, i32** %14, align 8
  %218 = call i32 @uv__free(i32* %217)
  %219 = load i32, i32* @ERROR_OUTOFMEMORY, align 4
  store i32 %219, i32* %3, align 4
  br label %352

220:                                              ; preds = %208
  %221 = load i32*, i32** %6, align 8
  store i32* %221, i32** %7, align 8
  %222 = load i32**, i32*** %16, align 8
  store i32** %222, i32*** %15, align 8
  store i64 0, i64* %11, align 8
  br label %223

223:                                              ; preds = %331, %220
  %224 = load i32**, i32*** %15, align 8
  %225 = load i32*, i32** %224, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %232, label %227

227:                                              ; preds = %223
  %228 = load i64, i64* %11, align 8
  %229 = load i32, i32* @n_required_vars, align 4
  %230 = sext i32 %229 to i64
  %231 = icmp ult i64 %228, %230
  br label %232

232:                                              ; preds = %227, %223
  %233 = phi i1 [ true, %223 ], [ %231, %227 ]
  br i1 %233, label %234, label %336

234:                                              ; preds = %232
  %235 = load i64, i64* %11, align 8
  %236 = load i32, i32* @n_required_vars, align 4
  %237 = sext i32 %236 to i64
  %238 = icmp uge i64 %235, %237
  br i1 %238, label %239, label %240

239:                                              ; preds = %234
  store i32 1, i32* %21, align 4
  br label %260

240:                                              ; preds = %234
  %241 = load i32**, i32*** %15, align 8
  %242 = load i32*, i32** %241, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %245, label %244

244:                                              ; preds = %240
  store i32 -1, i32* %21, align 4
  br label %259

245:                                              ; preds = %240
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** @required_vars, align 8
  %247 = load i64, i64* %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i64 %247
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.TYPE_2__*, %struct.TYPE_2__** @required_vars, align 8
  %252 = load i64, i64* %11, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load i32**, i32*** %15, align 8
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @env_strncmp(i32 %250, i64 %255, i32* %257)
  store i32 %258, i32* %21, align 4
  br label %259

259:                                              ; preds = %245, %244
  br label %260

260:                                              ; preds = %259, %239
  %261 = load i32, i32* %21, align 4
  %262 = icmp slt i32 %261, 0
  br i1 %262, label %263, label %312

263:                                              ; preds = %260
  %264 = load i32*, i32** %17, align 8
  %265 = load i64, i64* %11, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  %267 = load i32, i32* %266, align 4
  store i32 %267, i32* %10, align 4
  %268 = load i32, i32* %10, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %309

270:                                              ; preds = %263
  %271 = load i32*, i32** %7, align 8
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @required_vars, align 8
  %273 = load i64, i64* %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = call i32 @wcscpy(i32* %271, i32 %276)
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** @required_vars, align 8
  %279 = load i64, i64* %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i32*, i32** %7, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 %282
  store i32* %284, i32** %7, align 8
  %285 = load %struct.TYPE_2__*, %struct.TYPE_2__** @required_vars, align 8
  %286 = load i64, i64* %11, align 8
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %285, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load i32*, i32** %7, align 8
  %291 = load i64, i64* %9, align 8
  %292 = load i32*, i32** %7, align 8
  %293 = load i32*, i32** %6, align 8
  %294 = ptrtoint i32* %292 to i64
  %295 = ptrtoint i32* %293 to i64
  %296 = sub i64 %294, %295
  %297 = sdiv exact i64 %296, 4
  %298 = sub i64 %291, %297
  %299 = trunc i64 %298 to i32
  %300 = call i32 @GetEnvironmentVariableW(i32 %289, i32* %290, i32 %299)
  store i32 %300, i32* %12, align 4
  %301 = load i32, i32* %12, align 4
  %302 = load i32, i32* %10, align 4
  %303 = sub nsw i32 %302, 1
  %304 = icmp ne i32 %301, %303
  br i1 %304, label %305, label %308

305:                                              ; preds = %270
  %306 = call i32 (...) @GetLastError()
  %307 = call i32 @uv_fatal_error(i32 %306, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %308

308:                                              ; preds = %305, %270
  br label %309

309:                                              ; preds = %308, %263
  %310 = load i64, i64* %11, align 8
  %311 = add i64 %310, 1
  store i64 %311, i64* %11, align 8
  br label %330

312:                                              ; preds = %260
  %313 = load i32**, i32*** %15, align 8
  %314 = load i32*, i32** %313, align 8
  %315 = call i32 @wcslen(i32* %314)
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %10, align 4
  %317 = load i32*, i32** %7, align 8
  %318 = load i32**, i32*** %15, align 8
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %10, align 4
  %321 = call i32 @wmemcpy(i32* %317, i32* %319, i32 %320)
  %322 = load i32**, i32*** %15, align 8
  %323 = getelementptr inbounds i32*, i32** %322, i32 1
  store i32** %323, i32*** %15, align 8
  %324 = load i32, i32* %21, align 4
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %326, label %329

326:                                              ; preds = %312
  %327 = load i64, i64* %11, align 8
  %328 = add i64 %327, 1
  store i64 %328, i64* %11, align 8
  br label %329

329:                                              ; preds = %326, %312
  br label %330

330:                                              ; preds = %329, %309
  br label %331

331:                                              ; preds = %330
  %332 = load i32, i32* %10, align 4
  %333 = load i32*, i32** %7, align 8
  %334 = sext i32 %332 to i64
  %335 = getelementptr inbounds i32, i32* %333, i64 %334
  store i32* %335, i32** %7, align 8
  br label %223

336:                                              ; preds = %232
  %337 = load i64, i64* %9, align 8
  %338 = load i32*, i32** %7, align 8
  %339 = load i32*, i32** %6, align 8
  %340 = ptrtoint i32* %338 to i64
  %341 = ptrtoint i32* %339 to i64
  %342 = sub i64 %340, %341
  %343 = sdiv exact i64 %342, 4
  %344 = icmp eq i64 %337, %343
  %345 = zext i1 %344 to i32
  %346 = call i32 @assert(i32 %345)
  %347 = load i32*, i32** %7, align 8
  store i32 0, i32* %347, align 4
  %348 = load i32*, i32** %14, align 8
  %349 = call i32 @uv__free(i32* %348)
  %350 = load i32*, i32** %6, align 8
  %351 = load i32**, i32*** %5, align 8
  store i32* %350, i32** %351, align 8
  store i32 0, i32* %3, align 4
  br label %352

352:                                              ; preds = %336, %216, %103, %67, %44
  %353 = load i32, i32* %3, align 4
  ret i32 %353
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local i32* @uv__malloc(i32) #1

declare dso_local i32 @uv__free(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @qsort(i32**, i64, i32, i32) #1

declare dso_local i32 @env_strncmp(i32, i64, i32*) #1

declare dso_local i32 @GetEnvironmentVariableW(i32, i32*, i32) #1

declare dso_local i32 @wcscpy(i32*, i32) #1

declare dso_local i32 @uv_fatal_error(i32, i8*) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @wmemcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
