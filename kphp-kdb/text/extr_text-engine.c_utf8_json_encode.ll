; ModuleID = '/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_utf8_json_encode.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/text/extr_text-engine.c_utf8_json_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"utf8_json_encode: invalid initial data\0A\00", align 1
@utf8_mode = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"utf8_json_encode: buffer overflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"\\u%04x\00", align 1
@cp1251_unicode_codes = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_json_encode(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = getelementptr inbounds i8, i8* %19, i64 -8
  store i8* %20, i8** %10, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %11, align 8
  %25 = load i8*, i8** %6, align 8
  store i8* %25, i8** %12, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ugt i32 %26, 16777215
  br i1 %27, label %31, label %28

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, 8
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %4
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %304

34:                                               ; preds = %28
  %35 = load i64, i64* @utf8_mode, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %97

37:                                               ; preds = %34
  br label %38

38:                                               ; preds = %89, %37
  %39 = load i8*, i8** %8, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = icmp ult i8* %39, %40
  br i1 %41, label %42, label %90

42:                                               ; preds = %38
  %43 = load i8*, i8** %12, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = icmp ugt i8* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @stderr, align 4
  %48 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %304

49:                                               ; preds = %42
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  switch i32 %54, label %73 [
    i32 34, label %55
    i32 92, label %55
    i32 47, label %55
    i32 10, label %58
    i32 13, label %61
    i32 9, label %64
    i32 8, label %67
    i32 12, label %70
  ]

55:                                               ; preds = %49, %49, %49
  %56 = load i8*, i8** %12, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %12, align 8
  store i8 92, i8* %56, align 1
  br label %73

58:                                               ; preds = %49
  %59 = load i8*, i8** %12, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %12, align 8
  store i8 92, i8* %59, align 1
  store i32 110, i32* %13, align 4
  br label %73

61:                                               ; preds = %49
  %62 = load i8*, i8** %12, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %12, align 8
  store i8 92, i8* %62, align 1
  store i32 114, i32* %13, align 4
  br label %73

64:                                               ; preds = %49
  %65 = load i8*, i8** %12, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %12, align 8
  store i8 92, i8* %65, align 1
  store i32 116, i32* %13, align 4
  br label %73

67:                                               ; preds = %49
  %68 = load i8*, i8** %12, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %12, align 8
  store i8 92, i8* %68, align 1
  store i32 98, i32* %13, align 4
  br label %73

70:                                               ; preds = %49
  %71 = load i8*, i8** %12, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %12, align 8
  store i8 92, i8* %71, align 1
  store i32 102, i32* %13, align 4
  br label %73

73:                                               ; preds = %49, %70, %67, %64, %61, %58, %55
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %74, -32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** %12, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i32 @sprintf(i8* %78, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** %12, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %12, align 8
  br label %89

84:                                               ; preds = %73
  %85 = load i32, i32* %13, align 4
  %86 = trunc i32 %85 to i8
  %87 = load i8*, i8** %12, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %12, align 8
  store i8 %86, i8* %87, align 1
  br label %89

89:                                               ; preds = %84, %77
  br label %38

90:                                               ; preds = %38
  %91 = load i8*, i8** %12, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = ptrtoint i8* %91 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %5, align 4
  br label %304

97:                                               ; preds = %34
  br label %98

98:                                               ; preds = %296, %116, %97
  %99 = load i8*, i8** %8, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = icmp ult i8* %99, %100
  br i1 %101, label %102, label %297

102:                                              ; preds = %98
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %10, align 8
  %105 = icmp ugt i8* %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load i32, i32* @stderr, align 4
  %108 = call i32 @fprintf(i32 %107, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %304

109:                                              ; preds = %102
  %110 = load i8*, i8** %8, align 8
  %111 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %111, i8** %8, align 8
  %112 = load i8, i8* %110, align 1
  %113 = sext i8 %112 to i32
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %109
  %117 = load i32*, i32** @cp1251_unicode_codes, align 8
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 128
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %117, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %14, align 4
  %123 = load i8*, i8** %12, align 8
  %124 = load i32, i32* %14, align 4
  %125 = call i8* @utf8_char(i8* %123, i32 %124)
  store i8* %125, i8** %12, align 8
  br label %98

126:                                              ; preds = %109
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 38
  br i1 %128, label %129, label %261

129:                                              ; preds = %126
  %130 = load i8*, i8** %8, align 8
  store i8* %130, i8** %15, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = icmp eq i8* %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %129
  %135 = load i8*, i8** %12, align 8
  %136 = load i8*, i8** %6, align 8
  %137 = ptrtoint i8* %135 to i64
  %138 = ptrtoint i8* %136 to i64
  %139 = sub i64 %137, %138
  %140 = trunc i64 %139 to i32
  store i32 %140, i32* %5, align 4
  br label %304

141:                                              ; preds = %129
  %142 = load i8*, i8** %15, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 35
  br i1 %146, label %147, label %210

147:                                              ; preds = %141
  %148 = load i8*, i8** %15, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %15, align 8
  store i32 0, i32* %14, align 4
  br label %150

150:                                              ; preds = %171, %147
  %151 = load i8*, i8** %15, align 8
  %152 = load i8*, i8** %11, align 8
  %153 = icmp ult i8* %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %150
  %155 = load i8*, i8** %15, align 8
  %156 = load i8*, i8** %8, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 8
  %158 = icmp ult i8* %155, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load i8*, i8** %15, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp sge i32 %162, 48
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load i8*, i8** %15, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp sle i32 %167, 57
  br label %169

169:                                              ; preds = %164, %159, %154, %150
  %170 = phi i1 [ false, %159 ], [ false, %154 ], [ false, %150 ], [ %168, %164 ]
  br i1 %170, label %171, label %180

171:                                              ; preds = %169
  %172 = load i32, i32* %14, align 4
  %173 = mul nsw i32 %172, 10
  %174 = load i8*, i8** %15, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %15, align 8
  %176 = load i8, i8* %174, align 1
  %177 = sext i8 %176 to i32
  %178 = sub nsw i32 %177, 48
  %179 = add nsw i32 %173, %178
  store i32 %179, i32* %14, align 4
  br label %150

180:                                              ; preds = %169
  %181 = load i8*, i8** %15, align 8
  %182 = load i8*, i8** %11, align 8
  %183 = icmp eq i8* %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i8*, i8** %12, align 8
  %186 = load i8*, i8** %6, align 8
  %187 = ptrtoint i8* %185 to i64
  %188 = ptrtoint i8* %186 to i64
  %189 = sub i64 %187, %188
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %5, align 4
  br label %304

191:                                              ; preds = %180
  %192 = load i8*, i8** %15, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp eq i32 %194, 59
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load i32, i32* %14, align 4
  %198 = icmp sgt i32 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %196
  %200 = load i32, i32* %14, align 4
  %201 = icmp ne i32 %200, 60
  br i1 %201, label %202, label %209

202:                                              ; preds = %199
  %203 = load i32, i32* %14, align 4
  %204 = icmp ne i32 %203, 62
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load i8*, i8** %15, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 1
  store i8* %207, i8** %8, align 8
  %208 = load i32, i32* %14, align 4
  store i32 %208, i32* %13, align 4
  br label %209

209:                                              ; preds = %205, %202, %199, %196, %191
  br label %260

210:                                              ; preds = %141
  %211 = load i8*, i8** %15, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp sge i32 %214, 97
  br i1 %215, label %216, label %259

216:                                              ; preds = %210
  %217 = load i8*, i8** %15, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 0
  %219 = load i8, i8* %218, align 1
  %220 = sext i8 %219 to i32
  %221 = icmp sle i32 %220, 122
  br i1 %221, label %222, label %259

222:                                              ; preds = %216
  br label %223

223:                                              ; preds = %244, %222
  %224 = load i8*, i8** %15, align 8
  %225 = load i8*, i8** %11, align 8
  %226 = icmp ult i8* %224, %225
  br i1 %226, label %227, label %242

227:                                              ; preds = %223
  %228 = load i8*, i8** %15, align 8
  %229 = load i8*, i8** %8, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 16
  %231 = icmp ult i8* %228, %230
  br i1 %231, label %232, label %242

232:                                              ; preds = %227
  %233 = load i8*, i8** %15, align 8
  %234 = load i8, i8* %233, align 1
  %235 = sext i8 %234 to i32
  %236 = icmp sge i32 %235, 97
  br i1 %236, label %237, label %242

237:                                              ; preds = %232
  %238 = load i8*, i8** %15, align 8
  %239 = load i8, i8* %238, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp sle i32 %240, 122
  br label %242

242:                                              ; preds = %237, %232, %227, %223
  %243 = phi i1 [ false, %232 ], [ false, %227 ], [ false, %223 ], [ %241, %237 ]
  br i1 %243, label %244, label %247

244:                                              ; preds = %242
  %245 = load i8*, i8** %15, align 8
  %246 = getelementptr inbounds i8, i8* %245, i32 1
  store i8* %246, i8** %15, align 8
  br label %223

247:                                              ; preds = %242
  %248 = load i8*, i8** %15, align 8
  %249 = load i8*, i8** %11, align 8
  %250 = icmp eq i8* %248, %249
  br i1 %250, label %251, label %258

251:                                              ; preds = %247
  %252 = load i8*, i8** %12, align 8
  %253 = load i8*, i8** %6, align 8
  %254 = ptrtoint i8* %252 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = trunc i64 %256 to i32
  store i32 %257, i32* %5, align 4
  br label %304

258:                                              ; preds = %247
  br label %259

259:                                              ; preds = %258, %216, %210
  br label %260

260:                                              ; preds = %259, %209
  br label %261

261:                                              ; preds = %260, %126
  %262 = load i32, i32* %13, align 4
  switch i32 %262, label %281 [
    i32 34, label %263
    i32 92, label %263
    i32 47, label %263
    i32 10, label %266
    i32 13, label %269
    i32 9, label %272
    i32 8, label %275
    i32 12, label %278
  ]

263:                                              ; preds = %261, %261, %261
  %264 = load i8*, i8** %12, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %12, align 8
  store i8 92, i8* %264, align 1
  br label %281

266:                                              ; preds = %261
  %267 = load i8*, i8** %12, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %12, align 8
  store i8 92, i8* %267, align 1
  store i32 110, i32* %13, align 4
  br label %281

269:                                              ; preds = %261
  %270 = load i8*, i8** %12, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %12, align 8
  store i8 92, i8* %270, align 1
  store i32 114, i32* %13, align 4
  br label %281

272:                                              ; preds = %261
  %273 = load i8*, i8** %12, align 8
  %274 = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %274, i8** %12, align 8
  store i8 92, i8* %273, align 1
  store i32 116, i32* %13, align 4
  br label %281

275:                                              ; preds = %261
  %276 = load i8*, i8** %12, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %12, align 8
  store i8 92, i8* %276, align 1
  store i32 98, i32* %13, align 4
  br label %281

278:                                              ; preds = %261
  %279 = load i8*, i8** %12, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %12, align 8
  store i8 92, i8* %279, align 1
  store i32 102, i32* %13, align 4
  br label %281

281:                                              ; preds = %261, %278, %275, %272, %269, %266, %263
  %282 = load i32, i32* %13, align 4
  %283 = and i32 %282, -32
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %292, label %285

285:                                              ; preds = %281
  %286 = load i8*, i8** %12, align 8
  %287 = load i32, i32* %13, align 4
  %288 = call i32 @sprintf(i8* %286, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %287)
  %289 = load i8*, i8** %12, align 8
  %290 = sext i32 %288 to i64
  %291 = getelementptr inbounds i8, i8* %289, i64 %290
  store i8* %291, i8** %12, align 8
  br label %296

292:                                              ; preds = %281
  %293 = load i8*, i8** %12, align 8
  %294 = load i32, i32* %13, align 4
  %295 = call i8* @utf8_char(i8* %293, i32 %294)
  store i8* %295, i8** %12, align 8
  br label %296

296:                                              ; preds = %292, %285
  br label %98

297:                                              ; preds = %98
  %298 = load i8*, i8** %12, align 8
  %299 = load i8*, i8** %6, align 8
  %300 = ptrtoint i8* %298 to i64
  %301 = ptrtoint i8* %299 to i64
  %302 = sub i64 %300, %301
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %5, align 4
  br label %304

304:                                              ; preds = %297, %251, %184, %134, %106, %90, %46, %31
  %305 = load i32, i32* %5, align 4
  ret i32 %305
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i8* @utf8_char(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
