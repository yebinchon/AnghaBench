; ModuleID = '/home/carl/AnghaBench/goaccess/src/extr_ui.c_input_string.c'
source_filename = "/home/carl/AnghaBench/goaccess/src/extr_ui.c_input_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@CSENSITIVE = common dso_local global i8* null, align 8
@stdscr = common dso_local global i32 0, align 4
@CISENSITIVE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @input_string(i32* %0, i32 %1, i32 %2, i64 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %25 = load i64, i64* %11, align 8
  %26 = add i64 %25, 1
  %27 = call i8* @xmalloc(i64 %26)
  store i8* %27, i8** %15, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 1, i64* %21, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %23, align 8
  store i64 0, i64* %24, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i64, i64* %24, align 8
  %30 = load i64, i64* %23, align 8
  %31 = call i32 @getmaxyx(i32* %28, i64 %29, i64 %30)
  %32 = load i64, i64* %23, align 8
  %33 = sub i64 %32, 4
  store i64 %33, i64* %23, align 8
  %34 = load i8*, i8** %12, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %76

36:                                               ; preds = %7
  %37 = load i64, i64* %11, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i8*, i8** %12, align 8
  %40 = call i32 @strlen(i8* %39)
  %41 = sext i32 %40 to i64
  %42 = call i64 @MIN(i32 %38, i64 %41)
  store i64 %42, i64* %22, align 8
  %43 = load i8*, i8** %15, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i64, i64* %22, align 8
  %46 = call i32 @memcpy(i8* %43, i8* %44, i64 %45)
  %47 = load i8*, i8** %15, align 8
  %48 = load i64, i64* %22, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 0, i8* %49, align 1
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  %50 = load i8*, i8** %15, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %23, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %36
  %56 = load i8*, i8** %15, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = call i8* @xstrdup(i8* %57)
  store i8* %58, i8** %16, align 8
  %59 = load i8*, i8** %16, align 8
  %60 = load i64, i64* %23, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %10, align 4
  %65 = load i8*, i8** %16, align 8
  %66 = call i32 @mvwprintw(i32* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %65)
  %67 = load i8*, i8** %16, align 8
  %68 = call i32 @free(i8* %67)
  br label %75

69:                                               ; preds = %36
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i8*, i8** %15, align 8
  %74 = call i32 @mvwprintw(i32* %70, i32 %71, i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %73)
  br label %75

75:                                               ; preds = %69, %55
  br label %79

76:                                               ; preds = %7
  %77 = load i8*, i8** %15, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %76, %75
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32*, i32** %8, align 8
  %84 = load i64, i64* %24, align 8
  %85 = sub i64 %84, 2
  %86 = trunc i64 %85 to i32
  %87 = load i8*, i8** @CSENSITIVE, align 8
  %88 = call i32 @mvwprintw(i32* %83, i32 %86, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %82, %79
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %20, align 8
  %95 = add i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = call i32 @wmove(i32* %90, i32 %91, i32 %96)
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @wrefresh(i32* %98)
  %100 = call i32 @curs_set(i32 1)
  br label %101

101:                                              ; preds = %362, %89
  %102 = load i64, i64* %21, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %380

104:                                              ; preds = %101
  %105 = load i32, i32* @stdscr, align 4
  %106 = call i64 @wgetch(i32 %105)
  store i64 %106, i64* %18, align 8
  %107 = load i64, i64* %18, align 8
  switch i64 %107, label %246 [
    i64 1, label %108
    i64 262, label %108
    i64 5, label %109
    i64 360, label %109
    i64 7, label %127
    i64 27, label %127
    i64 9, label %139
    i64 21, label %173
    i64 8, label %176
    i64 127, label %176
    i64 131, label %176
    i64 129, label %211
    i64 128, label %225
    i64 10, label %245
    i64 13, label %245
    i64 130, label %245
  ]

108:                                              ; preds = %104, %104
  store i64 0, i64* %20, align 8
  store i64 0, i64* %19, align 8
  br label %326

109:                                              ; preds = %104, %104
  %110 = load i8*, i8** %15, align 8
  %111 = call i32 @strlen(i8* %110)
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %23, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %109
  %116 = load i64, i64* %23, align 8
  store i64 %116, i64* %20, align 8
  %117 = load i8*, i8** %15, align 8
  %118 = call i32 @strlen(i8* %117)
  %119 = sext i32 %118 to i64
  %120 = load i64, i64* %23, align 8
  %121 = sub i64 %119, %120
  store i64 %121, i64* %19, align 8
  br label %126

122:                                              ; preds = %109
  store i64 0, i64* %19, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = call i32 @strlen(i8* %123)
  %125 = sext i32 %124 to i64
  store i64 %125, i64* %20, align 8
  br label %126

126:                                              ; preds = %122, %115
  br label %326

127:                                              ; preds = %104, %104
  store i64 0, i64* %20, align 8
  store i64 0, i64* %19, align 8
  %128 = load i8*, i8** %12, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %127
  %131 = load i8*, i8** %12, align 8
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i8*, i8** %15, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  store i8 0, i8* %137, align 1
  br label %138

138:                                              ; preds = %135, %130, %127
  store i64 0, i64* %21, align 8
  br label %326

139:                                              ; preds = %104
  %140 = load i32, i32* %13, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %139
  br label %326

143:                                              ; preds = %139
  %144 = load i32*, i32** %14, align 8
  %145 = load i32, i32* %144, align 4
  %146 = icmp eq i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i32 1, i32 0
  %149 = load i32*, i32** %14, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %14, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %160

153:                                              ; preds = %143
  %154 = load i32*, i32** %8, align 8
  %155 = load i64, i64* %24, align 8
  %156 = sub i64 %155, 2
  %157 = trunc i64 %156 to i32
  %158 = load i8*, i8** @CISENSITIVE, align 8
  %159 = call i32 @mvwprintw(i32* %154, i32 %157, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %158)
  br label %172

160:                                              ; preds = %143
  %161 = load i32*, i32** %14, align 8
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %171, label %164

164:                                              ; preds = %160
  %165 = load i32*, i32** %8, align 8
  %166 = load i64, i64* %24, align 8
  %167 = sub i64 %166, 2
  %168 = trunc i64 %167 to i32
  %169 = load i8*, i8** @CSENSITIVE, align 8
  %170 = call i32 @mvwprintw(i32* %165, i32 %168, i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %164, %160
  br label %172

172:                                              ; preds = %171, %153
  br label %326

173:                                              ; preds = %104
  %174 = load i8*, i8** %15, align 8
  %175 = getelementptr inbounds i8, i8* %174, i64 0
  store i8 0, i8* %175, align 1
  store i64 0, i64* %20, align 8
  store i64 0, i64* %19, align 8
  br label %326

176:                                              ; preds = %104, %104, %104
  %177 = load i64, i64* %19, align 8
  %178 = load i64, i64* %20, align 8
  %179 = add i64 %177, %178
  %180 = icmp ugt i64 %179, 0
  br i1 %180, label %181, label %210

181:                                              ; preds = %176
  %182 = load i8*, i8** %15, align 8
  %183 = load i64, i64* %19, align 8
  %184 = load i64, i64* %20, align 8
  %185 = add i64 %183, %184
  %186 = sub i64 %185, 1
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  %188 = load i8*, i8** %15, align 8
  %189 = load i64, i64* %19, align 8
  %190 = load i64, i64* %20, align 8
  %191 = add i64 %189, %190
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i64, i64* %11, align 8
  %194 = load i64, i64* %19, align 8
  %195 = load i64, i64* %20, align 8
  %196 = add i64 %194, %195
  %197 = sub i64 %193, %196
  %198 = add i64 %197, 1
  %199 = trunc i64 %198 to i32
  %200 = call i32 @memmove(i8* %187, i8* %192, i32 %199)
  %201 = load i64, i64* %19, align 8
  %202 = icmp ule i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %181
  %204 = load i64, i64* %20, align 8
  %205 = add i64 %204, -1
  store i64 %205, i64* %20, align 8
  br label %209

206:                                              ; preds = %181
  %207 = load i64, i64* %19, align 8
  %208 = add i64 %207, -1
  store i64 %208, i64* %19, align 8
  br label %209

209:                                              ; preds = %206, %203
  br label %210

210:                                              ; preds = %209, %176
  br label %326

211:                                              ; preds = %104
  %212 = load i64, i64* %20, align 8
  %213 = icmp ugt i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  %215 = load i64, i64* %20, align 8
  %216 = add i64 %215, -1
  store i64 %216, i64* %20, align 8
  br label %224

217:                                              ; preds = %211
  %218 = load i64, i64* %19, align 8
  %219 = icmp ugt i64 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i64, i64* %19, align 8
  %222 = add i64 %221, -1
  store i64 %222, i64* %19, align 8
  br label %223

223:                                              ; preds = %220, %217
  br label %224

224:                                              ; preds = %223, %214
  br label %326

225:                                              ; preds = %104
  %226 = load i64, i64* %20, align 8
  %227 = load i64, i64* %19, align 8
  %228 = add i64 %226, %227
  %229 = load i8*, i8** %15, align 8
  %230 = call i32 @strlen(i8* %229)
  %231 = sext i32 %230 to i64
  %232 = icmp ult i64 %228, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %225
  %234 = load i64, i64* %20, align 8
  %235 = load i64, i64* %23, align 8
  %236 = icmp ult i64 %234, %235
  br i1 %236, label %237, label %240

237:                                              ; preds = %233
  %238 = load i64, i64* %20, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %20, align 8
  br label %243

240:                                              ; preds = %233
  %241 = load i64, i64* %19, align 8
  %242 = add i64 %241, 1
  store i64 %242, i64* %19, align 8
  br label %243

243:                                              ; preds = %240, %237
  br label %244

244:                                              ; preds = %243, %225
  br label %326

245:                                              ; preds = %104, %104, %104
  store i64 0, i64* %21, align 8
  br label %326

246:                                              ; preds = %104
  %247 = load i8*, i8** %15, align 8
  %248 = call i32 @strlen(i8* %247)
  %249 = sext i32 %248 to i64
  %250 = load i64, i64* %11, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %326

253:                                              ; preds = %246
  %254 = load i64, i64* %18, align 8
  %255 = call i32 @isprint(i64 %254)
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %253
  br label %326

258:                                              ; preds = %253
  %259 = load i8*, i8** %15, align 8
  %260 = call i32 @strlen(i8* %259)
  %261 = sext i32 %260 to i64
  %262 = load i64, i64* %19, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %281

264:                                              ; preds = %258
  %265 = load i64, i64* %18, align 8
  %266 = trunc i64 %265 to i8
  %267 = load i8*, i8** %15, align 8
  %268 = load i64, i64* %19, align 8
  %269 = load i64, i64* %20, align 8
  %270 = add i64 %268, %269
  %271 = getelementptr inbounds i8, i8* %267, i64 %270
  store i8 %266, i8* %271, align 1
  %272 = load i8*, i8** %15, align 8
  %273 = load i64, i64* %19, align 8
  %274 = load i64, i64* %20, align 8
  %275 = add i64 %273, %274
  %276 = add i64 %275, 1
  %277 = getelementptr inbounds i8, i8* %272, i64 %276
  store i8 0, i8* %277, align 1
  %278 = load i32*, i32** %8, align 8
  %279 = load i64, i64* %18, align 8
  %280 = call i32 @waddch(i32* %278, i64 %279)
  br label %308

281:                                              ; preds = %258
  %282 = load i8*, i8** %15, align 8
  %283 = load i64, i64* %19, align 8
  %284 = load i64, i64* %20, align 8
  %285 = add i64 %283, %284
  %286 = add i64 %285, 1
  %287 = getelementptr inbounds i8, i8* %282, i64 %286
  %288 = load i8*, i8** %15, align 8
  %289 = load i64, i64* %19, align 8
  %290 = load i64, i64* %20, align 8
  %291 = add i64 %289, %290
  %292 = getelementptr inbounds i8, i8* %288, i64 %291
  %293 = load i8*, i8** %15, align 8
  %294 = load i64, i64* %19, align 8
  %295 = load i64, i64* %20, align 8
  %296 = add i64 %294, %295
  %297 = getelementptr inbounds i8, i8* %293, i64 %296
  %298 = call i32 @strlen(i8* %297)
  %299 = add nsw i32 %298, 1
  %300 = call i32 @memmove(i8* %287, i8* %292, i32 %299)
  %301 = load i64, i64* %18, align 8
  %302 = trunc i64 %301 to i8
  %303 = load i8*, i8** %15, align 8
  %304 = load i64, i64* %19, align 8
  %305 = load i64, i64* %20, align 8
  %306 = add i64 %304, %305
  %307 = getelementptr inbounds i8, i8* %303, i64 %306
  store i8 %302, i8* %307, align 1
  br label %308

308:                                              ; preds = %281, %264
  %309 = load i64, i64* %20, align 8
  %310 = load i64, i64* %19, align 8
  %311 = add i64 %309, %310
  %312 = load i64, i64* %11, align 8
  %313 = icmp ult i64 %311, %312
  br i1 %313, label %314, label %325

314:                                              ; preds = %308
  %315 = load i64, i64* %20, align 8
  %316 = load i64, i64* %23, align 8
  %317 = icmp ult i64 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %314
  %319 = load i64, i64* %20, align 8
  %320 = add i64 %319, 1
  store i64 %320, i64* %20, align 8
  br label %324

321:                                              ; preds = %314
  %322 = load i64, i64* %19, align 8
  %323 = add i64 %322, 1
  store i64 %323, i64* %19, align 8
  br label %324

324:                                              ; preds = %321, %318
  br label %325

325:                                              ; preds = %324, %308
  br label %326

326:                                              ; preds = %325, %257, %252, %245, %244, %224, %210, %173, %172, %142, %138, %126, %108
  %327 = load i8*, i8** %15, align 8
  %328 = load i64, i64* %19, align 8
  %329 = icmp ugt i64 %328, 0
  br i1 %329, label %330, label %332

330:                                              ; preds = %326
  %331 = load i64, i64* %19, align 8
  br label %333

332:                                              ; preds = %326
  br label %333

333:                                              ; preds = %332, %330
  %334 = phi i64 [ %331, %330 ], [ 0, %332 ]
  %335 = getelementptr inbounds i8, i8* %327, i64 %334
  %336 = call i8* @xstrdup(i8* %335)
  store i8* %336, i8** %16, align 8
  %337 = load i8*, i8** %16, align 8
  %338 = load i8*, i8** %16, align 8
  %339 = call i32 @strlen(i8* %338)
  %340 = load i64, i64* %23, align 8
  %341 = call i64 @MIN(i32 %339, i64 %340)
  %342 = getelementptr inbounds i8, i8* %337, i64 %341
  store i8 0, i8* %342, align 1
  %343 = load i8*, i8** %16, align 8
  %344 = call i32 @strlen(i8* %343)
  %345 = sext i32 %344 to i64
  store i64 %345, i64* %17, align 8
  br label %346

346:                                              ; preds = %359, %333
  %347 = load i64, i64* %17, align 8
  %348 = load i64, i64* %23, align 8
  %349 = icmp ult i64 %347, %348
  br i1 %349, label %350, label %362

350:                                              ; preds = %346
  %351 = load i32*, i32** %8, align 8
  %352 = load i32, i32* %9, align 4
  %353 = load i32, i32* %10, align 4
  %354 = sext i32 %353 to i64
  %355 = load i64, i64* %17, align 8
  %356 = add i64 %354, %355
  %357 = trunc i64 %356 to i32
  %358 = call i32 @mvwprintw(i32* %351, i32 %352, i32 %357, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %359

359:                                              ; preds = %350
  %360 = load i64, i64* %17, align 8
  %361 = add i64 %360, 1
  store i64 %361, i64* %17, align 8
  br label %346

362:                                              ; preds = %346
  %363 = load i32*, i32** %8, align 8
  %364 = load i32, i32* %9, align 4
  %365 = load i32, i32* %10, align 4
  %366 = load i8*, i8** %16, align 8
  %367 = call i32 @mvwprintw(i32* %363, i32 %364, i32 %365, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %366)
  %368 = load i8*, i8** %16, align 8
  %369 = call i32 @free(i8* %368)
  %370 = load i32*, i32** %8, align 8
  %371 = load i32, i32* %9, align 4
  %372 = load i32, i32* %10, align 4
  %373 = sext i32 %372 to i64
  %374 = load i64, i64* %20, align 8
  %375 = add i64 %373, %374
  %376 = trunc i64 %375 to i32
  %377 = call i32 @wmove(i32* %370, i32 %371, i32 %376)
  %378 = load i32*, i32** %8, align 8
  %379 = call i32 @wrefresh(i32* %378)
  br label %101

380:                                              ; preds = %101
  %381 = call i32 @curs_set(i32 0)
  %382 = load i8*, i8** %15, align 8
  ret i8* %382
}

declare dso_local i8* @xmalloc(i64) #1

declare dso_local i32 @getmaxyx(i32*, i64, i64) #1

declare dso_local i64 @MIN(i32, i64) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @mvwprintw(i32*, i32, i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @wrefresh(i32*) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i64 @wgetch(i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @isprint(i64) #1

declare dso_local i32 @waddch(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
