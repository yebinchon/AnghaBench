; ModuleID = '/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_char_buffer.c_cb_sprint.c'
source_filename = "/home/carl/AnghaBench/ios-webkit-debug-proxy/src/extr_char_buffer.c_cb_sprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cb_sprint.hexchars = internal global i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%zd\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cb_sprint(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8, align 1
  %23 = alloca i64, align 8
  %24 = alloca i8, align 1
  %25 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sle i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %5
  %29 = load i8*, i8** %7, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i8*, i8** %7, align 8
  store i8 0, i8* %32, align 1
  br label %33

33:                                               ; preds = %31, %28
  store i64 0, i64* %6, align 8
  br label %335

34:                                               ; preds = %5
  %35 = load i8*, i8** %7, align 8
  store i8* %35, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %36 = load i32, i32* %10, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 6
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, 2
  %44 = ashr i32 %43, 2
  br label %46

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %41
  %47 = phi i32 [ %44, %41 ], [ 1, %45 ]
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %16, align 8
  br label %89

49:                                               ; preds = %34
  store i64 1, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %14, align 8
  br label %50

50:                                               ; preds = %84, %49
  %51 = load i64, i64* %14, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %51, %53
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load i8*, i8** %8, align 8
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %14, align 8
  %59 = getelementptr inbounds i8, i8* %56, i64 %57
  %60 = load i8, i8* %59, align 1
  store i8 %60, i8* %19, align 1
  %61 = load i64, i64* %18, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %18, align 8
  %63 = load i8, i8* %19, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %83

66:                                               ; preds = %55
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* %17, align 8
  %69 = icmp ugt i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i64, i64* %18, align 8
  store i64 %71, i64* %17, align 8
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32, i32* %11, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i64, i64* %15, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %15, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp ugt i64 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %87

82:                                               ; preds = %75, %72
  store i64 0, i64* %18, align 8
  br label %83

83:                                               ; preds = %82, %55
  br label %84

84:                                               ; preds = %83
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %14, align 8
  br label %50

87:                                               ; preds = %81, %50
  %88 = load i64, i64* %17, align 8
  store i64 %88, i64* %16, align 8
  br label %89

89:                                               ; preds = %87, %46
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %90

90:                                               ; preds = %89, %324
  %91 = load i64, i64* %16, align 8
  store i64 %91, i64* %21, align 8
  %92 = load i64, i64* %14, align 8
  store i64 %92, i64* %20, align 8
  br label %93

93:                                               ; preds = %154, %90
  %94 = load i64, i64* %20, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load i64, i64* %21, align 8
  %100 = icmp ne i64 %99, 0
  br label %101

101:                                              ; preds = %98, %93
  %102 = phi i1 [ false, %93 ], [ %100, %98 ]
  br i1 %102, label %103, label %155

103:                                              ; preds = %101
  %104 = load i8*, i8** %8, align 8
  %105 = load i64, i64* %20, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %20, align 8
  %107 = getelementptr inbounds i8, i8* %104, i64 %105
  %108 = load i8, i8* %107, align 1
  store i8 %108, i8* %22, align 1
  %109 = load i8*, i8** %12, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %103
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %12, align 8
  store i8 32, i8* %112, align 1
  br label %114

114:                                              ; preds = %111, %103
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %13, align 8
  %117 = load i8*, i8** %12, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %130

119:                                              ; preds = %114
  %120 = load i8*, i8** @cb_sprint.hexchars, align 8
  %121 = load i8, i8* %22, align 1
  %122 = zext i8 %121 to i32
  %123 = ashr i32 %122, 4
  %124 = and i32 %123, 15
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %120, i64 %125
  %127 = load i8, i8* %126, align 1
  %128 = load i8*, i8** %12, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %12, align 8
  store i8 %127, i8* %128, align 1
  br label %130

130:                                              ; preds = %119, %114
  %131 = load i64, i64* %13, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %13, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = icmp ne i8* %133, null
  br i1 %134, label %135, label %145

135:                                              ; preds = %130
  %136 = load i8*, i8** @cb_sprint.hexchars, align 8
  %137 = load i8, i8* %22, align 1
  %138 = zext i8 %137 to i32
  %139 = and i32 %138, 15
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = load i8*, i8** %12, align 8
  %144 = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %144, i8** %12, align 8
  store i8 %142, i8* %143, align 1
  br label %145

145:                                              ; preds = %135, %130
  %146 = load i64, i64* %13, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %13, align 8
  %148 = load i64, i64* %21, align 8
  %149 = add i64 %148, -1
  store i64 %149, i64* %21, align 8
  %150 = load i8, i8* %22, align 1
  %151 = zext i8 %150 to i32
  %152 = icmp eq i32 %151, 10
  br i1 %152, label %153, label %154

