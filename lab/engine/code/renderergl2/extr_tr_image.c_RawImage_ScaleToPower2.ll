; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_RawImage_ScaleToPower2.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_image.c_RawImage_ScaleToPower2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_8__ = type { i32* (i32)* }
%struct.TYPE_11__ = type { i32 }

@IMGFLAG_PICMIP = common dso_local global i32 0, align 4
@IMGFLAG_MIPMAP = common dso_local global i32 0, align 4
@IMGFLAG_CLAMPTOEDGE = common dso_local global i32 0, align 4
@r_roundImagesDown = common dso_local global %struct.TYPE_10__* null, align 8
@r_textureMaxSize = common dso_local global %struct.TYPE_9__* null, align 8
@r_imageUpsample = common dso_local global %struct.TYPE_13__* null, align 8
@r_imageUpsampleMaxSize = common dso_local global %struct.TYPE_12__* null, align 8
@glConfig = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@ri = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@IMGTYPE_COLORALPHA = common dso_local global i64 0, align 8
@IMGTYPE_NORMAL = common dso_local global i64 0, align 8
@IMGTYPE_NORMALHEIGHT = common dso_local global i64 0, align 8
@r_picmip = common dso_local global %struct.TYPE_11__* null, align 8
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i64, i32, i32**, i32)* @RawImage_ScaleToPower2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @RawImage_ScaleToPower2(i32** %0, i32* %1, i32* %2, i64 %3, i32 %4, i32** %5, i32 %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32** %5, i32*** %13, align 8
  store i32 %6, i32* %14, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* @IMGFLAG_PICMIP, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %19, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @IMGFLAG_MIPMAP, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %20, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @IMGFLAG_CLAMPTOEDGE, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %21, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %7
  %41 = load i32**, i32*** %8, align 8
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br label %44

44:                                               ; preds = %40, %7
  %45 = phi i1 [ false, %7 ], [ %43, %40 ]
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %17, align 4
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %18, align 4
  br label %57

52:                                               ; preds = %44
  %53 = load i32, i32* %15, align 4
  %54 = call i32 @NextPowerOfTwo(i32 %53)
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call i32 @NextPowerOfTwo(i32 %55)
  store i32 %56, i32* %18, align 4
  br label %57

57:                                               ; preds = %52, %49
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_roundImagesDown, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* %17, align 4
  %68 = ashr i32 %67, 1
  store i32 %68, i32* %17, align 4
  br label %69

69:                                               ; preds = %66, %62, %57
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_roundImagesDown, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %69
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* %18, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %18, align 4
  br label %81

81:                                               ; preds = %78, %74, %69
  %82 = load i32, i32* %14, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %119

84:                                               ; preds = %81
  br label %85

85:                                               ; preds = %116, %84
  %86 = load i32, i32* %17, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_textureMaxSize, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp sgt i32 %86, %89
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* %18, align 4
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_textureMaxSize, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %92, %95
  br label %97

97:                                               ; preds = %91, %85
  %98 = phi i1 [ true, %85 ], [ %96, %91 ]
  br i1 %98, label %99, label %118

99:                                               ; preds = %97
  %100 = load i32, i32* %17, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* %17, align 4
  %104 = ashr i32 %103, 1
  br label %107

105:                                              ; preds = %99
  %106 = load i32, i32* %17, align 4
  br label %107

107:                                              ; preds = %105, %102
  %108 = phi i32 [ %104, %102 ], [ %106, %105 ]
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* %18, align 4
  %113 = ashr i32 %112, 1
  br label %116

114:                                              ; preds = %107
  %115 = load i32, i32* %18, align 4
  br label %116

116:                                              ; preds = %114, %111
  %117 = phi i32 [ %113, %111 ], [ %115, %114 ]
  store i32 %117, i32* %18, align 4
  br label %85

118:                                              ; preds = %97
  br label %119

119:                                              ; preds = %118, %81
  %120 = load i32, i32* %19, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %303

122:                                              ; preds = %119
  %123 = load i32**, i32*** %8, align 8
  %124 = icmp ne i32** %123, null
  br i1 %124, label %125, label %303

125:                                              ; preds = %122
  %126 = load i32**, i32*** %13, align 8
  %127 = icmp ne i32** %126, null
  br i1 %127, label %128, label %303

128:                                              ; preds = %125
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_imageUpsample, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %303

133:                                              ; preds = %128
  %134 = load i32, i32* %17, align 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_imageUpsampleMaxSize, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp slt i32 %134, %137
  br i1 %138, label %139, label %303

139:                                              ; preds = %133
  %140 = load i32, i32* %18, align 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_imageUpsampleMaxSize, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %303

145:                                              ; preds = %139
  %146 = load i32, i32* %17, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_imageUpsample, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %146, %149
  store i32 %150, i32* %23, align 4
  %151 = load i32, i32* %18, align 4
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_imageUpsample, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = shl i32 %151, %154
  store i32 %155, i32* %24, align 4
  br label %156

156:                                              ; preds = %170, %145
  %157 = load i32, i32* %23, align 4
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_imageUpsampleMaxSize, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp sgt i32 %157, %160
  br i1 %161, label %168, label %162

162:                                              ; preds = %156
  %163 = load i32, i32* %24, align 4
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_imageUpsampleMaxSize, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp sgt i32 %163, %166
  br label %168

168:                                              ; preds = %162, %156
  %169 = phi i1 [ true, %156 ], [ %167, %162 ]
  br i1 %169, label %170, label %175

170:                                              ; preds = %168
  %171 = load i32, i32* %23, align 4
  %172 = ashr i32 %171, 1
  store i32 %172, i32* %23, align 4
  %173 = load i32, i32* %24, align 4
  %174 = ashr i32 %173, 1
  store i32 %174, i32* %24, align 4
  br label %156

175:                                              ; preds = %168
  br label %176

176:                                              ; preds = %186, %175
  %177 = load i32, i32* %23, align 4
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %184, label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 4
  %183 = icmp sgt i32 %181, %182
  br label %184

184:                                              ; preds = %180, %176
  %185 = phi i1 [ true, %176 ], [ %183, %180 ]
  br i1 %185, label %186, label %191

186:                                              ; preds = %184
  %187 = load i32, i32* %23, align 4
  %188 = ashr i32 %187, 1
  store i32 %188, i32* %23, align 4
  %189 = load i32, i32* %24, align 4
  %190 = ashr i32 %189, 1
  store i32 %190, i32* %24, align 4
  br label %176

191:                                              ; preds = %184
  %192 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %193 = load i32, i32* %23, align 4
  %194 = load i32, i32* %24, align 4
  %195 = mul nsw i32 %193, %194
  %196 = mul nsw i32 %195, 4
  %197 = call i32* %192(i32 %196)
  %198 = load i32**, i32*** %13, align 8
  store i32* %197, i32** %198, align 8
  %199 = load i32, i32* %17, align 4
  %200 = load i32, i32* %15, align 4
  %201 = icmp ne i32 %199, %200
  br i1 %201, label %206, label %202

202:                                              ; preds = %191
  %203 = load i32, i32* %18, align 4
  %204 = load i32, i32* %16, align 4
  %205 = icmp ne i32 %203, %204
  br i1 %205, label %206, label %216

206:                                              ; preds = %202, %191
  %207 = load i32**, i32*** %8, align 8
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %15, align 4
  %210 = load i32, i32* %16, align 4
  %211 = load i32**, i32*** %13, align 8
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = load i32, i32* %18, align 4
  %215 = call i32 @ResampleTexture(i32* %208, i32 %209, i32 %210, i32* %212, i32 %213, i32 %214)
  br label %226

216:                                              ; preds = %202
  %217 = load i32**, i32*** %13, align 8
  %218 = load i32*, i32** %217, align 8
  %219 = load i32**, i32*** %8, align 8
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %15, align 4
  %222 = load i32, i32* %16, align 4
  %223 = mul nsw i32 %221, %222
  %224 = mul nsw i32 %223, 4
  %225 = call i32 @Com_Memcpy(i32* %218, i32* %220, i32 %224)
  br label %226

226:                                              ; preds = %216, %206
  %227 = load i64, i64* %11, align 8
  %228 = load i64, i64* @IMGTYPE_COLORALPHA, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %226
  %231 = load i32**, i32*** %13, align 8
  %232 = load i32*, i32** %231, align 8
  %233 = load i32**, i32*** %13, align 8
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %17, align 4
  %236 = load i32, i32* %18, align 4
  %237 = call i32 @RGBAtoYCoCgA(i32* %232, i32* %234, i32 %235, i32 %236)
  br label %238

238:                                              ; preds = %230, %226
  br label %239

239:                                              ; preds = %266, %238
  %240 = load i32, i32* %17, align 4
  %241 = load i32, i32* %23, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %247, label %243

243:                                              ; preds = %239
  %244 = load i32, i32* %18, align 4
  %245 = load i32, i32* %24, align 4
  %246 = icmp slt i32 %244, %245
  br label %247

247:                                              ; preds = %243, %239
  %248 = phi i1 [ true, %239 ], [ %246, %243 ]
  br i1 %248, label %249, label %270

249:                                              ; preds = %247
  %250 = load i32, i32* %17, align 4
  %251 = shl i32 %250, 1
  store i32 %251, i32* %17, align 4
  %252 = load i32, i32* %18, align 4
  %253 = shl i32 %252, 1
  store i32 %253, i32* %18, align 4
  %254 = load i32**, i32*** %13, align 8
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %17, align 4
  %257 = load i32, i32* %18, align 4
  %258 = load i32, i32* %21, align 4
  %259 = load i64, i64* %11, align 8
  %260 = load i64, i64* @IMGTYPE_NORMAL, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %266, label %262

262:                                              ; preds = %249
  %263 = load i64, i64* %11, align 8
  %264 = load i64, i64* @IMGTYPE_NORMALHEIGHT, align 8
  %265 = icmp eq i64 %263, %264
  br label %266

266:                                              ; preds = %262, %249
  %267 = phi i1 [ true, %249 ], [ %265, %262 ]
  %268 = zext i1 %267 to i32
  %269 = call i32 @FCBIByBlock(i32* %255, i32 %256, i32 %257, i32 %258, i32 %268)
  br label %239

270:                                              ; preds = %247
  %271 = load i64, i64* %11, align 8
  %272 = load i64, i64* @IMGTYPE_COLORALPHA, align 8
  %273 = icmp eq i64 %271, %272
  br i1 %273, label %274, label %282

274:                                              ; preds = %270
  %275 = load i32**, i32*** %13, align 8
  %276 = load i32*, i32** %275, align 8
  %277 = load i32**, i32*** %13, align 8
  %278 = load i32*, i32** %277, align 8
  %279 = load i32, i32* %17, align 4
  %280 = load i32, i32* %18, align 4
  %281 = call i32 @YCoCgAtoRGBA(i32* %276, i32* %278, i32 %279, i32 %280)
  br label %299

282:                                              ; preds = %270
  %283 = load i64, i64* %11, align 8
  %284 = load i64, i64* @IMGTYPE_NORMAL, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = load i64, i64* %11, align 8
  %288 = load i64, i64* @IMGTYPE_NORMALHEIGHT, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %298

290:                                              ; preds = %286, %282
  %291 = load i32**, i32*** %13, align 8
  %292 = load i32*, i32** %291, align 8
  %293 = load i32**, i32*** %13, align 8
  %294 = load i32*, i32** %293, align 8
  %295 = load i32, i32* %17, align 4
  %296 = load i32, i32* %18, align 4
  %297 = call i32 @FillInNormalizedZ(i32* %292, i32* %294, i32 %295, i32 %296)
  br label %298

298:                                              ; preds = %290, %286
  br label %299

299:                                              ; preds = %298, %274
  %300 = load i32**, i32*** %13, align 8
  %301 = load i32*, i32** %300, align 8
  %302 = load i32**, i32*** %8, align 8
  store i32* %301, i32** %302, align 8
  br label %339

303:                                              ; preds = %139, %133, %128, %125, %122, %119
  %304 = load i32, i32* %17, align 4
  %305 = load i32, i32* %15, align 4
  %306 = icmp ne i32 %304, %305
  br i1 %306, label %311, label %307

307:                                              ; preds = %303
  %308 = load i32, i32* %18, align 4
  %309 = load i32, i32* %16, align 4
  %310 = icmp ne i32 %308, %309
  br i1 %310, label %311, label %338

311:                                              ; preds = %307, %303
  %312 = load i32**, i32*** %8, align 8
  %313 = icmp ne i32** %312, null
  br i1 %313, label %314, label %337

314:                                              ; preds = %311
  %315 = load i32**, i32*** %13, align 8
  %316 = icmp ne i32** %315, null
  br i1 %316, label %317, label %337

317:                                              ; preds = %314
  %318 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @ri, i32 0, i32 0), align 8
  %319 = load i32, i32* %17, align 4
  %320 = load i32, i32* %18, align 4
  %321 = mul nsw i32 %319, %320
  %322 = mul nsw i32 %321, 4
  %323 = call i32* %318(i32 %322)
  %324 = load i32**, i32*** %13, align 8
  store i32* %323, i32** %324, align 8
  %325 = load i32**, i32*** %8, align 8
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %15, align 4
  %328 = load i32, i32* %16, align 4
  %329 = load i32**, i32*** %13, align 8
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %17, align 4
  %332 = load i32, i32* %18, align 4
  %333 = call i32 @ResampleTexture(i32* %326, i32 %327, i32 %328, i32* %330, i32 %331, i32 %332)
  %334 = load i32**, i32*** %13, align 8
  %335 = load i32*, i32** %334, align 8
  %336 = load i32**, i32*** %8, align 8
  store i32* %335, i32** %336, align 8
  br label %337

