; ModuleID = '/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decCompareOp.c'
source_filename = "/home/carl/AnghaBench/jq/src/decNumber/extr_decNumber.c_decCompareOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64, i32, i32*, i64 }
%struct.TYPE_33__ = type { i64, i32 }

@COMPTOTAL = common dso_local global i64 0, align 8
@DECSNAN = common dso_local global i32 0, align 4
@DECNAN = common dso_local global i32 0, align 4
@COMPARE = common dso_local global i64 0, align 8
@COMPSIG = common dso_local global i64 0, align 8
@DEC_Invalid_operation = common dso_local global i32 0, align 4
@DEC_sNaN = common dso_local global i32 0, align 4
@COMPMAX = common dso_local global i64 0, align 8
@COMPNAN = common dso_local global i64 0, align 8
@COMPMAXMAG = common dso_local global i64 0, align 8
@COMPMINMAG = common dso_local global i64 0, align 8
@BADINT = common dso_local global i32 0, align 4
@DEC_Insufficient_storage = common dso_local global i32 0, align 4
@DECNEG = common dso_local global i32 0, align 4
@COMPMIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_32__* @decCompareOp(%struct.TYPE_32__* %0, %struct.TYPE_32__* %1, %struct.TYPE_32__* %2, %struct.TYPE_33__* %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca %struct.TYPE_32__*, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %7, align 8
  store %struct.TYPE_32__* %1, %struct.TYPE_32__** %8, align 8
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %9, align 8
  store %struct.TYPE_33__* %3, %struct.TYPE_33__** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %13, align 4
  br label %19

19:                                               ; preds = %6
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @COMPTOTAL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %25 = call i32 @decNumberIsNegative(%struct.TYPE_32__* %24)
  %26 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %27 = call i32 @decNumberIsNegative(%struct.TYPE_32__* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 -1, i32* %13, align 4
  br label %189

34:                                               ; preds = %23
  %35 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %36 = call i32 @decNumberIsNegative(%struct.TYPE_32__* %35)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %41 = call i32 @decNumberIsNegative(%struct.TYPE_32__* %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  store i32 1, i32* %13, align 4
  br label %189

45:                                               ; preds = %34
  br label %46

46:                                               ; preds = %45, %19
  %47 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %49, %52
  %54 = load i32, i32* @DECSNAN, align 4
  %55 = load i32, i32* @DECNAN, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %172

60:                                               ; preds = %46
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* @COMPARE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  br label %164

65:                                               ; preds = %60
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* @COMPSIG, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  %70 = load i32, i32* @DEC_Invalid_operation, align 4
  %71 = load i32, i32* @DEC_sNaN, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 4
  br label %163

76:                                               ; preds = %65
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* @COMPTOTAL, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %135

80:                                               ; preds = %76
  %81 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %82 = call i32 @decNumberIsNaN(%struct.TYPE_32__* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %80
  store i32 -1, i32* %13, align 4
  br label %127

85:                                               ; preds = %80
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %87 = call i32 @decNumberIsNaN(%struct.TYPE_32__* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %85
  store i32 1, i32* %13, align 4
  br label %126

90:                                               ; preds = %85
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %92 = call i64 @decNumberIsSNaN(%struct.TYPE_32__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %96 = call i64 @decNumberIsQNaN(%struct.TYPE_32__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 -1, i32* %13, align 4
  br label %125

99:                                               ; preds = %94, %90
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %101 = call i64 @decNumberIsQNaN(%struct.TYPE_32__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %105 = call i64 @decNumberIsSNaN(%struct.TYPE_32__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 1, i32* %13, align 4
  br label %124

108:                                              ; preds = %103, %99
  %109 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @D2U(i64 %114)
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @D2U(i64 %121)
  %123 = call i32 @decUnitCompare(i32* %111, i32 %115, i32* %118, i32 %122, i32 0)
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %108, %107
  br label %125

125:                                              ; preds = %124, %98
  br label %126

126:                                              ; preds = %125, %89
  br label %127

127:                                              ; preds = %126, %84
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %129 = call i32 @decNumberIsNegative(%struct.TYPE_32__* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load i32, i32* %13, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %13, align 4
  br label %134

134:                                              ; preds = %131, %127
  br label %189

135:                                              ; preds = %76
  %136 = load i32, i32* %14, align 4
  %137 = load i32, i32* @DECSNAN, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %161

141:                                              ; preds = %135
  %142 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %143 = call i32 @decNumberIsNaN(%struct.TYPE_32__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %141
  %146 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %147 = call i32 @decNumberIsNaN(%struct.TYPE_32__* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %145, %141
  %150 = load i64, i64* @COMPMAX, align 8
  store i64 %150, i64* %11, align 8
  %151 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @DECNAN, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %149
  store i32 -1, i32* %13, align 4
  br label %159

158:                                              ; preds = %149
  store i32 1, i32* %13, align 4
  br label %159

159:                                              ; preds = %158, %157
  br label %189

160:                                              ; preds = %145
  br label %161

161:                                              ; preds = %160, %140
  br label %162

162:                                              ; preds = %161
  br label %163

163:                                              ; preds = %162, %69
  br label %164

164:                                              ; preds = %163, %64
  %165 = load i64, i64* @COMPNAN, align 8
  store i64 %165, i64* %11, align 8
  %166 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %167 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %168 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %170 = load i32*, i32** %12, align 8
  %171 = call i32 @decNaNs(%struct.TYPE_32__* %166, %struct.TYPE_32__* %167, %struct.TYPE_32__* %168, %struct.TYPE_33__* %169, i32* %170)
  br label %189

172:                                              ; preds = %46
  %173 = load i64, i64* %11, align 8
  %174 = load i64, i64* @COMPMAXMAG, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %180, label %176

176:                                              ; preds = %172
  %177 = load i64, i64* %11, align 8
  %178 = load i64, i64* @COMPMINMAG, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %176, %172
  %181 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %182 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %183 = call i32 @decCompare(%struct.TYPE_32__* %181, %struct.TYPE_32__* %182, i32 1)
  store i32 %183, i32* %13, align 4
  br label %188

184:                                              ; preds = %176
  %185 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %186 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %187 = call i32 @decCompare(%struct.TYPE_32__* %185, %struct.TYPE_32__* %186, i32 0)
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %184, %180
  br label %189

189:                                              ; preds = %188, %164, %159, %134, %44, %33
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @BADINT, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %198

193:                                              ; preds = %189
  %194 = load i32, i32* @DEC_Insufficient_storage, align 4
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %194
  store i32 %197, i32* %195, align 4
  br label %350

198:                                              ; preds = %189
  %199 = load i64, i64* %11, align 8
  %200 = load i64, i64* @COMPARE, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %210, label %202

202:                                              ; preds = %198
  %203 = load i64, i64* %11, align 8
  %204 = load i64, i64* @COMPSIG, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %210, label %206

206:                                              ; preds = %202
  %207 = load i64, i64* %11, align 8
  %208 = load i64, i64* @COMPTOTAL, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %261

210:                                              ; preds = %206, %202, %198
  %211 = load i64, i64* %11, align 8
  %212 = load i64, i64* @COMPTOTAL, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %244

214:                                              ; preds = %210
  %215 = load i32, i32* %13, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %244

217:                                              ; preds = %214
  %218 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %218, i32 0, i32 3
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %220, %223
  br i1 %224, label %225, label %243

225:                                              ; preds = %217
  %226 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 3
  %231 = load i64, i64* %230, align 8
  %232 = icmp slt i64 %228, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %225
  store i32 -1, i32* %13, align 4
  br label %235

234:                                              ; preds = %225
  store i32 1, i32* %13, align 4
  br label %235

235:                                              ; preds = %234, %233
  %236 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %237 = call i32 @decNumberIsNegative(%struct.TYPE_32__* %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %235
  %240 = load i32, i32* %13, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %13, align 4
  br label %242

242:                                              ; preds = %239, %235
  br label %243

243:                                              ; preds = %242, %217
  br label %244

244:                                              ; preds = %243, %214, %210
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %246 = call i32 @decNumberZero(%struct.TYPE_32__* %245)
  %247 = load i32, i32* %13, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %260

249:                                              ; preds = %244
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %251 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  store i32 1, i32* %252, align 4
  %253 = load i32, i32* %13, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %249
  %256 = load i32, i32* @DECNEG, align 4
  %257 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %257, i32 0, i32 1
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %255, %249
  br label %260

260:                                              ; preds = %259, %244
  br label %349

261:                                              ; preds = %206
  %262 = load i64, i64* %11, align 8
  %263 = load i64, i64* @COMPNAN, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  br label %348

266:                                              ; preds = %261
  store i32 0, i32* %15, align 4
  %267 = load i32, i32* %13, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %319

269:                                              ; preds = %266
  %270 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @DECNEG, align 4
  %274 = and i32 %272, %273
  store i32 %274, i32* %17, align 4
  %275 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %276 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @DECNEG, align 4
  %279 = and i32 %277, %278
  store i32 %279, i32* %18, align 4
  %280 = load i32, i32* %17, align 4
  %281 = load i32, i32* %18, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %289

283:                                              ; preds = %269
  %284 = load i32, i32* %17, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %283
  store i32 -1, i32* %13, align 4
  br label %288

287:                                              ; preds = %283
  store i32 1, i32* %13, align 4
  br label %288

288:                                              ; preds = %287, %286
  br label %318

289:                                              ; preds = %269
  %290 = load i32, i32* %17, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %306

292:                                              ; preds = %289
  %293 = load i32, i32* %18, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %306

295:                                              ; preds = %292
  %296 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %297 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %296, i32 0, i32 3
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %299, i32 0, i32 3
  %301 = load i64, i64* %300, align 8
  %302 = icmp slt i64 %298, %301
  br i1 %302, label %303, label %304

303:                                              ; preds = %295
  store i32 1, i32* %13, align 4
  br label %305

304:                                              ; preds = %295
  store i32 -1, i32* %13, align 4
  br label %305

305:                                              ; preds = %304, %303
  br label %317

306:                                              ; preds = %292, %289
  %307 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  %308 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %307, i32 0, i32 3
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %311 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  %313 = icmp sgt i64 %309, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %306
  store i32 1, i32* %13, align 4
  br label %316

315:                                              ; preds = %306
  store i32 -1, i32* %13, align 4
  br label %316

316:                                              ; preds = %315, %314
  br label %317

317:                                              ; preds = %316, %305
  br label %318

318:                                              ; preds = %317, %288
  br label %319

319:                                              ; preds = %318, %266
  %320 = load i64, i64* %11, align 8
  %321 = load i64, i64* @COMPMIN, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %327, label %323

323:                                              ; preds = %319
  %324 = load i64, i64* %11, align 8
  %325 = load i64, i64* @COMPMINMAG, align 8
  %326 = icmp eq i64 %324, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %323, %319
  %328 = load i32, i32* %13, align 4
  %329 = sub nsw i32 0, %328
  store i32 %329, i32* %13, align 4
  br label %330

330:                                              ; preds = %327, %323
  %331 = load i32, i32* %13, align 4
  %332 = icmp sgt i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %330
  %334 = load %struct.TYPE_32__*, %struct.TYPE_32__** %8, align 8
  br label %337

335:                                              ; preds = %330
  %336 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  br label %337

337:                                              ; preds = %335, %333
  %338 = phi %struct.TYPE_32__* [ %334, %333 ], [ %336, %335 ]
  store %struct.TYPE_32__* %338, %struct.TYPE_32__** %16, align 8
  %339 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %340 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %341 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %342 = load i32*, i32** %12, align 8
  %343 = call i32 @decCopyFit(%struct.TYPE_32__* %339, %struct.TYPE_32__* %340, %struct.TYPE_33__* %341, i32* %15, i32* %342)
  %344 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %346 = load i32*, i32** %12, align 8
  %347 = call i32 @decFinish(%struct.TYPE_32__* %344, %struct.TYPE_33__* %345, i32* %15, i32* %346)
  br label %348

348:                                              ; preds = %337, %265
  br label %349

349:                                              ; preds = %348, %260
  br label %350

350:                                              ; preds = %349, %193
  %351 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  ret %struct.TYPE_32__* %351
}

declare dso_local i32 @decNumberIsNegative(%struct.TYPE_32__*) #1

declare dso_local i32 @decNumberIsNaN(%struct.TYPE_32__*) #1

declare dso_local i64 @decNumberIsSNaN(%struct.TYPE_32__*) #1

declare dso_local i64 @decNumberIsQNaN(%struct.TYPE_32__*) #1

declare dso_local i32 @decUnitCompare(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @D2U(i64) #1

declare dso_local i32 @decNaNs(%struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_33__*, i32*) #1

declare dso_local i32 @decCompare(%struct.TYPE_32__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @decNumberZero(%struct.TYPE_32__*) #1

declare dso_local i32 @decCopyFit(%struct.TYPE_32__*, %struct.TYPE_32__*, %struct.TYPE_33__*, i32*, i32*) #1

declare dso_local i32 @decFinish(%struct.TYPE_32__*, %struct.TYPE_33__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