153:                                              ; preds = %145
  br label %155

154:                                              ; preds = %145
  br label %93

155:                                              ; preds = %153, %101
  %156 = load i64, i64* %21, align 8
  store i64 %156, i64* %23, align 8
  %157 = load i64, i64* %21, align 8
  store i64 %157, i64* %23, align 8
  br label %158

158:                                              ; preds = %186, %155
  %159 = load i64, i64* %23, align 8
  %160 = icmp ugt i64 %159, 0
  br i1 %160, label %161, label %189

161:                                              ; preds = %158
  %162 = load i8*, i8** %12, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load i8*, i8** %12, align 8
  %166 = getelementptr inbounds i8, i8* %165, i32 1
  store i8* %166, i8** %12, align 8
  store i8 32, i8* %165, align 1
  br label %167

167:                                              ; preds = %164, %161
  %168 = load i64, i64* %13, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %13, align 8
  %170 = load i8*, i8** %12, align 8
  %171 = icmp ne i8* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %167
  %173 = load i8*, i8** %12, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %12, align 8
  store i8 32, i8* %173, align 1
  br label %175

175:                                              ; preds = %172, %167
  %176 = load i64, i64* %13, align 8
  %177 = add i64 %176, 1
  store i64 %177, i64* %13, align 8
  %178 = load i8*, i8** %12, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i8*, i8** %12, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %12, align 8
  store i8 32, i8* %181, align 1
  br label %183

183:                                              ; preds = %180, %175
  %184 = load i64, i64* %13, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %13, align 8
  br label %186

186:                                              ; preds = %183
  %187 = load i64, i64* %23, align 8
  %188 = add i64 %187, -1
  store i64 %188, i64* %23, align 8
  br label %158

189:                                              ; preds = %158
  %190 = load i8*, i8** %12, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i8*, i8** %12, align 8
  %194 = getelementptr inbounds i8, i8* %193, i32 1
  store i8* %194, i8** %12, align 8
  store i8 32, i8* %193, align 1
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i64, i64* %13, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %13, align 8
  %198 = load i8*, i8** %12, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i8*, i8** %12, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %12, align 8
  store i8 32, i8* %201, align 1
  br label %203

203:                                              ; preds = %200, %195
  %204 = load i64, i64* %13, align 8
  %205 = add i64 %204, 1
  store i64 %205, i64* %13, align 8
  br label %206

206:                                              ; preds = %235, %203
  %207 = load i64, i64* %14, align 8
  %208 = load i64, i64* %20, align 8
  %209 = icmp ult i64 %207, %208
  br i1 %209, label %210, label %238

210:                                              ; preds = %206
  %211 = load i8*, i8** %8, align 8
  %212 = load i64, i64* %14, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %14, align 8
  %214 = getelementptr inbounds i8, i8* %211, i64 %212
  %215 = load i8, i8* %214, align 1
  store i8 %215, i8* %24, align 1
  %216 = load i8*, i8** %12, align 8
  %217 = icmp ne i8* %216, null
  br i1 %217, label %218, label %235

218:                                              ; preds = %210
  %219 = load i8, i8* %24, align 1
  %220 = zext i8 %219 to i32
  %221 = icmp slt i32 %220, 32
  br i1 %221, label %226, label %222

222:                                              ; preds = %218
  %223 = load i8, i8* %24, align 1
  %224 = zext i8 %223 to i32
  %225 = icmp sgt i32 %224, 126
  br i1 %225, label %226, label %227

226:                                              ; preds = %222, %218
  br label %230

227:                                              ; preds = %222
  %228 = load i8, i8* %24, align 1
  %229 = zext i8 %228 to i32
  br label %230

230:                                              ; preds = %227, %226
  %231 = phi i32 [ 46, %226 ], [ %229, %227 ]
  %232 = trunc i32 %231 to i8
  %233 = load i8*, i8** %12, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %12, align 8
  store i8 %232, i8* %233, align 1
  br label %235

235:                                              ; preds = %230, %210
  %236 = load i64, i64* %13, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %13, align 8
  br label %206

238:                                              ; preds = %206
  %239 = load i64, i64* %14, align 8
  %240 = load i32, i32* %9, align 4
  %241 = sext i32 %240 to i64
  %242 = icmp uge i64 %239, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %238
  br label %327

244:                                              ; preds = %238
  %245 = load i32, i32* %11, align 4
  %246 = icmp sge i32 %245, 0
  br i1 %246, label %247, label %318