337:                                              ; preds = %317, %314, %311
  br label %338

338:                                              ; preds = %337, %307
  br label %339

339:                                              ; preds = %338, %299
  %340 = load i32, i32* %17, align 4
  store i32 %340, i32* %15, align 4
  %341 = load i32, i32* %18, align 4
  store i32 %341, i32* %16, align 4
  %342 = load i32, i32* %19, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %355

344:                                              ; preds = %339
  %345 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_picmip, align 8
  %346 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %17, align 4
  %349 = ashr i32 %348, %347
  store i32 %349, i32* %17, align 4
  %350 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_picmip, align 8
  %351 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %18, align 4
  %354 = ashr i32 %353, %352
  store i32 %354, i32* %18, align 4
  br label %355

355:                                              ; preds = %344, %339
  br label %356

356:                                              ; preds = %366, %355
  %357 = load i32, i32* %17, align 4
  %358 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 4
  %359 = icmp sgt i32 %357, %358
  br i1 %359, label %364, label %360

360:                                              ; preds = %356
  %361 = load i32, i32* %18, align 4
  %362 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 4
  %363 = icmp sgt i32 %361, %362
  br label %364

364:                                              ; preds = %360, %356
  %365 = phi i1 [ true, %356 ], [ %363, %360 ]
  br i1 %365, label %366, label %371

