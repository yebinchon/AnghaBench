; ModuleID = '/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_get_fields.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/letters/extr_letters-data.c_get_fields.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@field_n = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"a:%d%n\00", align 1
@MAX_FIELDS = common dso_local global i32 0, align 4
@MAX_LETTER_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"s:%d%n\00", align 1
@field_name = common dso_local global i8** null, align 8
@field_name_len = common dso_local global i32* null, align 8
@field_value = common dso_local global i8** null, align 8
@field_value_len = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"d:%lf%n\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"i:%d%n\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_fields(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %5, align 4
  store i32 -1, i32* @field_n, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 (i8*, i8*, ...) @sscanf(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %4, i32* %6)
  %15 = icmp ne i32 %14, 1
  br i1 %15, label %55, label %16

16:                                               ; preds = %1
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 58
  br i1 %23, label %55, label %24

24:                                               ; preds = %16
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 123
  br i1 %32, label %55, label %33

33:                                               ; preds = %24
  %34 = load i8*, i8** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 125
  br i1 %41, label %55, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %55, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MAX_FIELDS, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @MAX_LETTER_SIZE, align 4
  %52 = mul nsw i32 2, %51
  %53 = add nsw i32 %52, 1000
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %45, %42, %33, %24, %16, %1
  store i32 -1, i32* %2, align 4
  br label %371

56:                                               ; preds = %49
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %59

59:                                               ; preds = %360, %56
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %363

63:                                               ; preds = %59
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = call i32 (i8*, i8*, ...) @sscanf(i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %6)
  %69 = icmp ne i32 %68, 1
  br i1 %69, label %91, label %70

70:                                               ; preds = %63
  %71 = load i8*, i8** %3, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %71, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 58
  br i1 %79, label %91, label %80

80:                                               ; preds = %70
  %81 = load i8*, i8** %3, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %82, %83
  %85 = add nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %81, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 34
  br i1 %90, label %91, label %92

91:                                               ; preds = %80, %70, %63
  store i32 -1, i32* %2, align 4
  br label %371

92:                                               ; preds = %80
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 2
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i8**, i8*** @field_name, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  store i8* %100, i8** %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32*, i32** @field_name_len, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp sge i32 %113, %114
  br i1 %115, label %133, label %116

116:                                              ; preds = %92
  %117 = load i8*, i8** %3, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp ne i32 %122, 34
  br i1 %123, label %133, label %124

124:                                              ; preds = %116
  %125 = load i8*, i8** %3, align 8
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %125, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 59
  br i1 %132, label %133, label %134

133:                                              ; preds = %124, %116, %92
  store i32 -1, i32* %2, align 4
  br label %371

134:                                              ; preds = %124
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %8, align 4
  %137 = load i8*, i8** %3, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  switch i32 %142, label %358 [
    i32 98, label %143
    i32 100, label %201
    i32 105, label %242
    i32 115, label %283
  ]

143:                                              ; preds = %134
  %144 = load i8*, i8** %3, align 8
  %145 = load i32, i32* %8, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 58
  br i1 %151, label %152, label %199

152:                                              ; preds = %143
  %153 = load i8*, i8** %3, align 8
  %154 = load i32, i32* %8, align 4
  %155 = add nsw i32 %154, 2
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 48
  br i1 %160, label %170, label %161

161:                                              ; preds = %152
  %162 = load i8*, i8** %3, align 8
  %163 = load i32, i32* %8, align 4
  %164 = add nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %162, i64 %165
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 49
  br i1 %169, label %170, label %199

170:                                              ; preds = %161, %152
  %171 = load i8*, i8** %3, align 8
  %172 = load i32, i32* %8, align 4
  %173 = add nsw i32 %172, 3
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %171, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 59
  br i1 %178, label %179, label %199

179:                                              ; preds = %170
  %180 = load i8*, i8** %3, align 8
  %181 = load i32, i32* %8, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  store i8 105, i8* %183, align 1
  %184 = load i8*, i8** %3, align 8
  %185 = load i32, i32* %8, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %184, i64 %186
  %188 = getelementptr inbounds i8, i8* %187, i64 2
  %189 = load i8**, i8*** @field_value, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  store i8* %188, i8** %192, align 8
  %193 = load i32*, i32** @field_value_len, align 8
  %194 = load i32, i32* %7, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  store i32 1, i32* %196, align 4
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 4
  store i32 %198, i32* %8, align 4
  br label %200

199:                                              ; preds = %170, %161, %143
  store i32 -1, i32* %2, align 4
  br label %371

200:                                              ; preds = %179
  br label %359

201:                                              ; preds = %134
  %202 = load i8*, i8** %3, align 8
  %203 = load i32, i32* %8, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8, i8* %202, i64 %204
  %206 = call i32 (i8*, i8*, ...) @sscanf(i8* %205, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double* %10, i32* %6)
  %207 = icmp ne i32 %206, 1
  br i1 %207, label %221, label %208

208:                                              ; preds = %201
  %209 = load i32, i32* %6, align 4
  %210 = icmp slt i32 %209, 3
  br i1 %210, label %221, label %211

211:                                              ; preds = %208
  %212 = load i8*, i8** %3, align 8
  %213 = load i32, i32* %8, align 4
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %213, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %212, i64 %216
  %218 = load i8, i8* %217, align 1
  %219 = sext i8 %218 to i32
  %220 = icmp ne i32 %219, 59
  br i1 %220, label %221, label %222

221:                                              ; preds = %211, %208, %201
  store i32 -1, i32* %2, align 4
  br label %371

222:                                              ; preds = %211
  %223 = load i8*, i8** %3, align 8
  %224 = load i32, i32* %8, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = getelementptr inbounds i8, i8* %226, i64 2
  %228 = load i8**, i8*** @field_value, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8*, i8** %228, i64 %230
  store i8* %227, i8** %231, align 8
  %232 = load i32, i32* %6, align 4
  %233 = sub nsw i32 %232, 2
  %234 = load i32*, i32** @field_value_len, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32 %233, i32* %237, align 4
  %238 = load i32, i32* %6, align 4
  %239 = add nsw i32 %238, 1
  %240 = load i32, i32* %8, align 4
  %241 = add nsw i32 %240, %239
  store i32 %241, i32* %8, align 4
  br label %359

242:                                              ; preds = %134
  %243 = load i8*, i8** %3, align 8
  %244 = load i32, i32* %8, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i8, i8* %243, i64 %245
  %247 = call i32 (i8*, i8*, ...) @sscanf(i8* %246, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %9, i32* %6)
  %248 = icmp ne i32 %247, 1
  br i1 %248, label %262, label %249

249:                                              ; preds = %242
  %250 = load i32, i32* %6, align 4
  %251 = icmp slt i32 %250, 3
  br i1 %251, label %262, label %252

252:                                              ; preds = %249
  %253 = load i8*, i8** %3, align 8
  %254 = load i32, i32* %8, align 4
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %254, %255
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i8, i8* %253, i64 %257
  %259 = load i8, i8* %258, align 1
  %260 = sext i8 %259 to i32
  %261 = icmp ne i32 %260, 59
  br i1 %261, label %262, label %263

262:                                              ; preds = %252, %249, %242
  store i32 -1, i32* %2, align 4
  br label %371

263:                                              ; preds = %252
  %264 = load i8*, i8** %3, align 8
  %265 = load i32, i32* %8, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %264, i64 %266
  %268 = getelementptr inbounds i8, i8* %267, i64 2
  %269 = load i8**, i8*** @field_value, align 8
  %270 = load i32, i32* %7, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i8*, i8** %269, i64 %271
  store i8* %268, i8** %272, align 8
  %273 = load i32, i32* %6, align 4
  %274 = sub nsw i32 %273, 2
  %275 = load i32*, i32** @field_value_len, align 8
  %276 = load i32, i32* %7, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %274, i32* %278, align 4
  %279 = load i32, i32* %6, align 4
  %280 = add nsw i32 %279, 1
  %281 = load i32, i32* %8, align 4
  %282 = add nsw i32 %281, %280
  store i32 %282, i32* %8, align 4
  br label %359

283:                                              ; preds = %134
  %284 = load i8*, i8** %3, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i8, i8* %284, i64 %286
  %288 = call i32 (i8*, i8*, ...) @sscanf(i8* %287, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32* %6)
  %289 = icmp ne i32 %288, 1
  br i1 %289, label %311, label %290

290:                                              ; preds = %283
  %291 = load i8*, i8** %3, align 8
  %292 = load i32, i32* %8, align 4
  %293 = load i32, i32* %6, align 4
  %294 = add nsw i32 %292, %293
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %291, i64 %295
  %297 = load i8, i8* %296, align 1
  %298 = sext i8 %297 to i32
  %299 = icmp ne i32 %298, 58
  br i1 %299, label %311, label %300

300:                                              ; preds = %290
  %301 = load i8*, i8** %3, align 8
  %302 = load i32, i32* %8, align 4
  %303 = load i32, i32* %6, align 4
  %304 = add nsw i32 %302, %303
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i8, i8* %301, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp ne i32 %309, 34
  br i1 %310, label %311, label %312

311:                                              ; preds = %300, %290, %283
  store i32 -1, i32* %2, align 4
  br label %371

312:                                              ; preds = %300
  %313 = load i32, i32* %6, align 4
  %314 = add nsw i32 %313, 2
  %315 = load i32, i32* %8, align 4
  %316 = add nsw i32 %315, %314
  store i32 %316, i32* %8, align 4
  %317 = load i8*, i8** %3, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i8, i8* %317, i64 %319
  %321 = load i8**, i8*** @field_value, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8*, i8** %321, i64 %323
  store i8* %320, i8** %324, align 8
  %325 = load i32, i32* %9, align 4
  %326 = load i32*, i32** @field_value_len, align 8
  %327 = load i32, i32* %7, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  store i32 %325, i32* %329, align 4
  %330 = load i32, i32* %9, align 4
  %331 = load i32, i32* %8, align 4
  %332 = add nsw i32 %331, %330
  store i32 %332, i32* %8, align 4
  %333 = load i32, i32* %8, align 4
  %334 = load i32, i32* %5, align 4
  %335 = icmp sge i32 %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %312
  store i32 -1, i32* %2, align 4
  br label %371

337:                                              ; preds = %312
  %338 = load i8*, i8** %3, align 8
  %339 = load i32, i32* %8, align 4
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %8, align 4
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i8, i8* %338, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp ne i32 %344, 34
  br i1 %345, label %346, label %347

346:                                              ; preds = %337
  store i32 -1, i32* %2, align 4
  br label %371

347:                                              ; preds = %337
  %348 = load i8*, i8** %3, align 8
  %349 = load i32, i32* %8, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %8, align 4
  %351 = sext i32 %349 to i64
  %352 = getelementptr inbounds i8, i8* %348, i64 %351
  %353 = load i8, i8* %352, align 1
  %354 = sext i8 %353 to i32
  %355 = icmp ne i32 %354, 59
  br i1 %355, label %356, label %357

356:                                              ; preds = %347
  store i32 -1, i32* %2, align 4
  br label %371

357:                                              ; preds = %347
  br label %359

358:                                              ; preds = %134
  store i32 -1, i32* %2, align 4
  br label %371

359:                                              ; preds = %357, %263, %222, %200
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %7, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %7, align 4
  br label %59

363:                                              ; preds = %59
  %364 = load i32, i32* %8, align 4
  %365 = load i32, i32* %5, align 4
  %366 = sub nsw i32 %365, 1
  %367 = icmp ne i32 %364, %366
  br i1 %367, label %368, label %369

368:                                              ; preds = %363
  store i32 -1, i32* %2, align 4
  br label %371

369:                                              ; preds = %363
  %370 = load i32, i32* %4, align 4
  store i32 %370, i32* @field_n, align 4
  store i32 %370, i32* %2, align 4
  br label %371

371:                                              ; preds = %369, %368, %358, %356, %346, %336, %311, %262, %221, %199, %133, %91, %55
  %372 = load i32, i32* %2, align 4
  ret i32 %372
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