247:                                              ; preds = %244
  %248 = load i64, i64* %15, align 8
  %249 = add i64 %248, 1
  store i64 %249, i64* %15, align 8
  %250 = load i32, i32* %11, align 4
  %251 = sext i32 %250 to i64
  %252 = icmp ugt i64 %249, %251
  br i1 %252, label %253, label %318

253:                                              ; preds = %247
  %254 = load i64, i64* %21, align 8
  store i64 %254, i64* %23, align 8
  br label %255

255:                                              ; preds = %267, %253
  %256 = load i64, i64* %23, align 8
  %257 = icmp ugt i64 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %255
  %259 = load i8*, i8** %12, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i8*, i8** %12, align 8
  %263 = getelementptr inbounds i8, i8* %262, i32 1
  store i8* %263, i8** %12, align 8
  store i8 32, i8* %262, align 1
  br label %264

264:                                              ; preds = %261, %258
  %265 = load i64, i64* %13, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %13, align 8
  br label %267

267:                                              ; preds = %264
  %268 = load i64, i64* %23, align 8
  %269 = add i64 %268, -1
  store i64 %269, i64* %23, align 8
  br label %255

270:                                              ; preds = %255
  %271 = load i8*, i8** %12, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i8*, i8** %12, align 8
  %275 = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %275, i8** %12, align 8
  store i8 32, i8* %274, align 1
  br label %276

276:                                              ; preds = %273, %270
  %277 = load i64, i64* %13, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %13, align 8
  %279 = load i8*, i8** %12, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %284

281:                                              ; preds = %276
  %282 = load i8*, i8** %12, align 8
  %283 = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %283, i8** %12, align 8
  store i8 43, i8* %282, align 1
  br label %284

284:                                              ; preds = %281, %276
  %285 = load i64, i64* %13, align 8
  %286 = add i64 %285, 1
  store i64 %286, i64* %13, align 8
  %287 = load i8*, i8** %12, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %303

289:                                              ; preds = %284
  %290 = load i8*, i8** %12, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = load i64, i64* %14, align 8
  %294 = sub i64 %292, %293
  %295 = trunc i64 %294 to i32
  %296 = call i64 @sprintf(i8* %290, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %295)
  store i64 %296, i64* %25, align 8
  %297 = load i64, i64* %25, align 8
  %298 = load i8*, i8** %12, align 8
  %299 = getelementptr inbounds i8, i8* %298, i64 %297
  store i8* %299, i8** %12, align 8
  %300 = load i64, i64* %25, align 8
  %301 = load i64, i64* %13, align 8
  %302 = add i64 %301, %300
  store i64 %302, i64* %13, align 8
  br label %317

303:                                              ; preds = %284
  %304 = load i32, i32* %9, align 4
  %305 = sext i32 %304 to i64
  %306 = load i64, i64* %14, align 8
  %307 = sub i64 %305, %306
  %308 = trunc i64 %307 to i32
  %309 = call i64 @log10(i32 %308)
  %310 = sitofp i64 %309 to double
  %311 = fadd double %310, 5.000000e-01
  %312 = fptosi double %311 to i32
  %313 = add nsw i32 %312, 1
  %314 = sext i32 %313 to i64
  %315 = load i64, i64* %13, align 8
  %316 = add i64 %315, %314
  store i64 %316, i64* %13, align 8
  br label %317

317:                                              ; preds = %303, %289
  br label %327

318:                                              ; preds = %247, %244
  %319 = load i8*, i8** %12, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %324

321:                                              ; preds = %318
  %322 = load i8*, i8** %12, align 8
  %323 = getelementptr inbounds i8, i8* %322, i32 1
  store i8* %323, i8** %12, align 8
  store i8 10, i8* %322, align 1
  br label %324

324:                                              ; preds = %321, %318
  %325 = load i64, i64* %13, align 8
  %326 = add i64 %325, 1
  store i64 %326, i64* %13, align 8
  br label %90

327:                                              ; preds = %317, %243
  %328 = load i8*, i8** %12, align 8
  %329 = icmp ne i8* %328, null
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i8*, i8** %12, align 8
  %332 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %332, i8** %12, align 8
  store i8 0, i8* %331, align 1
  br label %333

333:                                              ; preds = %330, %327
  %334 = load i64, i64* %13, align 8
  store i64 %334, i64* %6, align 8
  br label %335

335:                                              ; preds = %333, %33
  %336 = load i64, i64* %6, align 8
  ret i64 %336
}

declare dso_local i64 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @log10(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