366:                                              ; preds = %364
  %367 = load i32, i32* %17, align 4
  %368 = ashr i32 %367, 1
  store i32 %368, i32* %17, align 4
  %369 = load i32, i32* %18, align 4
  %370 = ashr i32 %369, 1
  store i32 %370, i32* %18, align 4
  br label %356

371:                                              ; preds = %364
  %372 = load i32, i32* %17, align 4
  %373 = call i32 @MAX(i32 1, i32 %372)
  store i32 %373, i32* %17, align 4
  %374 = load i32, i32* %18, align 4
  %375 = call i32 @MAX(i32 1, i32 %374)
  store i32 %375, i32* %18, align 4
  %376 = load i32, i32* %15, align 4
  %377 = load i32, i32* %17, align 4
  %378 = icmp ne i32 %376, %377
  br i1 %378, label %383, label %379

379:                                              ; preds = %371
  %380 = load i32, i32* %16, align 4
  %381 = load i32, i32* %18, align 4
  %382 = icmp ne i32 %380, %381
  br label %383

383:                                              ; preds = %379, %371
  %384 = phi i1 [ true, %371 ], [ %382, %379 ]
  %385 = zext i1 %384 to i32
  store i32 %385, i32* %22, align 4
  %386 = load i32**, i32*** %8, align 8
  %387 = icmp ne i32** %386, null
  br i1 %387, label %388, label %430

