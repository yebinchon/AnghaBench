; ModuleID = '/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_pembase64.c_ptls_base64_decode.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/picotls/lib/extr_pembase64.c_ptls_base64_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@PTLS_BASE64_DECODE_IN_PROGRESS = common dso_local global i64 0, align 8
@ptls_base64_values = common dso_local global i32* null, align 8
@PTLS_BASE64_DECODE_FAILED = common dso_local global i8* null, align 8
@PTLS_ERROR_INCORRECT_BASE64 = common dso_local global i32 0, align 4
@PTLS_BASE64_DECODE_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptls_base64_decode(i8* %0, %struct.TYPE_3__* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %41, %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i64, i64* %9, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %13
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %9, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 32
  br i1 %27, label %37, label %28

28:                                               ; preds = %20
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 13
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %31, %28, %20
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %9, align 8
  br label %41

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %37
  br label %13

42:                                               ; preds = %40, %13
  br label %43

43:                                               ; preds = %306, %42
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PTLS_BASE64_DECODE_IN_PROGRESS, align 8
  %58 = icmp eq i64 %56, %57
  br label %59

59:                                               ; preds = %53, %50, %43
  %60 = phi i1 [ false, %50 ], [ false, %43 ], [ %58, %53 ]
  br i1 %60, label %61, label %307

61:                                               ; preds = %59
  %62 = load i8*, i8** %4, align 8
  %63 = load i64, i64* %9, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %9, align 8
  %65 = getelementptr inbounds i8, i8* %62, i64 %63
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp slt i32 0, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %61
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 127
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load i32*, i32** @ptls_base64_values, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  br label %80

79:                                               ; preds = %70, %61
  br label %80

80:                                               ; preds = %79, %73
  %81 = phi i32 [ %78, %73 ], [ -1, %79 ]
  %82 = trunc i32 %81 to i8
  store i8 %82, i8* %11, align 1
  %83 = load i8, i8* %11, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %186

86:                                               ; preds = %80
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %91, label %112

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 61
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load i8*, i8** %4, align 8
  %96 = load i64, i64* %9, align 8
  %97 = getelementptr inbounds i8, i8* %95, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 61
  br i1 %100, label %101, label %112

101:                                              ; preds = %94
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 4, i32* %103, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %9, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  store i32 1, i32* %107, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 12
  store i32 %111, i32* %109, align 8
  br label %185

112:                                              ; preds = %94, %91, %86
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %129

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  %119 = icmp eq i32 %118, 61
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32 4, i32* %122, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 2
  store i32 2, i32* %124, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = shl i32 %127, 6
  store i32 %128, i32* %126, align 8
  br label %184

129:                                              ; preds = %117, %112
  %130 = load i64, i64* %9, align 8
  %131 = add i64 %130, -1
  store i64 %131, i64* %9, align 8
  br label %132

132:                                              ; preds = %164, %129
  %133 = load i8*, i8** %4, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %167

139:                                              ; preds = %132
  %140 = load i8*, i8** %4, align 8
  %141 = load i64, i64* %9, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp eq i32 %145, 32
  br i1 %146, label %163, label %147

147:                                              ; preds = %139
  %148 = load i32, i32* %10, align 4
  %149 = icmp eq i32 %148, 9
  br i1 %149, label %163, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %10, align 4
  %152 = icmp eq i32 %151, 13
  br i1 %152, label %163, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %10, align 4
  %155 = icmp eq i32 %154, 10
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %10, align 4
  %158 = icmp eq i32 %157, 11
  br i1 %158, label %163, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %10, align 4
  %161 = icmp eq i32 %160, 12
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  br label %167

163:                                              ; preds = %159, %156, %153, %150, %147, %139
  br label %164

164:                                              ; preds = %163
  %165 = load i64, i64* %9, align 8
  %166 = add i64 %165, 1
  store i64 %166, i64* %9, align 8
  br label %132

167:                                              ; preds = %162, %132
  %168 = load i8*, i8** %4, align 8
  %169 = load i64, i64* %9, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %307

175:                                              ; preds = %167
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 2
  store i32 0, i32* %177, align 4
  %178 = load i8*, i8** @PTLS_BASE64_DECODE_FAILED, align 8
  %179 = ptrtoint i8* %178 to i64
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  %182 = load i32, i32* @PTLS_ERROR_INCORRECT_BASE64, align 4
  store i32 %182, i32* %7, align 4
  br label %183

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %183, %120
  br label %185

185:                                              ; preds = %184, %101
  br label %201

186:                                              ; preds = %80
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = shl i32 %193, 6
  store i32 %194, i32* %192, align 8
  %195 = load i8, i8* %11, align 1
  %196 = sext i8 %195 to i32
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %186, %185
  %202 = load i32, i32* %7, align 4
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %306

204:                                              ; preds = %201
  %205 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = icmp eq i32 %207, 4
  br i1 %208, label %209, label %306

209:                                              ; preds = %204
  store i32 0, i32* %12, align 4
  br label %210

210:                                              ; preds = %228, %209
  %211 = load i32, i32* %12, align 4
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = icmp slt i32 %211, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %210
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* %12, align 4
  %221 = sub nsw i32 2, %220
  %222 = mul nsw i32 8, %221
  %223 = ashr i32 %219, %222
  %224 = sext i32 %223 to i64
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 %226
  store i64 %224, i64* %227, align 8
  br label %228

228:                                              ; preds = %216
  %229 = load i32, i32* %12, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %12, align 4
  br label %210

231:                                              ; preds = %210
  %232 = load i32*, i32** %6, align 8
  %233 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @ptls_buffer__do_pushv(i32* %232, i64* %233, i32 %236)
  store i32 %237, i32* %7, align 4
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %305

240:                                              ; preds = %231
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %243, 3
  br i1 %244, label %245, label %297

245:                                              ; preds = %240
  br label %246

246:                                              ; preds = %278, %277, %245
  %247 = load i8*, i8** %4, align 8
  %248 = load i64, i64* %9, align 8
  %249 = getelementptr inbounds i8, i8* %247, i64 %248
  %250 = load i8, i8* %249, align 1
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %279

253:                                              ; preds = %246
  %254 = load i8*, i8** %4, align 8
  %255 = load i64, i64* %9, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %9, align 8
  %257 = getelementptr inbounds i8, i8* %254, i64 %255
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  store i32 %259, i32* %10, align 4
  %260 = load i32, i32* %10, align 4
  %261 = icmp eq i32 %260, 32
  br i1 %261, label %277, label %262

262:                                              ; preds = %253
  %263 = load i32, i32* %10, align 4
  %264 = icmp eq i32 %263, 9
  br i1 %264, label %277, label %265

265:                                              ; preds = %262
  %266 = load i32, i32* %10, align 4
  %267 = icmp eq i32 %266, 13
  br i1 %267, label %277, label %268

268:                                              ; preds = %265
  %269 = load i32, i32* %10, align 4
  %270 = icmp eq i32 %269, 10
  br i1 %270, label %277, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %10, align 4
  %273 = icmp eq i32 %272, 11
  br i1 %273, label %277, label %274

274:                                              ; preds = %271
  %275 = load i32, i32* %10, align 4
  %276 = icmp eq i32 %275, 12
  br i1 %276, label %277, label %278

277:                                              ; preds = %274, %271, %268, %265, %262, %253
  br label %246

278:                                              ; preds = %274
  br label %246

279:                                              ; preds = %246
  %280 = load i8*, i8** %4, align 8
  %281 = load i64, i64* %9, align 8
  %282 = getelementptr inbounds i8, i8* %280, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %279
  %287 = load i64, i64* @PTLS_BASE64_DECODE_DONE, align 8
  %288 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %288, i32 0, i32 0
  store i64 %287, i64* %289, align 8
  br label %296

290:                                              ; preds = %279
  %291 = load i8*, i8** @PTLS_BASE64_DECODE_FAILED, align 8
  %292 = ptrtoint i8* %291 to i64
  %293 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  store i64 %292, i64* %294, align 8
  %295 = load i32, i32* @PTLS_ERROR_INCORRECT_BASE64, align 4
  store i32 %295, i32* %7, align 4
  br label %296

296:                                              ; preds = %290, %286
  br label %307

297:                                              ; preds = %240
  %298 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 3
  store i32 0, i32* %299, align 8
  %300 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %300, i32 0, i32 2
  store i32 3, i32* %301, align 4
  %302 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %303 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %302, i32 0, i32 1
  store i32 0, i32* %303, align 8
  br label %304

304:                                              ; preds = %297
  br label %305

305:                                              ; preds = %304, %231
  br label %306

306:                                              ; preds = %305, %204, %201
  br label %43

307:                                              ; preds = %296, %174, %59
  %308 = load i32, i32* %7, align 4
  ret i32 %308
}

declare dso_local i32 @ptls_buffer__do_pushv(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
