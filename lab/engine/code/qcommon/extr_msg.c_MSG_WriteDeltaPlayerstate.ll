; ModuleID = '/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_WriteDeltaPlayerstate.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/qcommon/extr_msg.c_MSG_WriteDeltaPlayerstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.playerState_s = type { i64*, i64*, i64*, i64* }

@playerStateFields = common dso_local global %struct.TYPE_4__* null, align 8
@oldsize = common dso_local global i32 0, align 4
@FLOAT_INT_BIAS = common dso_local global i32 0, align 4
@FLOAT_INT_BITS = common dso_local global i32 0, align 4
@MAX_STATS = common dso_local global i32 0, align 4
@MAX_PERSISTANT = common dso_local global i32 0, align 4
@MAX_WEAPONS = common dso_local global i32 0, align 4
@MAX_POWERUPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MSG_WriteDeltaPlayerstate(i32* %0, %struct.playerState_s* %1, %struct.playerState_s* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.playerState_s*, align 8
  %6 = alloca %struct.playerState_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.playerState_s, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.playerState_s* %1, %struct.playerState_s** %5, align 8
  store %struct.playerState_s* %2, %struct.playerState_s** %6, align 8
  %20 = load %struct.playerState_s*, %struct.playerState_s** %5, align 8
  %21 = icmp ne %struct.playerState_s* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  store %struct.playerState_s* %8, %struct.playerState_s** %5, align 8
  %23 = call i32 @Com_Memset(%struct.playerState_s* %8, i32 0, i32 32)
  br label %24

24:                                               ; preds = %22, %3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @playerStateFields, align 8
  %26 = call i32 @ARRAY_LEN(%struct.TYPE_4__* %25)
  store i32 %26, i32* %13, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %7, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @playerStateFields, align 8
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %14, align 8
  br label %28

28:                                               ; preds = %56, %24
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %61

32:                                               ; preds = %28
  %33 = load %struct.playerState_s*, %struct.playerState_s** %5, align 8
  %34 = bitcast %struct.playerState_s* %33 to i32*
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32* %39, i32** %15, align 8
  %40 = load %struct.playerState_s*, %struct.playerState_s** %6, align 8
  %41 = bitcast %struct.playerState_s* %40 to i32*
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  store i32* %46, i32** %16, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %16, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %48, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %32
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %19, align 4
  br label %55

55:                                               ; preds = %52, %32
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 1
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %14, align 8
  br label %28

61:                                               ; preds = %28
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %19, align 4
  %64 = call i32 @MSG_WriteByte(i32* %62, i32 %63)
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %19, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* @oldsize, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* @oldsize, align 4
  store i32 0, i32* %7, align 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** @playerStateFields, align 8
  store %struct.TYPE_4__* %70, %struct.TYPE_4__** %14, align 8
  br label %71

71:                                               ; preds = %153, %61
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %19, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %158

75:                                               ; preds = %71
  %76 = load %struct.playerState_s*, %struct.playerState_s** %5, align 8
  %77 = bitcast %struct.playerState_s* %76 to i32*
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32* %82, i32** %15, align 8
  %83 = load %struct.playerState_s*, %struct.playerState_s** %6, align 8
  %84 = bitcast %struct.playerState_s* %83 to i32*
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %84, i64 %88
  store i32* %89, i32** %16, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %90, align 4
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %75
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @MSG_WriteBits(i32* %96, i32 0, i32 1)
  br label %153

98:                                               ; preds = %75
  %99 = load i32*, i32** %4, align 8
  %100 = call i32 @MSG_WriteBits(i32* %99, i32 1, i32 1)
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %144

105:                                              ; preds = %98
  %106 = load i32*, i32** %16, align 8
  %107 = bitcast i32* %106 to float*
  %108 = load float, float* %107, align 4
  store float %108, float* %17, align 4
  %109 = load float, float* %17, align 4
  %110 = fptosi float %109 to i32
  store i32 %110, i32* %18, align 4
  %111 = load i32, i32* %18, align 4
  %112 = sitofp i32 %111 to float
  %113 = load float, float* %17, align 4
  %114 = fcmp oeq float %112, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %105
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* @FLOAT_INT_BIAS, align 4
  %118 = add nsw i32 %116, %117
  %119 = icmp sge i32 %118, 0
  br i1 %119, label %120, label %136

120:                                              ; preds = %115
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* @FLOAT_INT_BIAS, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* @FLOAT_INT_BITS, align 4
  %125 = shl i32 1, %124
  %126 = icmp slt i32 %123, %125
  br i1 %126, label %127, label %136

127:                                              ; preds = %120
  %128 = load i32*, i32** %4, align 8
  %129 = call i32 @MSG_WriteBits(i32* %128, i32 0, i32 1)
  %130 = load i32*, i32** %4, align 8
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* @FLOAT_INT_BIAS, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* @FLOAT_INT_BITS, align 4
  %135 = call i32 @MSG_WriteBits(i32* %130, i32 %133, i32 %134)
  br label %143

136:                                              ; preds = %120, %115, %105
  %137 = load i32*, i32** %4, align 8
  %138 = call i32 @MSG_WriteBits(i32* %137, i32 1, i32 1)
  %139 = load i32*, i32** %4, align 8
  %140 = load i32*, i32** %16, align 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @MSG_WriteBits(i32* %139, i32 %141, i32 32)
  br label %143

143:                                              ; preds = %136, %127
  br label %152

144:                                              ; preds = %98
  %145 = load i32*, i32** %4, align 8
  %146 = load i32*, i32** %16, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @MSG_WriteBits(i32* %145, i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %144, %143
  br label %153

153:                                              ; preds = %152, %95
  %154 = load i32, i32* %7, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %7, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 1
  store %struct.TYPE_4__* %157, %struct.TYPE_4__** %14, align 8
  br label %71

158:                                              ; preds = %71
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %185, %158
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* @MAX_STATS, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %188

163:                                              ; preds = %159
  %164 = load %struct.playerState_s*, %struct.playerState_s** %6, align 8
  %165 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %7, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.playerState_s*, %struct.playerState_s** %5, align 8
  %172 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %171, i32 0, i32 0
  %173 = load i64*, i64** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i64, i64* %173, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %170, %177
  br i1 %178, label %179, label %184

179:                                              ; preds = %163
  %180 = load i32, i32* %7, align 4
  %181 = shl i32 1, %180
  %182 = load i32, i32* %9, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %179, %163
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %159

188:                                              ; preds = %159
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %189

189:                                              ; preds = %215, %188
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* @MAX_PERSISTANT, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %218

193:                                              ; preds = %189
  %194 = load %struct.playerState_s*, %struct.playerState_s** %6, align 8
  %195 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %194, i32 0, i32 1
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* %7, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.playerState_s*, %struct.playerState_s** %5, align 8
  %202 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %201, i32 0, i32 1
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %200, %207
  br i1 %208, label %209, label %214

209:                                              ; preds = %193
  %210 = load i32, i32* %7, align 4
  %211 = shl i32 1, %210
  %212 = load i32, i32* %10, align 4
  %213 = or i32 %212, %211
  store i32 %213, i32* %10, align 4
  br label %214

214:                                              ; preds = %209, %193
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %7, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %7, align 4
  br label %189

218:                                              ; preds = %189
  store i32 0, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %219

219:                                              ; preds = %245, %218
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* @MAX_WEAPONS, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %248

223:                                              ; preds = %219
  %224 = load %struct.playerState_s*, %struct.playerState_s** %6, align 8
  %225 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %224, i32 0, i32 2
  %226 = load i64*, i64** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.playerState_s*, %struct.playerState_s** %5, align 8
  %232 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %231, i32 0, i32 2
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %230, %237
  br i1 %238, label %239, label %244

239:                                              ; preds = %223
  %240 = load i32, i32* %7, align 4
  %241 = shl i32 1, %240
  %242 = load i32, i32* %11, align 4
  %243 = or i32 %242, %241
  store i32 %243, i32* %11, align 4
  br label %244

244:                                              ; preds = %239, %223
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %219

248:                                              ; preds = %219
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %249

249:                                              ; preds = %275, %248
  %250 = load i32, i32* %7, align 4
  %251 = load i32, i32* @MAX_POWERUPS, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %278

253:                                              ; preds = %249
  %254 = load %struct.playerState_s*, %struct.playerState_s** %6, align 8
  %255 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %254, i32 0, i32 3
  %256 = load i64*, i64** %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i64, i64* %256, i64 %258
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.playerState_s*, %struct.playerState_s** %5, align 8
  %262 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %261, i32 0, i32 3
  %263 = load i64*, i64** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i64, i64* %263, i64 %265
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %260, %267
  br i1 %268, label %269, label %274

269:                                              ; preds = %253
  %270 = load i32, i32* %7, align 4
  %271 = shl i32 1, %270
  %272 = load i32, i32* %12, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %12, align 4
  br label %274

274:                                              ; preds = %269, %253
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %7, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %7, align 4
  br label %249

278:                                              ; preds = %249
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %295, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %10, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %295, label %284

284:                                              ; preds = %281
  %285 = load i32, i32* %11, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %295, label %287

287:                                              ; preds = %284
  %288 = load i32, i32* %12, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %287
  %291 = load i32*, i32** %4, align 8
  %292 = call i32 @MSG_WriteBits(i32* %291, i32 0, i32 1)
  %293 = load i32, i32* @oldsize, align 4
  %294 = add nsw i32 %293, 4
  store i32 %294, i32* @oldsize, align 4
  br label %449

295:                                              ; preds = %287, %284, %281, %278
  %296 = load i32*, i32** %4, align 8
  %297 = call i32 @MSG_WriteBits(i32* %296, i32 1, i32 1)
  %298 = load i32, i32* %9, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %332

300:                                              ; preds = %295
  %301 = load i32*, i32** %4, align 8
  %302 = call i32 @MSG_WriteBits(i32* %301, i32 1, i32 1)
  %303 = load i32*, i32** %4, align 8
  %304 = load i32, i32* %9, align 4
  %305 = load i32, i32* @MAX_STATS, align 4
  %306 = call i32 @MSG_WriteBits(i32* %303, i32 %304, i32 %305)
  store i32 0, i32* %7, align 4
  br label %307

307:                                              ; preds = %328, %300
  %308 = load i32, i32* %7, align 4
  %309 = load i32, i32* @MAX_STATS, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %331

311:                                              ; preds = %307
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* %7, align 4
  %314 = shl i32 1, %313
  %315 = and i32 %312, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %327

317:                                              ; preds = %311
  %318 = load i32*, i32** %4, align 8
  %319 = load %struct.playerState_s*, %struct.playerState_s** %6, align 8
  %320 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %319, i32 0, i32 0
  %321 = load i64*, i64** %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i64, i64* %321, i64 %323
  %325 = load i64, i64* %324, align 8
  %326 = call i32 @MSG_WriteShort(i32* %318, i64 %325)
  br label %327

327:                                              ; preds = %317, %311
  br label %328

328:                                              ; preds = %327
  %329 = load i32, i32* %7, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %7, align 4
  br label %307

331:                                              ; preds = %307
  br label %335

332:                                              ; preds = %295
  %333 = load i32*, i32** %4, align 8
  %334 = call i32 @MSG_WriteBits(i32* %333, i32 0, i32 1)
  br label %335

335:                                              ; preds = %332, %331
  %336 = load i32, i32* %10, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %370

338:                                              ; preds = %335
  %339 = load i32*, i32** %4, align 8
  %340 = call i32 @MSG_WriteBits(i32* %339, i32 1, i32 1)
  %341 = load i32*, i32** %4, align 8
  %342 = load i32, i32* %10, align 4
  %343 = load i32, i32* @MAX_PERSISTANT, align 4
  %344 = call i32 @MSG_WriteBits(i32* %341, i32 %342, i32 %343)
  store i32 0, i32* %7, align 4
  br label %345

345:                                              ; preds = %366, %338
  %346 = load i32, i32* %7, align 4
  %347 = load i32, i32* @MAX_PERSISTANT, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %369

349:                                              ; preds = %345
  %350 = load i32, i32* %10, align 4
  %351 = load i32, i32* %7, align 4
  %352 = shl i32 1, %351
  %353 = and i32 %350, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %349
  %356 = load i32*, i32** %4, align 8
  %357 = load %struct.playerState_s*, %struct.playerState_s** %6, align 8
  %358 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %357, i32 0, i32 1
  %359 = load i64*, i64** %358, align 8
  %360 = load i32, i32* %7, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i64, i64* %359, i64 %361
  %363 = load i64, i64* %362, align 8
  %364 = call i32 @MSG_WriteLong(i32* %356, i64 %363)
  br label %365

365:                                              ; preds = %355, %349
  br label %366

366:                                              ; preds = %365
  %367 = load i32, i32* %7, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %7, align 4
  br label %345

369:                                              ; preds = %345
  br label %373

370:                                              ; preds = %335
  %371 = load i32*, i32** %4, align 8
  %372 = call i32 @MSG_WriteBits(i32* %371, i32 0, i32 1)
  br label %373

373:                                              ; preds = %370, %369
  %374 = load i32, i32* %11, align 4
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %376, label %408

376:                                              ; preds = %373
  %377 = load i32*, i32** %4, align 8
  %378 = call i32 @MSG_WriteBits(i32* %377, i32 1, i32 1)
  %379 = load i32*, i32** %4, align 8
  %380 = load i32, i32* %11, align 4
  %381 = load i32, i32* @MAX_WEAPONS, align 4
  %382 = call i32 @MSG_WriteBits(i32* %379, i32 %380, i32 %381)
  store i32 0, i32* %7, align 4
  br label %383

383:                                              ; preds = %404, %376
  %384 = load i32, i32* %7, align 4
  %385 = load i32, i32* @MAX_WEAPONS, align 4
  %386 = icmp slt i32 %384, %385
  br i1 %386, label %387, label %407

387:                                              ; preds = %383
  %388 = load i32, i32* %11, align 4
  %389 = load i32, i32* %7, align 4
  %390 = shl i32 1, %389
  %391 = and i32 %388, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %393, label %403

393:                                              ; preds = %387
  %394 = load i32*, i32** %4, align 8
  %395 = load %struct.playerState_s*, %struct.playerState_s** %6, align 8
  %396 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %395, i32 0, i32 2
  %397 = load i64*, i64** %396, align 8
  %398 = load i32, i32* %7, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i64, i64* %397, i64 %399
  %401 = load i64, i64* %400, align 8
  %402 = call i32 @MSG_WriteShort(i32* %394, i64 %401)
  br label %403

403:                                              ; preds = %393, %387
  br label %404

404:                                              ; preds = %403
  %405 = load i32, i32* %7, align 4
  %406 = add nsw i32 %405, 1
  store i32 %406, i32* %7, align 4
  br label %383

407:                                              ; preds = %383
  br label %411

408:                                              ; preds = %373
  %409 = load i32*, i32** %4, align 8
  %410 = call i32 @MSG_WriteBits(i32* %409, i32 0, i32 1)
  br label %411

411:                                              ; preds = %408, %407
  %412 = load i32, i32* %12, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %446

414:                                              ; preds = %411
  %415 = load i32*, i32** %4, align 8
  %416 = call i32 @MSG_WriteBits(i32* %415, i32 1, i32 1)
  %417 = load i32*, i32** %4, align 8
  %418 = load i32, i32* %12, align 4
  %419 = load i32, i32* @MAX_POWERUPS, align 4
  %420 = call i32 @MSG_WriteBits(i32* %417, i32 %418, i32 %419)
  store i32 0, i32* %7, align 4
  br label %421

421:                                              ; preds = %442, %414
  %422 = load i32, i32* %7, align 4
  %423 = load i32, i32* @MAX_POWERUPS, align 4
  %424 = icmp slt i32 %422, %423
  br i1 %424, label %425, label %445

425:                                              ; preds = %421
  %426 = load i32, i32* %12, align 4
  %427 = load i32, i32* %7, align 4
  %428 = shl i32 1, %427
  %429 = and i32 %426, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %441

431:                                              ; preds = %425
  %432 = load i32*, i32** %4, align 8
  %433 = load %struct.playerState_s*, %struct.playerState_s** %6, align 8
  %434 = getelementptr inbounds %struct.playerState_s, %struct.playerState_s* %433, i32 0, i32 3
  %435 = load i64*, i64** %434, align 8
  %436 = load i32, i32* %7, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i64, i64* %435, i64 %437
  %439 = load i64, i64* %438, align 8
  %440 = call i32 @MSG_WriteLong(i32* %432, i64 %439)
  br label %441

441:                                              ; preds = %431, %425
  br label %442

442:                                              ; preds = %441
  %443 = load i32, i32* %7, align 4
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* %7, align 4
  br label %421

445:                                              ; preds = %421
  br label %449

446:                                              ; preds = %411
  %447 = load i32*, i32** %4, align 8
  %448 = call i32 @MSG_WriteBits(i32* %447, i32 0, i32 1)
  br label %449

449:                                              ; preds = %290, %446, %445
  ret void
}

declare dso_local i32 @Com_Memset(%struct.playerState_s*, i32, i32) #1

declare dso_local i32 @ARRAY_LEN(%struct.TYPE_4__*) #1

declare dso_local i32 @MSG_WriteByte(i32*, i32) #1

declare dso_local i32 @MSG_WriteBits(i32*, i32, i32) #1

declare dso_local i32 @MSG_WriteShort(i32*, i64) #1

declare dso_local i32 @MSG_WriteLong(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