388:                                              ; preds = %383
  br label %389

389:                                              ; preds = %422, %388
  %390 = load i32, i32* %15, align 4
  %391 = load i32, i32* %17, align 4
  %392 = icmp sgt i32 %390, %391
  br i1 %392, label %397, label %393

393:                                              ; preds = %389
  %394 = load i32, i32* %16, align 4
  %395 = load i32, i32* %18, align 4
  %396 = icmp sgt i32 %394, %395
  br label %397

397:                                              ; preds = %393, %389
  %398 = phi i1 [ true, %389 ], [ %396, %393 ]
  br i1 %398, label %399, label %429

399:                                              ; preds = %397
  %400 = load i64, i64* %11, align 8
  %401 = load i64, i64* @IMGTYPE_NORMAL, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %407, label %403

403:                                              ; preds = %399
  %404 = load i64, i64* %11, align 8
  %405 = load i64, i64* @IMGTYPE_NORMALHEIGHT, align 8
  %406 = icmp eq i64 %404, %405
  br i1 %406, label %407, label %416

407:                                              ; preds = %403, %399
  %408 = load i32**, i32*** %8, align 8
  %409 = load i32*, i32** %408, align 8
  %410 = load i32**, i32*** %8, align 8
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %15, align 4
  %413 = load i32, i32* %16, align 4
  %414 = load i32, i32* @qfalse, align 4
  %415 = call i32 @R_MipMapNormalHeight(i32* %409, i32* %411, i32 %412, i32 %413, i32 %414)
  br label %422

