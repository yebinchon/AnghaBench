; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_wildmatch.c_dowild.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_wildmatch.c_dowild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WM_ABORT_ALL = common dso_local global i32 0, align 4
@WM_CASEFOLD = common dso_local global i32 0, align 4
@WM_NOMATCH = common dso_local global i32 0, align 4
@WM_PATHNAME = common dso_local global i32 0, align 4
@WM_MATCH = common dso_local global i32 0, align 4
@WM_ABORT_TO_STARSTAR = common dso_local global i32 0, align 4
@NEGATE_CLASS = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [6 x i8] c"alnum\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"alpha\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"blank\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"cntrl\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"digit\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"lower\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"print\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"punct\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"upper\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"xdigit\00", align 1
@NEGATE_CLASS2 = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @dowild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dowild(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load i8*, i8** %5, align 8
  store i8* %20, i8** %9, align 8
  br label %21

21:                                               ; preds = %680, %3
  %22 = load i8*, i8** %5, align 8
  %23 = load i8, i8* %22, align 1
  store i8 %23, i8* %8, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %685

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load i8, i8* %27, align 1
  store i8 %28, i8* %13, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i8, i8* %8, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 42
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @WM_ABORT_ALL, align 4
  store i32 %36, i32* %4, align 4
  br label %696

37:                                               ; preds = %31, %26
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @WM_CASEFOLD, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load i8, i8* %13, align 1
  %44 = call i64 @ISUPPER(i8 signext %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i8, i8* %13, align 1
  %48 = call signext i8 @tolower(i8 signext %47)
  store i8 %48, i8* %13, align 1
  br label %49

49:                                               ; preds = %46, %42, %37
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @WM_CASEFOLD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i8, i8* %8, align 1
  %56 = call i64 @ISUPPER(i8 signext %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i8, i8* %8, align 1
  %60 = call signext i8 @tolower(i8 signext %59)
  store i8 %60, i8* %8, align 1
  br label %61

61:                                               ; preds = %58, %54, %49
  %62 = load i8, i8* %8, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %68 [
    i32 92, label %64
    i32 63, label %77
    i32 42, label %89
    i32 91, label %310
  ]

64:                                               ; preds = %61
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %5, align 8
  %67 = load i8, i8* %66, align 1
  store i8 %67, i8* %8, align 1
  br label %68

68:                                               ; preds = %61, %64
  %69 = load i8, i8* %13, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* %8, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %70, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @WM_NOMATCH, align 4
  store i32 %75, i32* %4, align 4
  br label %696

76:                                               ; preds = %68
  br label %680

77:                                               ; preds = %61
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @WM_PATHNAME, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i8, i8* %13, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 47
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* @WM_NOMATCH, align 4
  store i32 %87, i32* %4, align 4
  br label %696

88:                                               ; preds = %82, %77
  br label %680

89:                                               ; preds = %61
  %90 = load i8*, i8** %5, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %91, i8** %5, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 42
  br i1 %94, label %95, label %162

95:                                               ; preds = %89
  %96 = load i8*, i8** %5, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 -2
  store i8* %97, i8** %15, align 8
  br label %98

98:                                               ; preds = %104, %95
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds i8, i8* %99, i32 1
  store i8* %100, i8** %5, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 42
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %98

105:                                              ; preds = %98
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @WM_PATHNAME, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105
  store i32 1, i32* %11, align 4
  br label %161

111:                                              ; preds = %105
  %112 = load i8*, i8** %15, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = icmp ult i8* %112, %113
  br i1 %114, label %120, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** %15, align 8
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 47
  br i1 %119, label %120, label %159

120:                                              ; preds = %115, %111
  %121 = load i8*, i8** %5, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %142, label %125

125:                                              ; preds = %120
  %126 = load i8*, i8** %5, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 47
  br i1 %129, label %142, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** %5, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 92
  br i1 %135, label %136, label %159

136:                                              ; preds = %130
  %137 = load i8*, i8** %5, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 1
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp eq i32 %140, 47
  br i1 %141, label %142, label %159

142:                                              ; preds = %136, %125, %120
  %143 = load i8*, i8** %5, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 47
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load i8*, i8** %5, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  %151 = load i8*, i8** %6, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @dowild(i8* %150, i8* %151, i32 %152)
  %154 = load i32, i32* @WM_MATCH, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @WM_MATCH, align 4
  store i32 %157, i32* %4, align 4
  br label %696

158:                                              ; preds = %148, %142
  store i32 1, i32* %11, align 4
  br label %160

159:                                              ; preds = %136, %130, %115
  store i32 0, i32* %11, align 4
  br label %160

160:                                              ; preds = %159, %158
  br label %161

161:                                              ; preds = %160, %110
  br label %169

162:                                              ; preds = %89
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @WM_PATHNAME, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 0, i32 1
  store i32 %168, i32* %11, align 4
  br label %169

169:                                              ; preds = %162, %161
  %170 = load i8*, i8** %5, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %186

174:                                              ; preds = %169
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %184, label %177

177:                                              ; preds = %174
  %178 = load i8*, i8** %6, align 8
  %179 = call i8* @strchr(i8* %178, i8 signext 47)
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %177
  %182 = load i32, i32* @WM_NOMATCH, align 4
  store i32 %182, i32* %4, align 4
  br label %696

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183, %174
  %185 = load i32, i32* @WM_MATCH, align 4
  store i32 %185, i32* %4, align 4
  br label %696

186:                                              ; preds = %169
  %187 = load i32, i32* %11, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %203, label %189

189:                                              ; preds = %186
  %190 = load i8*, i8** %5, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = icmp eq i32 %192, 47
  br i1 %193, label %194, label %203

194:                                              ; preds = %189
  %195 = load i8*, i8** %6, align 8
  %196 = call i8* @strchr(i8* %195, i8 signext 47)
  store i8* %196, i8** %16, align 8
  %197 = load i8*, i8** %16, align 8
  %198 = icmp ne i8* %197, null
  br i1 %198, label %201, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* @WM_NOMATCH, align 4
  store i32 %200, i32* %4, align 4
  br label %696

201:                                              ; preds = %194
  %202 = load i8*, i8** %16, align 8
  store i8* %202, i8** %6, align 8
  br label %679

203:                                              ; preds = %189, %186
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204, %304
  %206 = load i8, i8* %13, align 1
  %207 = sext i8 %206 to i32
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %205
  br label %308

210:                                              ; preds = %205
  %211 = load i8*, i8** %5, align 8
  %212 = load i8, i8* %211, align 1
  %213 = call i32 @is_glob_special(i8 signext %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %277, label %215

215:                                              ; preds = %210
  %216 = load i8*, i8** %5, align 8
  %217 = load i8, i8* %216, align 1
  store i8 %217, i8* %8, align 1
  %218 = load i32, i32* %7, align 4
  %219 = load i32, i32* @WM_CASEFOLD, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %215
  %223 = load i8, i8* %8, align 1
  %224 = call i64 @ISUPPER(i8 signext %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i8, i8* %8, align 1
  %228 = call signext i8 @tolower(i8 signext %227)
  store i8 %228, i8* %8, align 1
  br label %229

229:                                              ; preds = %226, %222, %215
  br label %230

230:                                              ; preds = %265, %229
  %231 = load i8*, i8** %6, align 8
  %232 = load i8, i8* %231, align 1
  store i8 %232, i8* %13, align 1
  %233 = sext i8 %232 to i32
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %230
  %236 = load i32, i32* %11, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %242, label %238

238:                                              ; preds = %235
  %239 = load i8, i8* %13, align 1
  %240 = sext i8 %239 to i32
  %241 = icmp ne i32 %240, 47
  br label %242

242:                                              ; preds = %238, %235
  %243 = phi i1 [ true, %235 ], [ %241, %238 ]
  br label %244

244:                                              ; preds = %242, %230
  %245 = phi i1 [ false, %230 ], [ %243, %242 ]
  br i1 %245, label %246, label %268

246:                                              ; preds = %244
  %247 = load i32, i32* %7, align 4
  %248 = load i32, i32* @WM_CASEFOLD, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %246
  %252 = load i8, i8* %13, align 1
  %253 = call i64 @ISUPPER(i8 signext %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %251
  %256 = load i8, i8* %13, align 1
  %257 = call signext i8 @tolower(i8 signext %256)
  store i8 %257, i8* %13, align 1
  br label %258

258:                                              ; preds = %255, %251, %246
  %259 = load i8, i8* %13, align 1
  %260 = sext i8 %259 to i32
  %261 = load i8, i8* %8, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %260, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  br label %268

265:                                              ; preds = %258
  %266 = load i8*, i8** %6, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %6, align 8
  br label %230

268:                                              ; preds = %264, %244
  %269 = load i8, i8* %13, align 1
  %270 = sext i8 %269 to i32
  %271 = load i8, i8* %8, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp ne i32 %270, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %268
  %275 = load i32, i32* @WM_NOMATCH, align 4
  store i32 %275, i32* %4, align 4
  br label %696

276:                                              ; preds = %268
  br label %277

277:                                              ; preds = %276, %210
  %278 = load i8*, i8** %5, align 8
  %279 = load i8*, i8** %6, align 8
  %280 = load i32, i32* %7, align 4
  %281 = call i32 @dowild(i8* %278, i8* %279, i32 %280)
  store i32 %281, i32* %10, align 4
  %282 = load i32, i32* @WM_NOMATCH, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %294

284:                                              ; preds = %277
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %291

287:                                              ; preds = %284
  %288 = load i32, i32* %10, align 4
  %289 = load i32, i32* @WM_ABORT_TO_STARSTAR, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %291, label %293

291:                                              ; preds = %287, %284
  %292 = load i32, i32* %10, align 4
  store i32 %292, i32* %4, align 4
  br label %696

293:                                              ; preds = %287
  br label %304

294:                                              ; preds = %277
  %295 = load i32, i32* %11, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %303, label %297

297:                                              ; preds = %294
  %298 = load i8, i8* %13, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 47
  br i1 %300, label %301, label %303

301:                                              ; preds = %297
  %302 = load i32, i32* @WM_ABORT_TO_STARSTAR, align 4
  store i32 %302, i32* %4, align 4
  br label %696

303:                                              ; preds = %297, %294
  br label %304

304:                                              ; preds = %303, %293
  %305 = load i8*, i8** %6, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %6, align 8
  %307 = load i8, i8* %306, align 1
  store i8 %307, i8* %13, align 1
  br label %205

308:                                              ; preds = %209
  %309 = load i32, i32* @WM_ABORT_ALL, align 4
  store i32 %309, i32* %4, align 4
  br label %696

310:                                              ; preds = %61
  %311 = load i8*, i8** %5, align 8
  %312 = getelementptr inbounds i8, i8* %311, i32 1
  store i8* %312, i8** %5, align 8
  %313 = load i8, i8* %312, align 1
  store i8 %313, i8* %8, align 1
  %314 = load i8, i8* %8, align 1
  %315 = sext i8 %314 to i32
  %316 = load i8, i8* @NEGATE_CLASS, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %315, %317
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i32 1, i32 0
  store i32 %320, i32* %12, align 4
  %321 = load i32, i32* %12, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %310
  %324 = load i8*, i8** %5, align 8
  %325 = getelementptr inbounds i8, i8* %324, i32 1
  store i8* %325, i8** %5, align 8
  %326 = load i8, i8* %325, align 1
  store i8 %326, i8* %8, align 1
  br label %327

327:                                              ; preds = %323, %310
  store i8 0, i8* %14, align 1
  store i32 0, i32* %10, align 4
  br label %328

328:                                              ; preds = %656, %327
  %329 = load i8, i8* %8, align 1
  %330 = icmp ne i8 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %328
  %332 = load i32, i32* @WM_ABORT_ALL, align 4
  store i32 %332, i32* %4, align 4
  br label %696

333:                                              ; preds = %328
  %334 = load i8, i8* %8, align 1
  %335 = sext i8 %334 to i32
  %336 = icmp eq i32 %335, 92
  br i1 %336, label %337, label %353

337:                                              ; preds = %333
  %338 = load i8*, i8** %5, align 8
  %339 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %339, i8** %5, align 8
  %340 = load i8, i8* %339, align 1
  store i8 %340, i8* %8, align 1
  %341 = load i8, i8* %8, align 1
  %342 = icmp ne i8 %341, 0
  br i1 %342, label %345, label %343

343:                                              ; preds = %337
  %344 = load i32, i32* @WM_ABORT_ALL, align 4
  store i32 %344, i32* %4, align 4
  br label %696

345:                                              ; preds = %337
  %346 = load i8, i8* %13, align 1
  %347 = sext i8 %346 to i32
  %348 = load i8, i8* %8, align 1
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %347, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %345
  store i32 1, i32* %10, align 4
  br label %352

352:                                              ; preds = %351, %345
  br label %655

353:                                              ; preds = %333
  %354 = load i8, i8* %8, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp eq i32 %355, 45
  br i1 %356, label %357, label %429

357:                                              ; preds = %353
  %358 = load i8, i8* %14, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %429

361:                                              ; preds = %357
  %362 = load i8*, i8** %5, align 8
  %363 = getelementptr inbounds i8, i8* %362, i64 1
  %364 = load i8, i8* %363, align 1
  %365 = sext i8 %364 to i32
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %429

367:                                              ; preds = %361
  %368 = load i8*, i8** %5, align 8
  %369 = getelementptr inbounds i8, i8* %368, i64 1
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp ne i32 %371, 93
  br i1 %372, label %373, label %429

373:                                              ; preds = %367
  %374 = load i8*, i8** %5, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %5, align 8
  %376 = load i8, i8* %375, align 1
  store i8 %376, i8* %8, align 1
  %377 = load i8, i8* %8, align 1
  %378 = sext i8 %377 to i32
  %379 = icmp eq i32 %378, 92
  br i1 %379, label %380, label %389

380:                                              ; preds = %373
  %381 = load i8*, i8** %5, align 8
  %382 = getelementptr inbounds i8, i8* %381, i32 1
  store i8* %382, i8** %5, align 8
  %383 = load i8, i8* %382, align 1
  store i8 %383, i8* %8, align 1
  %384 = load i8, i8* %8, align 1
  %385 = icmp ne i8 %384, 0
  br i1 %385, label %388, label %386

386:                                              ; preds = %380
  %387 = load i32, i32* @WM_ABORT_ALL, align 4
  store i32 %387, i32* %4, align 4
  br label %696

388:                                              ; preds = %380
  br label %389

389:                                              ; preds = %388, %373
  %390 = load i8, i8* %13, align 1
  %391 = sext i8 %390 to i32
  %392 = load i8, i8* %8, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp sle i32 %391, %393
  br i1 %394, label %395, label %402

395:                                              ; preds = %389
  %396 = load i8, i8* %13, align 1
  %397 = sext i8 %396 to i32
  %398 = load i8, i8* %14, align 1
  %399 = sext i8 %398 to i32
  %400 = icmp sge i32 %397, %399
  br i1 %400, label %401, label %402

401:                                              ; preds = %395
  store i32 1, i32* %10, align 4
  br label %428

402:                                              ; preds = %395, %389
  %403 = load i32, i32* %7, align 4
  %404 = load i32, i32* @WM_CASEFOLD, align 4
  %405 = and i32 %403, %404
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %427

407:                                              ; preds = %402
  %408 = load i8, i8* %13, align 1
  %409 = call i32 @ISLOWER(i8 signext %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %427

411:                                              ; preds = %407
  %412 = load i8, i8* %13, align 1
  %413 = call signext i8 @toupper(i8 signext %412)
  store i8 %413, i8* %17, align 1
  %414 = load i8, i8* %17, align 1
  %415 = sext i8 %414 to i32
  %416 = load i8, i8* %8, align 1
  %417 = sext i8 %416 to i32
  %418 = icmp sle i32 %415, %417
  br i1 %418, label %419, label %426

419:                                              ; preds = %411
  %420 = load i8, i8* %17, align 1
  %421 = sext i8 %420 to i32
  %422 = load i8, i8* %14, align 1
  %423 = sext i8 %422 to i32
  %424 = icmp sge i32 %421, %423
  br i1 %424, label %425, label %426

425:                                              ; preds = %419
  store i32 1, i32* %10, align 4
  br label %426

426:                                              ; preds = %425, %419, %411
  br label %427

427:                                              ; preds = %426, %407, %402
  br label %428

428:                                              ; preds = %427, %401
  store i8 0, i8* %8, align 1
  br label %654

429:                                              ; preds = %367, %361, %357, %353
  %430 = load i8, i8* %8, align 1
  %431 = sext i8 %430 to i32
  %432 = icmp eq i32 %431, 91
  br i1 %432, label %433, label %645

433:                                              ; preds = %429
  %434 = load i8*, i8** %5, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 1
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i32
  %438 = icmp eq i32 %437, 58
  br i1 %438, label %439, label %645

439:                                              ; preds = %433
  %440 = load i8*, i8** %5, align 8
  %441 = getelementptr inbounds i8, i8* %440, i64 2
  store i8* %441, i8** %5, align 8
  store i8* %441, i8** %18, align 8
  br label %442

442:                                              ; preds = %454, %439
  %443 = load i8*, i8** %5, align 8
  %444 = load i8, i8* %443, align 1
  store i8 %444, i8* %8, align 1
  %445 = sext i8 %444 to i32
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %451

447:                                              ; preds = %442
  %448 = load i8, i8* %8, align 1
  %449 = sext i8 %448 to i32
  %450 = icmp ne i32 %449, 93
  br label %451

451:                                              ; preds = %447, %442
  %452 = phi i1 [ false, %442 ], [ %450, %447 ]
  br i1 %452, label %453, label %457

453:                                              ; preds = %451
  br label %454

454:                                              ; preds = %453
  %455 = load i8*, i8** %5, align 8
  %456 = getelementptr inbounds i8, i8* %455, i32 1
  store i8* %456, i8** %5, align 8
  br label %442

457:                                              ; preds = %451
  %458 = load i8, i8* %8, align 1
  %459 = icmp ne i8 %458, 0
  br i1 %459, label %462, label %460

460:                                              ; preds = %457
  %461 = load i32, i32* @WM_ABORT_ALL, align 4
  store i32 %461, i32* %4, align 4
  br label %696

462:                                              ; preds = %457
  %463 = load i8*, i8** %5, align 8
  %464 = load i8*, i8** %18, align 8
  %465 = ptrtoint i8* %463 to i64
  %466 = ptrtoint i8* %464 to i64
  %467 = sub i64 %465, %466
  %468 = sub nsw i64 %467, 1
  %469 = trunc i64 %468 to i32
  store i32 %469, i32* %19, align 4
  %470 = load i32, i32* %19, align 4
  %471 = icmp slt i32 %470, 0
  br i1 %471, label %478, label %472

472:                                              ; preds = %462
  %473 = load i8*, i8** %5, align 8
  %474 = getelementptr inbounds i8, i8* %473, i64 -1
  %475 = load i8, i8* %474, align 1
  %476 = sext i8 %475 to i32
  %477 = icmp ne i32 %476, 58
  br i1 %477, label %478, label %488

478:                                              ; preds = %472, %462
  %479 = load i8*, i8** %18, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 -2
  store i8* %480, i8** %5, align 8
  store i8 91, i8* %8, align 1
  %481 = load i8, i8* %13, align 1
  %482 = sext i8 %481 to i32
  %483 = load i8, i8* %8, align 1
  %484 = sext i8 %483 to i32
  %485 = icmp eq i32 %482, %484
  br i1 %485, label %486, label %487

486:                                              ; preds = %478
  store i32 1, i32* %10, align 4
  br label %487

487:                                              ; preds = %486, %478
  br label %656

488:                                              ; preds = %472
  %489 = load i8*, i8** %18, align 8
  %490 = load i32, i32* %19, align 4
  %491 = call i32 @CC_EQ(i8* %489, i32 %490, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %493, label %499

493:                                              ; preds = %488
  %494 = load i8, i8* %13, align 1
  %495 = call i32 @ISALNUM(i8 signext %494)
  %496 = icmp ne i32 %495, 0
  br i1 %496, label %497, label %498

497:                                              ; preds = %493
  store i32 1, i32* %10, align 4
  br label %498

498:                                              ; preds = %497, %493
  br label %644

499:                                              ; preds = %488
  %500 = load i8*, i8** %18, align 8
  %501 = load i32, i32* %19, align 4
  %502 = call i32 @CC_EQ(i8* %500, i32 %501, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %510

504:                                              ; preds = %499
  %505 = load i8, i8* %13, align 1
  %506 = call i32 @ISALPHA(i8 signext %505)
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %509

508:                                              ; preds = %504
  store i32 1, i32* %10, align 4
  br label %509

509:                                              ; preds = %508, %504
  br label %643

510:                                              ; preds = %499
  %511 = load i8*, i8** %18, align 8
  %512 = load i32, i32* %19, align 4
  %513 = call i32 @CC_EQ(i8* %511, i32 %512, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %521

515:                                              ; preds = %510
  %516 = load i8, i8* %13, align 1
  %517 = call i32 @ISBLANK(i8 signext %516)
  %518 = icmp ne i32 %517, 0
  br i1 %518, label %519, label %520

519:                                              ; preds = %515
  store i32 1, i32* %10, align 4
  br label %520

520:                                              ; preds = %519, %515
  br label %642

521:                                              ; preds = %510
  %522 = load i8*, i8** %18, align 8
  %523 = load i32, i32* %19, align 4
  %524 = call i32 @CC_EQ(i8* %522, i32 %523, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %532

526:                                              ; preds = %521
  %527 = load i8, i8* %13, align 1
  %528 = call i32 @ISCNTRL(i8 signext %527)
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %531

530:                                              ; preds = %526
  store i32 1, i32* %10, align 4
  br label %531

531:                                              ; preds = %530, %526
  br label %641

532:                                              ; preds = %521
  %533 = load i8*, i8** %18, align 8
  %534 = load i32, i32* %19, align 4
  %535 = call i32 @CC_EQ(i8* %533, i32 %534, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %543

537:                                              ; preds = %532
  %538 = load i8, i8* %13, align 1
  %539 = call i32 @ISDIGIT(i8 signext %538)
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %542

541:                                              ; preds = %537
  store i32 1, i32* %10, align 4
  br label %542

542:                                              ; preds = %541, %537
  br label %640

543:                                              ; preds = %532
  %544 = load i8*, i8** %18, align 8
  %545 = load i32, i32* %19, align 4
  %546 = call i32 @CC_EQ(i8* %544, i32 %545, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %554

548:                                              ; preds = %543
  %549 = load i8, i8* %13, align 1
  %550 = call i32 @ISGRAPH(i8 signext %549)
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %553

552:                                              ; preds = %548
  store i32 1, i32* %10, align 4
  br label %553

553:                                              ; preds = %552, %548
  br label %639

554:                                              ; preds = %543
  %555 = load i8*, i8** %18, align 8
  %556 = load i32, i32* %19, align 4
  %557 = call i32 @CC_EQ(i8* %555, i32 %556, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %565

559:                                              ; preds = %554
  %560 = load i8, i8* %13, align 1
  %561 = call i32 @ISLOWER(i8 signext %560)
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %559
  store i32 1, i32* %10, align 4
  br label %564

564:                                              ; preds = %563, %559
  br label %638

565:                                              ; preds = %554
  %566 = load i8*, i8** %18, align 8
  %567 = load i32, i32* %19, align 4
  %568 = call i32 @CC_EQ(i8* %566, i32 %567, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %569 = icmp ne i32 %568, 0
  br i1 %569, label %570, label %576

570:                                              ; preds = %565
  %571 = load i8, i8* %13, align 1
  %572 = call i32 @ISPRINT(i8 signext %571)
  %573 = icmp ne i32 %572, 0
  br i1 %573, label %574, label %575

574:                                              ; preds = %570
  store i32 1, i32* %10, align 4
  br label %575

575:                                              ; preds = %574, %570
  br label %637

576:                                              ; preds = %565
  %577 = load i8*, i8** %18, align 8
  %578 = load i32, i32* %19, align 4
  %579 = call i32 @CC_EQ(i8* %577, i32 %578, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %581, label %587

581:                                              ; preds = %576
  %582 = load i8, i8* %13, align 1
  %583 = call i32 @ISPUNCT(i8 signext %582)
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %586

585:                                              ; preds = %581
  store i32 1, i32* %10, align 4
  br label %586

586:                                              ; preds = %585, %581
  br label %636

587:                                              ; preds = %576
  %588 = load i8*, i8** %18, align 8
  %589 = load i32, i32* %19, align 4
  %590 = call i32 @CC_EQ(i8* %588, i32 %589, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %591 = icmp ne i32 %590, 0
  br i1 %591, label %592, label %598

592:                                              ; preds = %587
  %593 = load i8, i8* %13, align 1
  %594 = call i32 @ISSPACE(i8 signext %593)
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %597

596:                                              ; preds = %592
  store i32 1, i32* %10, align 4
  br label %597

597:                                              ; preds = %596, %592
  br label %635

598:                                              ; preds = %587
  %599 = load i8*, i8** %18, align 8
  %600 = load i32, i32* %19, align 4
  %601 = call i32 @CC_EQ(i8* %599, i32 %600, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %620

603:                                              ; preds = %598
  %604 = load i8, i8* %13, align 1
  %605 = call i64 @ISUPPER(i8 signext %604)
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %608

607:                                              ; preds = %603
  store i32 1, i32* %10, align 4
  br label %619

608:                                              ; preds = %603
  %609 = load i32, i32* %7, align 4
  %610 = load i32, i32* @WM_CASEFOLD, align 4
  %611 = and i32 %609, %610
  %612 = icmp ne i32 %611, 0
  br i1 %612, label %613, label %618

613:                                              ; preds = %608
  %614 = load i8, i8* %13, align 1
  %615 = call i32 @ISLOWER(i8 signext %614)
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %618

617:                                              ; preds = %613
  store i32 1, i32* %10, align 4
  br label %618

618:                                              ; preds = %617, %613, %608
  br label %619

619:                                              ; preds = %618, %607
  br label %634

620:                                              ; preds = %598
  %621 = load i8*, i8** %18, align 8
  %622 = load i32, i32* %19, align 4
  %623 = call i32 @CC_EQ(i8* %621, i32 %622, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %624 = icmp ne i32 %623, 0
  br i1 %624, label %625, label %631

625:                                              ; preds = %620
  %626 = load i8, i8* %13, align 1
  %627 = call i32 @ISXDIGIT(i8 signext %626)
  %628 = icmp ne i32 %627, 0
  br i1 %628, label %629, label %630

629:                                              ; preds = %625
  store i32 1, i32* %10, align 4
  br label %630

630:                                              ; preds = %629, %625
  br label %633

631:                                              ; preds = %620
  %632 = load i32, i32* @WM_ABORT_ALL, align 4
  store i32 %632, i32* %4, align 4
  br label %696

633:                                              ; preds = %630
  br label %634

634:                                              ; preds = %633, %619
  br label %635

635:                                              ; preds = %634, %597
  br label %636

636:                                              ; preds = %635, %586
  br label %637

637:                                              ; preds = %636, %575
  br label %638

638:                                              ; preds = %637, %564
  br label %639

639:                                              ; preds = %638, %553
  br label %640

640:                                              ; preds = %639, %542
  br label %641

641:                                              ; preds = %640, %531
  br label %642

642:                                              ; preds = %641, %520
  br label %643

643:                                              ; preds = %642, %509
  br label %644

644:                                              ; preds = %643, %498
  store i8 0, i8* %8, align 1
  br label %653

645:                                              ; preds = %433, %429
  %646 = load i8, i8* %13, align 1
  %647 = sext i8 %646 to i32
  %648 = load i8, i8* %8, align 1
  %649 = sext i8 %648 to i32
  %650 = icmp eq i32 %647, %649
  br i1 %650, label %651, label %652

651:                                              ; preds = %645
  store i32 1, i32* %10, align 4
  br label %652

652:                                              ; preds = %651, %645
  br label %653

653:                                              ; preds = %652, %644
  br label %654

654:                                              ; preds = %653, %428
  br label %655

655:                                              ; preds = %654, %352
  br label %656

656:                                              ; preds = %655, %487
  %657 = load i8, i8* %8, align 1
  store i8 %657, i8* %14, align 1
  %658 = load i8*, i8** %5, align 8
  %659 = getelementptr inbounds i8, i8* %658, i32 1
  store i8* %659, i8** %5, align 8
  %660 = load i8, i8* %659, align 1
  store i8 %660, i8* %8, align 1
  %661 = sext i8 %660 to i32
  %662 = icmp ne i32 %661, 93
  br i1 %662, label %328, label %663

663:                                              ; preds = %656
  %664 = load i32, i32* %10, align 4
  %665 = load i32, i32* %12, align 4
  %666 = icmp eq i32 %664, %665
  br i1 %666, label %676, label %667

667:                                              ; preds = %663
  %668 = load i32, i32* %7, align 4
  %669 = load i32, i32* @WM_PATHNAME, align 4
  %670 = and i32 %668, %669
  %671 = icmp ne i32 %670, 0
  br i1 %671, label %672, label %678

672:                                              ; preds = %667
  %673 = load i8, i8* %13, align 1
  %674 = sext i8 %673 to i32
  %675 = icmp eq i32 %674, 47
  br i1 %675, label %676, label %678

676:                                              ; preds = %672, %663
  %677 = load i32, i32* @WM_NOMATCH, align 4
  store i32 %677, i32* %4, align 4
  br label %696

678:                                              ; preds = %672, %667
  br label %680

679:                                              ; preds = %201
  br label %680

680:                                              ; preds = %679, %678, %88, %76
  %681 = load i8*, i8** %6, align 8
  %682 = getelementptr inbounds i8, i8* %681, i32 1
  store i8* %682, i8** %6, align 8
  %683 = load i8*, i8** %5, align 8
  %684 = getelementptr inbounds i8, i8* %683, i32 1
  store i8* %684, i8** %5, align 8
  br label %21

685:                                              ; preds = %21
  %686 = load i8*, i8** %6, align 8
  %687 = load i8, i8* %686, align 1
  %688 = sext i8 %687 to i32
  %689 = icmp ne i32 %688, 0
  br i1 %689, label %690, label %692

690:                                              ; preds = %685
  %691 = load i32, i32* @WM_NOMATCH, align 4
  br label %694

692:                                              ; preds = %685
  %693 = load i32, i32* @WM_MATCH, align 4
  br label %694

694:                                              ; preds = %692, %690
  %695 = phi i32 [ %691, %690 ], [ %693, %692 ]
  store i32 %695, i32* %4, align 4
  br label %696

696:                                              ; preds = %694, %676, %631, %460, %386, %343, %331, %308, %301, %291, %274, %199, %184, %181, %156, %86, %74, %35
  %697 = load i32, i32* %4, align 4
  ret i32 %697
}

declare dso_local i64 @ISUPPER(i8 signext) #1

declare dso_local signext i8 @tolower(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @is_glob_special(i8 signext) #1

declare dso_local i32 @ISLOWER(i8 signext) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @CC_EQ(i8*, i32, i8*) #1

declare dso_local i32 @ISALNUM(i8 signext) #1

declare dso_local i32 @ISALPHA(i8 signext) #1

declare dso_local i32 @ISBLANK(i8 signext) #1

declare dso_local i32 @ISCNTRL(i8 signext) #1

declare dso_local i32 @ISDIGIT(i8 signext) #1

declare dso_local i32 @ISGRAPH(i8 signext) #1

declare dso_local i32 @ISPRINT(i8 signext) #1

declare dso_local i32 @ISPUNCT(i8 signext) #1

declare dso_local i32 @ISSPACE(i8 signext) #1

declare dso_local i32 @ISXDIGIT(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
