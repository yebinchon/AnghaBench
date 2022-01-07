; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decToString.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decToString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64*, i32, i32 }

@DECSPECIAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Inf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inity\00", align 1
@DECSNAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@DECDPUN = common dso_local global i64 0, align 8
@DECUNCONT = common dso_local global i32 0, align 4
@DECUNRESU = common dso_local global i32 0, align 4
@DECUNUSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i32)* @decToString to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decToString(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %7, align 8
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %11, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @D2U(i32 %27)
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %24, i64 %29
  %31 = getelementptr inbounds i64, i64* %30, i64 -1
  store i64* %31, i64** %12, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = call i64 @decNumberIsNegative(%struct.TYPE_7__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load i8*, i8** %11, align 8
  store i8 45, i8* %36, align 1
  %37 = load i8*, i8** %11, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %11, align 8
  br label %39

39:                                               ; preds = %35, %3
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DECSPECIAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %87

46:                                               ; preds = %39
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %48 = call i64 @decNumberIsInfinite(%struct.TYPE_7__* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 @strcpy(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = call i32 @strcpy(i8* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %377

56:                                               ; preds = %46
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @DECSNAN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i8*, i8** %11, align 8
  store i8 115, i8* %64, align 1
  %65 = load i8*, i8** %11, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %11, align 8
  br label %67

67:                                               ; preds = %63, %56
  %68 = load i8*, i8** %11, align 8
  %69 = call i32 @strcpy(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i8*, i8** %11, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  store i8* %71, i8** %11, align 8
  %72 = load i64, i64* %7, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %67
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %86

85:                                               ; preds = %80, %67
  br label %377

86:                                               ; preds = %80, %74
  br label %87

87:                                               ; preds = %86, %39
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = call i64 @MSUDIGITS(i32 %90)
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = add nsw i64 %92, -1
  store i64 %93, i64* %10, align 8
  %94 = load i64, i64* %7, align 8
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %128

96:                                               ; preds = %87
  br label %97

97:                                               ; preds = %123, %96
  %98 = load i64*, i64** %12, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = load i64*, i64** %100, align 8
  %102 = icmp uge i64* %98, %101
  br i1 %102, label %103, label %126

103:                                              ; preds = %97
  %104 = load i64*, i64** %12, align 8
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %13, align 8
  br label %106

106:                                              ; preds = %115, %103
  %107 = load i64, i64* %10, align 8
  %108 = icmp sge i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %106
  %110 = load i64, i64* %13, align 8
  %111 = load i64, i64* %10, align 8
  %112 = load i8*, i8** %11, align 8
  %113 = load i64, i64* %14, align 8
  %114 = call i32 @TODIGIT(i64 %110, i64 %111, i8* %112, i64 %113)
  br label %115

115:                                              ; preds = %109
  %116 = load i8*, i8** %11, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %11, align 8
  %118 = load i64, i64* %10, align 8
  %119 = add nsw i64 %118, -1
  store i64 %119, i64* %10, align 8
  br label %106

120:                                              ; preds = %106
  %121 = load i64, i64* @DECDPUN, align 8
  %122 = sub nsw i64 %121, 1
  store i64 %122, i64* %10, align 8
  br label %123

123:                                              ; preds = %120
  %124 = load i64*, i64** %12, align 8
  %125 = getelementptr inbounds i64, i64* %124, i32 -1
  store i64* %125, i64** %12, align 8
  br label %97

126:                                              ; preds = %97
  %127 = load i8*, i8** %11, align 8
  store i8 0, i8* %127, align 1
  br label %377

128:                                              ; preds = %87
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = load i64, i64* %7, align 8
  %134 = add nsw i64 %132, %133
  store i64 %134, i64* %9, align 8
  store i64 0, i64* %8, align 8
  %135 = load i64, i64* %7, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %128
  %138 = load i64, i64* %9, align 8
  %139 = icmp slt i64 %138, -5
  br i1 %139, label %140, label %192

140:                                              ; preds = %137, %128
  %141 = load i64, i64* %7, align 8
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %141, %145
  %147 = sub nsw i64 %146, 1
  store i64 %147, i64* %8, align 8
  store i64 1, i64* %9, align 8
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %191

150:                                              ; preds = %140
  %151 = load i64, i64* %8, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %191

153:                                              ; preds = %150
  %154 = load i64, i64* %8, align 8
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i64, i64* %8, align 8
  %158 = sub nsw i64 0, %157
  %159 = srem i64 %158, 3
  store i64 %159, i64* %15, align 8
  %160 = load i64, i64* %15, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %156
  %163 = load i64, i64* %15, align 8
  %164 = sub nsw i64 3, %163
  store i64 %164, i64* %15, align 8
  br label %165

165:                                              ; preds = %162, %156
  br label %169

166:                                              ; preds = %153
  %167 = load i64, i64* %8, align 8
  %168 = srem i64 %167, 3
  store i64 %168, i64* %15, align 8
  br label %169

169:                                              ; preds = %166, %165
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* %15, align 8
  %172 = sub nsw i64 %170, %171
  store i64 %172, i64* %8, align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %174 = call i32 @ISZERO(%struct.TYPE_7__* %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %180, label %176

176:                                              ; preds = %169
  %177 = load i64, i64* %15, align 8
  %178 = load i64, i64* %9, align 8
  %179 = add nsw i64 %178, %177
  store i64 %179, i64* %9, align 8
  br label %190

180:                                              ; preds = %169
  %181 = load i64, i64* %15, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = load i64, i64* %8, align 8
  %185 = add nsw i64 %184, 3
  store i64 %185, i64* %8, align 8
  %186 = load i64, i64* %15, align 8
  %187 = sub nsw i64 2, %186
  %188 = sub nsw i64 0, %187
  store i64 %188, i64* %9, align 8
  br label %189

189:                                              ; preds = %183, %180
  br label %190

190:                                              ; preds = %189, %176
  br label %191

191:                                              ; preds = %190, %150, %140
  br label %192

192:                                              ; preds = %191, %137
  %193 = load i64*, i64** %12, align 8
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %13, align 8
  %195 = load i64, i64* %9, align 8
  %196 = icmp sgt i64 %195, 0
  br i1 %196, label %197, label %285

197:                                              ; preds = %192
  %198 = load i64, i64* %9, align 8
  store i64 %198, i64* %16, align 8
  br label %199

199:                                              ; preds = %225, %197
  %200 = load i64, i64* %9, align 8
  %201 = icmp sgt i64 %200, 0
  br i1 %201, label %202, label %232

202:                                              ; preds = %199
  %203 = load i64, i64* %10, align 8
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %205, label %219

205:                                              ; preds = %202
  %206 = load i64*, i64** %12, align 8
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 1
  %209 = load i64*, i64** %208, align 8
  %210 = icmp eq i64* %206, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  br label %232

212:                                              ; preds = %205
  %213 = load i64*, i64** %12, align 8
  %214 = getelementptr inbounds i64, i64* %213, i32 -1
  store i64* %214, i64** %12, align 8
  %215 = load i64, i64* @DECDPUN, align 8
  %216 = sub nsw i64 %215, 1
  store i64 %216, i64* %10, align 8
  %217 = load i64*, i64** %12, align 8
  %218 = load i64, i64* %217, align 8
  store i64 %218, i64* %13, align 8
  br label %219

219:                                              ; preds = %212, %202
  %220 = load i64, i64* %13, align 8
  %221 = load i64, i64* %10, align 8
  %222 = load i8*, i8** %11, align 8
  %223 = load i64, i64* %14, align 8
  %224 = call i32 @TODIGIT(i64 %220, i64 %221, i8* %222, i64 %223)
  br label %225

225:                                              ; preds = %219
  %226 = load i64, i64* %9, align 8
  %227 = add nsw i64 %226, -1
  store i64 %227, i64* %9, align 8
  %228 = load i8*, i8** %11, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %11, align 8
  %230 = load i64, i64* %10, align 8
  %231 = add nsw i64 %230, -1
  store i64 %231, i64* %10, align 8
  br label %199

232:                                              ; preds = %211, %199
  %233 = load i64, i64* %16, align 8
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = icmp slt i64 %233, %237
  br i1 %238, label %239, label %272

239:                                              ; preds = %232
  %240 = load i8*, i8** %11, align 8
  store i8 46, i8* %240, align 1
  %241 = load i8*, i8** %11, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %11, align 8
  br label %243

243:                                              ; preds = %266, %239
  %244 = load i64, i64* %10, align 8
  %245 = icmp slt i64 %244, 0
  br i1 %245, label %246, label %260

246:                                              ; preds = %243
  %247 = load i64*, i64** %12, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = load i64*, i64** %249, align 8
  %251 = icmp eq i64* %247, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  br label %271

253:                                              ; preds = %246
  %254 = load i64*, i64** %12, align 8
  %255 = getelementptr inbounds i64, i64* %254, i32 -1
  store i64* %255, i64** %12, align 8
  %256 = load i64, i64* @DECDPUN, align 8
  %257 = sub nsw i64 %256, 1
  store i64 %257, i64* %10, align 8
  %258 = load i64*, i64** %12, align 8
  %259 = load i64, i64* %258, align 8
  store i64 %259, i64* %13, align 8
  br label %260

260:                                              ; preds = %253, %243
  %261 = load i64, i64* %13, align 8
  %262 = load i64, i64* %10, align 8
  %263 = load i8*, i8** %11, align 8
  %264 = load i64, i64* %14, align 8
  %265 = call i32 @TODIGIT(i64 %261, i64 %262, i8* %263, i64 %264)
  br label %266

266:                                              ; preds = %260
  %267 = load i8*, i8** %11, align 8
  %268 = getelementptr inbounds i8, i8* %267, i32 1
  store i8* %268, i8** %11, align 8
  %269 = load i64, i64* %10, align 8
  %270 = add nsw i64 %269, -1
  store i64 %270, i64* %10, align 8
  br label %243

271:                                              ; preds = %252
  br label %284

272:                                              ; preds = %232
  br label %273

273:                                              ; preds = %278, %272
  %274 = load i64, i64* %9, align 8
  %275 = icmp sgt i64 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %273
  %277 = load i8*, i8** %11, align 8
  store i8 48, i8* %277, align 1
  br label %278

278:                                              ; preds = %276
  %279 = load i64, i64* %9, align 8
  %280 = add nsw i64 %279, -1
  store i64 %280, i64* %9, align 8
  %281 = load i8*, i8** %11, align 8
  %282 = getelementptr inbounds i8, i8* %281, i32 1
  store i8* %282, i8** %11, align 8
  br label %273

283:                                              ; preds = %273
  br label %284

284:                                              ; preds = %283, %271
  br label %332

285:                                              ; preds = %192
  %286 = load i8*, i8** %11, align 8
  store i8 48, i8* %286, align 1
  %287 = load i8*, i8** %11, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %11, align 8
  %289 = load i8*, i8** %11, align 8
  store i8 46, i8* %289, align 1
  %290 = load i8*, i8** %11, align 8
  %291 = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %291, i8** %11, align 8
  br label %292

292:                                              ; preds = %297, %285
  %293 = load i64, i64* %9, align 8
  %294 = icmp slt i64 %293, 0
  br i1 %294, label %295, label %302

295:                                              ; preds = %292
  %296 = load i8*, i8** %11, align 8
  store i8 48, i8* %296, align 1
  br label %297

297:                                              ; preds = %295
  %298 = load i64, i64* %9, align 8
  %299 = add nsw i64 %298, 1
  store i64 %299, i64* %9, align 8
  %300 = load i8*, i8** %11, align 8
  %301 = getelementptr inbounds i8, i8* %300, i32 1
  store i8* %301, i8** %11, align 8
  br label %292

302:                                              ; preds = %292
  br label %303

303:                                              ; preds = %326, %302
  %304 = load i64, i64* %10, align 8
  %305 = icmp slt i64 %304, 0
  br i1 %305, label %306, label %320

306:                                              ; preds = %303
  %307 = load i64*, i64** %12, align 8
  %308 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %308, i32 0, i32 1
  %310 = load i64*, i64** %309, align 8
  %311 = icmp eq i64* %307, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %306
  br label %331

313:                                              ; preds = %306
  %314 = load i64*, i64** %12, align 8
  %315 = getelementptr inbounds i64, i64* %314, i32 -1
  store i64* %315, i64** %12, align 8
  %316 = load i64, i64* @DECDPUN, align 8
  %317 = sub nsw i64 %316, 1
  store i64 %317, i64* %10, align 8
  %318 = load i64*, i64** %12, align 8
  %319 = load i64, i64* %318, align 8
  store i64 %319, i64* %13, align 8
  br label %320

320:                                              ; preds = %313, %303
  %321 = load i64, i64* %13, align 8
  %322 = load i64, i64* %10, align 8
  %323 = load i8*, i8** %11, align 8
  %324 = load i64, i64* %14, align 8
  %325 = call i32 @TODIGIT(i64 %321, i64 %322, i8* %323, i64 %324)
  br label %326

326:                                              ; preds = %320
  %327 = load i8*, i8** %11, align 8
  %328 = getelementptr inbounds i8, i8* %327, i32 1
  store i8* %328, i8** %11, align 8
  %329 = load i64, i64* %10, align 8
  %330 = add nsw i64 %329, -1
  store i64 %330, i64* %10, align 8
  br label %303

331:                                              ; preds = %312
  br label %332

332:                                              ; preds = %331, %284
  %333 = load i64, i64* %8, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %375

335:                                              ; preds = %332
  store i32 0, i32* %17, align 4
  %336 = load i8*, i8** %11, align 8
  store i8 69, i8* %336, align 1
  %337 = load i8*, i8** %11, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %11, align 8
  %339 = load i8*, i8** %11, align 8
  store i8 43, i8* %339, align 1
  %340 = load i8*, i8** %11, align 8
  %341 = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %341, i8** %11, align 8
  %342 = load i64, i64* %8, align 8
  store i64 %342, i64* %13, align 8
  %343 = load i64, i64* %8, align 8
  %344 = icmp slt i64 %343, 0
  br i1 %344, label %345, label %350

345:                                              ; preds = %335
  %346 = load i8*, i8** %11, align 8
  %347 = getelementptr inbounds i8, i8* %346, i64 -1
  store i8 45, i8* %347, align 1
  %348 = load i64, i64* %8, align 8
  %349 = sub nsw i64 0, %348
  store i64 %349, i64* %13, align 8
  br label %350

350:                                              ; preds = %345, %335
  store i64 9, i64* %10, align 8
  br label %351

351:                                              ; preds = %371, %350
  %352 = load i64, i64* %10, align 8
  %353 = icmp sge i64 %352, 0
  br i1 %353, label %354, label %374

354:                                              ; preds = %351
  %355 = load i64, i64* %13, align 8
  %356 = load i64, i64* %10, align 8
  %357 = load i8*, i8** %11, align 8
  %358 = load i64, i64* %14, align 8
  %359 = call i32 @TODIGIT(i64 %355, i64 %356, i8* %357, i64 %358)
  %360 = load i8*, i8** %11, align 8
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp eq i32 %362, 48
  br i1 %363, label %364, label %368

364:                                              ; preds = %354
  %365 = load i32, i32* %17, align 4
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %368, label %367

367:                                              ; preds = %364
  br label %371

368:                                              ; preds = %364, %354
  store i32 1, i32* %17, align 4
  %369 = load i8*, i8** %11, align 8
  %370 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %370, i8** %11, align 8
  br label %371

371:                                              ; preds = %368, %367
  %372 = load i64, i64* %10, align 8
  %373 = add nsw i64 %372, -1
  store i64 %373, i64* %10, align 8
  br label %351

374:                                              ; preds = %351
  br label %375

375:                                              ; preds = %374, %332
  %376 = load i8*, i8** %11, align 8
  store i8 0, i8* %376, align 1
  br label %377

377:                                              ; preds = %375, %126, %85, %50
  ret void
}

declare dso_local i32 @D2U(i32) #1

declare dso_local i64 @decNumberIsNegative(%struct.TYPE_7__*) #1

declare dso_local i64 @decNumberIsInfinite(%struct.TYPE_7__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @MSUDIGITS(i32) #1

declare dso_local i32 @TODIGIT(i64, i64, i8*, i64) #1

declare dso_local i32 @ISZERO(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