416:                                              ; preds = %403
  %417 = load i32**, i32*** %8, align 8
  %418 = load i32*, i32** %417, align 8
  %419 = load i32, i32* %15, align 4
  %420 = load i32, i32* %16, align 4
  %421 = call i32 @R_MipMapsRGB(i32* %418, i32 %419, i32 %420)
  br label %422

422:                                              ; preds = %416, %407
  %423 = load i32, i32* %15, align 4
  %424 = ashr i32 %423, 1
  %425 = call i32 @MAX(i32 1, i32 %424)
  store i32 %425, i32* %15, align 4
  %426 = load i32, i32* %16, align 4
  %427 = ashr i32 %426, 1
  %428 = call i32 @MAX(i32 1, i32 %427)
  store i32 %428, i32* %16, align 4
  br label %389

429:                                              ; preds = %397
  br label %430

430:                                              ; preds = %429, %383
  %431 = load i32, i32* %15, align 4
  %432 = load i32*, i32** %9, align 8
  store i32 %431, i32* %432, align 4
  %433 = load i32, i32* %16, align 4
  %434 = load i32*, i32** %10, align 8
  store i32 %433, i32* %434, align 4
  %435 = load i32, i32* %22, align 4
  ret i32 %435
}

declare dso_local i32 @NextPowerOfTwo(i32) #1

declare dso_local i32 @ResampleTexture(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @Com_Memcpy(i32*, i32*, i32) #1

declare dso_local i32 @RGBAtoYCoCgA(i32*, i32*, i32, i32) #1

declare dso_local i32 @FCBIByBlock(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @YCoCgAtoRGBA(i32*, i32*, i32, i32) #1

declare dso_local i32 @FillInNormalizedZ(i32*, i32*, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @R_MipMapNormalHeight(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @R_MipMapsRGB(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
