; ModuleID = '/home/carl/AnghaBench/i3/i3-config-wizard/extr_main.c_rewrite_binding.c'
source_filename = "/home/carl/AnghaBench/i3/i3-config-wizard/extr_main.c_rewrite_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i32* }

@INITIAL = common dso_local global i64 0, align 8
@state = common dso_local global i64 0, align 8
@statelist_idx = common dso_local global i32 0, align 4
@tokens = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"number\00", align 1
@errno = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@LONG_MIN = common dso_local global i64 0, align 8
@LONG_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"string\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"word\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rewrite_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rewrite_binding(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %16 = load i64, i64* @INITIAL, align 8
  store i64 %16, i64* @state, align 8
  store i32 1, i32* @statelist_idx, align 4
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @strlen(i8* %18)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  store i8* null, i8** %8, align 8
  br label %21

21:                                               ; preds = %414, %1
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = load i64, i64* %5, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %415

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %47, %29
  %31 = load i8*, i8** %4, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 9
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %30
  %41 = load i8*, i8** %4, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br label %45

45:                                               ; preds = %40, %35
  %46 = phi i1 [ false, %35 ], [ %44, %40 ]
  br i1 %46, label %47, label %50

47:                                               ; preds = %45
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  br label %30

50:                                               ; preds = %45
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** @tokens, align 8
  %52 = load i64, i64* @state, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %52
  store %struct.TYPE_5__* %53, %struct.TYPE_5__** %9, align 8
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %411, %50
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %414

60:                                               ; preds = %54
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %7, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 39
  br i1 %73, label %74, label %117

74:                                               ; preds = %60
  %75 = load i8*, i8** %4, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = sub nsw i32 %83, 1
  %85 = call i64 @strncasecmp(i8* %75, i8* %79, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %116

87:                                               ; preds = %74
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 1
  %100 = call i32 @push_string(i32* %95, i8* %99)
  br label %101

101:                                              ; preds = %92, %87
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @strlen(i8* %104)
  %106 = sub nsw i32 %105, 1
  %107 = load i8*, i8** %4, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %4, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %111 = call i8* @next_state(%struct.TYPE_6__* %110)
  store i8* %111, i8** %8, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = load i8*, i8** %8, align 8
  store i8* %114, i8** %2, align 8
  br label %416

115:                                              ; preds = %101
  br label %414

116:                                              ; preds = %74
  br label %411

117:                                              ; preds = %60
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i8*, i8** %119, align 8
  %121 = call i64 @strcmp(i8* %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %168

123:                                              ; preds = %117
  store i8* null, i8** %10, align 8
  store i64 0, i64* @errno, align 8
  %124 = load i8*, i8** %4, align 8
  %125 = call i64 @strtol(i8* %124, i8** %10, i32 10)
  store i64 %125, i64* %11, align 8
  %126 = load i64, i64* @errno, align 8
  %127 = load i64, i64* @ERANGE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* @LONG_MIN, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %143, label %133

133:                                              ; preds = %129
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* @LONG_MAX, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %133, %123
  %138 = load i64, i64* @errno, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i64, i64* %11, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140, %133, %129
  br label %411

144:                                              ; preds = %140, %137
  %145 = load i8*, i8** %10, align 8
  %146 = load i8*, i8** %4, align 8
  %147 = icmp eq i8* %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %411

149:                                              ; preds = %144
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load i64, i64* %11, align 8
  %159 = call i32 @push_long(i32* %157, i64 %158)
  br label %160

160:                                              ; preds = %154, %149
  %161 = load i8*, i8** %10, align 8
  store i8* %161, i8** %4, align 8
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %163 = call i8* @next_state(%struct.TYPE_6__* %162)
  store i8* %163, i8** %8, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i8*, i8** %8, align 8
  store i8* %166, i8** %2, align 8
  br label %416

167:                                              ; preds = %160
  br label %414

168:                                              ; preds = %117
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i64 @strcmp(i8* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %173 = icmp eq i64 %172, 0
  br i1 %173, label %180, label %174

174:                                              ; preds = %168
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = call i64 @strcmp(i8* %177, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %179 = icmp eq i64 %178, 0
  br i1 %179, label %180, label %379

180:                                              ; preds = %174, %168
  %181 = load i8*, i8** %4, align 8
  store i8* %181, i8** %12, align 8
  %182 = load i8*, i8** %4, align 8
  %183 = load i8, i8* %182, align 1
  %184 = sext i8 %183 to i32
  %185 = icmp eq i32 %184, 34
  br i1 %185, label %186, label %215

186:                                              ; preds = %180
  %187 = load i8*, i8** %12, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %12, align 8
  %189 = load i8*, i8** %4, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %4, align 8
  br label %191

191:                                              ; preds = %211, %186
  %192 = load i8*, i8** %4, align 8
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %209

196:                                              ; preds = %191
  %197 = load i8*, i8** %4, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  %200 = icmp ne i32 %199, 34
  br i1 %200, label %207, label %201

201:                                              ; preds = %196
  %202 = load i8*, i8** %4, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 -1
  %204 = load i8, i8* %203, align 1
  %205 = sext i8 %204 to i32
  %206 = icmp eq i32 %205, 92
  br label %207

207:                                              ; preds = %201, %196
  %208 = phi i1 [ true, %196 ], [ %206, %201 ]
  br label %209

209:                                              ; preds = %207, %191
  %210 = phi i1 [ false, %191 ], [ %208, %207 ]
  br i1 %210, label %211, label %214

211:                                              ; preds = %209
  %212 = load i8*, i8** %4, align 8
  %213 = getelementptr inbounds i8, i8* %212, i32 1
  store i8* %213, i8** %4, align 8
  br label %191

214:                                              ; preds = %209
  br label %293

215:                                              ; preds = %180
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = sext i8 %220 to i32
  %222 = icmp eq i32 %221, 115
  br i1 %222, label %223, label %245

223:                                              ; preds = %215
  br label %224

224:                                              ; preds = %241, %223
  %225 = load i8*, i8** %4, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %239

229:                                              ; preds = %224
  %230 = load i8*, i8** %4, align 8
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp ne i32 %232, 13
  br i1 %233, label %234, label %239

234:                                              ; preds = %229
  %235 = load i8*, i8** %4, align 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %237, 10
  br label %239

239:                                              ; preds = %234, %229, %224
  %240 = phi i1 [ false, %229 ], [ false, %224 ], [ %238, %234 ]
  br i1 %240, label %241, label %244

241:                                              ; preds = %239
  %242 = load i8*, i8** %4, align 8
  %243 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %243, i8** %4, align 8
  br label %224

244:                                              ; preds = %239
  br label %292

245:                                              ; preds = %215
  br label %246

246:                                              ; preds = %288, %245
  %247 = load i8*, i8** %4, align 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 32
  br i1 %250, label %251, label %286

251:                                              ; preds = %246
  %252 = load i8*, i8** %4, align 8
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp ne i32 %254, 9
  br i1 %255, label %256, label %286

256:                                              ; preds = %251
  %257 = load i8*, i8** %4, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 93
  br i1 %260, label %261, label %286

261:                                              ; preds = %256
  %262 = load i8*, i8** %4, align 8
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp ne i32 %264, 44
  br i1 %265, label %266, label %286

266:                                              ; preds = %261
  %267 = load i8*, i8** %4, align 8
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp ne i32 %269, 59
  br i1 %270, label %271, label %286

271:                                              ; preds = %266
  %272 = load i8*, i8** %4, align 8
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 13
  br i1 %275, label %276, label %286

276:                                              ; preds = %271
  %277 = load i8*, i8** %4, align 8
  %278 = load i8, i8* %277, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp ne i32 %279, 10
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load i8*, i8** %4, align 8
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp ne i32 %284, 0
  br label %286

286:                                              ; preds = %281, %276, %271, %266, %261, %256, %251, %246
  %287 = phi i1 [ false, %276 ], [ false, %271 ], [ false, %266 ], [ false, %261 ], [ false, %256 ], [ false, %251 ], [ false, %246 ], [ %285, %281 ]
  br i1 %287, label %288, label %291

288:                                              ; preds = %286
  %289 = load i8*, i8** %4, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %4, align 8
  br label %246

291:                                              ; preds = %286
  br label %292

292:                                              ; preds = %291, %244
  br label %293

293:                                              ; preds = %292, %214
  %294 = load i8*, i8** %4, align 8
  %295 = load i8*, i8** %12, align 8
  %296 = icmp ne i8* %294, %295
  br i1 %296, label %297, label %378

297:                                              ; preds = %293
  %298 = load i8*, i8** %4, align 8
  %299 = load i8*, i8** %12, align 8
  %300 = ptrtoint i8* %298 to i64
  %301 = ptrtoint i8* %299 to i64
  %302 = sub i64 %300, %301
  %303 = add nsw i64 %302, 1
  %304 = trunc i64 %303 to i32
  %305 = call i8* @scalloc(i32 %304, i32 1)
  store i8* %305, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %306

306:                                              ; preds = %345, %297
  %307 = load i32, i32* %14, align 4
  %308 = sext i32 %307 to i64
  %309 = load i8*, i8** %4, align 8
  %310 = load i8*, i8** %12, align 8
  %311 = ptrtoint i8* %309 to i64
  %312 = ptrtoint i8* %310 to i64
  %313 = sub i64 %311, %312
  %314 = icmp slt i64 %308, %313
  br i1 %314, label %315, label %350

315:                                              ; preds = %306
  %316 = load i8*, i8** %12, align 8
  %317 = load i32, i32* %14, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %316, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = sext i8 %320 to i32
  %322 = icmp eq i32 %321, 92
  br i1 %322, label %323, label %335

323:                                              ; preds = %315
  %324 = load i8*, i8** %12, align 8
  %325 = load i32, i32* %14, align 4
  %326 = add nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8, i8* %324, i64 %327
  %329 = load i8, i8* %328, align 1
  %330 = sext i8 %329 to i32
  %331 = icmp eq i32 %330, 34
  br i1 %331, label %332, label %335

332:                                              ; preds = %323
  %333 = load i32, i32* %14, align 4
  %334 = add nsw i32 %333, 1
  store i32 %334, i32* %14, align 4
  br label %335

335:                                              ; preds = %332, %323, %315
  %336 = load i8*, i8** %12, align 8
  %337 = load i32, i32* %14, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = load i8, i8* %339, align 1
  %341 = load i8*, i8** %13, align 8
  %342 = load i32, i32* %15, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i8, i8* %341, i64 %343
  store i8 %340, i8* %344, align 1
  br label %345

345:                                              ; preds = %335
  %346 = load i32, i32* %14, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %14, align 4
  %348 = load i32, i32* %15, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %15, align 4
  br label %306

350:                                              ; preds = %306
  %351 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 1
  %353 = load i32*, i32** %352, align 8
  %354 = icmp ne i32* %353, null
  br i1 %354, label %355, label %361

355:                                              ; preds = %350
  %356 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %357 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = load i8*, i8** %13, align 8
  %360 = call i32 @push_string(i32* %358, i8* %359)
  br label %361

361:                                              ; preds = %355, %350
  %362 = load i8*, i8** %13, align 8
  %363 = call i32 @free(i8* %362)
  %364 = load i8*, i8** %4, align 8
  %365 = load i8, i8* %364, align 1
  %366 = sext i8 %365 to i32
  %367 = icmp eq i32 %366, 34
  br i1 %367, label %368, label %371

368:                                              ; preds = %361
  %369 = load i8*, i8** %4, align 8
  %370 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %370, i8** %4, align 8
  br label %371

371:                                              ; preds = %368, %361
  %372 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %373 = call i8* @next_state(%struct.TYPE_6__* %372)
  store i8* %373, i8** %8, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %375, label %377

375:                                              ; preds = %371
  %376 = load i8*, i8** %8, align 8
  store i8* %376, i8** %2, align 8
  br label %416

377:                                              ; preds = %371
  br label %414

378:                                              ; preds = %293
  br label %379

379:                                              ; preds = %378, %174
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = call i64 @strcmp(i8* %382, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %384 = icmp eq i64 %383, 0
  br i1 %384, label %385, label %410

385:                                              ; preds = %379
  %386 = load i8*, i8** %4, align 8
  %387 = load i8, i8* %386, align 1
  %388 = sext i8 %387 to i32
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %400, label %390

390:                                              ; preds = %385
  %391 = load i8*, i8** %4, align 8
  %392 = load i8, i8* %391, align 1
  %393 = sext i8 %392 to i32
  %394 = icmp eq i32 %393, 10
  br i1 %394, label %400, label %395

395:                                              ; preds = %390
  %396 = load i8*, i8** %4, align 8
  %397 = load i8, i8* %396, align 1
  %398 = sext i8 %397 to i32
  %399 = icmp eq i32 %398, 13
  br i1 %399, label %400, label %409

400:                                              ; preds = %395, %390, %385
  %401 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %402 = call i8* @next_state(%struct.TYPE_6__* %401)
  store i8* %402, i8** %8, align 8
  %403 = icmp ne i8* %402, null
  br i1 %403, label %404, label %406

404:                                              ; preds = %400
  %405 = load i8*, i8** %8, align 8
  store i8* %405, i8** %2, align 8
  br label %416

406:                                              ; preds = %400
  %407 = load i8*, i8** %4, align 8
  %408 = getelementptr inbounds i8, i8* %407, i32 1
  store i8* %408, i8** %4, align 8
  br label %414

409:                                              ; preds = %395
  br label %410

410:                                              ; preds = %409, %379
  br label %411

411:                                              ; preds = %410, %148, %143, %116
  %412 = load i32, i32* %6, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %6, align 4
  br label %54

414:                                              ; preds = %406, %377, %167, %115, %54
  br label %21

415:                                              ; preds = %21
  store i8* null, i8** %2, align 8
  br label %416

416:                                              ; preds = %415, %404, %375, %165, %113
  %417 = load i8*, i8** %2, align 8
  ret i8* %417
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncasecmp(i8*, i8*, i32) #1

declare dso_local i32 @push_string(i32*, i8*) #1

declare dso_local i8* @next_state(%struct.TYPE_6__*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @push_long(i32*, i64) #1

declare dso_local i8* @scalloc(i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
