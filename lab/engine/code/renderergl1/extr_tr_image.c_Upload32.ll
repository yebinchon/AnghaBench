; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_Upload32.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_image.c_Upload32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.TYPE_10__ = type { i32* (i32)*, i32 (i32*)* }
%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { float, i64 }
%struct.TYPE_14__ = type { float, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32 }

@GL_RGB = common dso_local global i32 0, align 4
@r_roundImagesDown = common dso_local global %struct.TYPE_12__* null, align 8
@ri = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@textureMaxSize = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@r_picmip = common dso_local global %struct.TYPE_13__* null, align 8
@r_greyscale = common dso_local global %struct.TYPE_15__* null, align 8
@r_monolightmaps = common dso_local global %struct.TYPE_14__* null, align 8
@GL_LUMINANCE = common dso_local global i32 0, align 4
@r_texturebits = common dso_local global %struct.TYPE_11__* null, align 8
@GL_LUMINANCE8 = common dso_local global i32 0, align 4
@TC_S3TC_ARB = common dso_local global i64 0, align 8
@GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = common dso_local global i32 0, align 4
@TC_S3TC = common dso_local global i64 0, align 8
@GL_RGB4_S3TC = common dso_local global i32 0, align 4
@GL_RGB5 = common dso_local global i32 0, align 4
@GL_RGB8 = common dso_local global i32 0, align 4
@GL_LUMINANCE8_ALPHA8 = common dso_local global i32 0, align 4
@GL_LUMINANCE_ALPHA = common dso_local global i32 0, align 4
@GL_RGBA4 = common dso_local global i32 0, align 4
@GL_RGBA8 = common dso_local global i32 0, align 4
@GL_RGBA = common dso_local global i32 0, align 4
@GL_TEXTURE_2D = common dso_local global i32 0, align 4
@GL_UNSIGNED_BYTE = common dso_local global i32 0, align 4
@r_colorMipLevels = common dso_local global %struct.TYPE_17__* null, align 8
@mipBlendColors = common dso_local global i32* null, align 8
@textureFilterAnisotropic = common dso_local global i64 0, align 8
@GL_TEXTURE_MAX_ANISOTROPY_EXT = common dso_local global i32 0, align 4
@maxAnisotropy = common dso_local global i32 0, align 4
@r_ext_max_anisotropy = common dso_local global %struct.TYPE_16__* null, align 8
@GL_TEXTURE_MIN_FILTER = common dso_local global i32 0, align 4
@gl_filter_min = common dso_local global i32 0, align 4
@GL_TEXTURE_MAG_FILTER = common dso_local global i32 0, align 4
@gl_filter_max = common dso_local global i32 0, align 4
@GL_LINEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i64, i64, i64, i64, i64, i32*, i32*, i32*, i32*)* @Upload32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Upload32(i32* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i64 %6, i64 %7, i64 %8, i32* %9, i32* %10, i32* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca float*, align 8
  %35 = alloca i32, align 4
  %36 = alloca float, align 4
  %37 = alloca float, align 4
  %38 = alloca float, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca float, align 4
  %43 = alloca float, align 4
  %44 = alloca float, align 4
  store i32* %0, i32** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i64 %4, i64* %18, align 8
  store i64 %5, i64* %19, align 8
  store i64 %6, i64* %20, align 8
  store i64 %7, i64* %21, align 8
  store i64 %8, i64* %22, align 8
  store i32* %9, i32** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  store i32* %12, i32** %26, align 8
  store i32* null, i32** %28, align 8
  store i32* null, i32** %29, align 8
  %45 = load i32, i32* @GL_RGB, align 4
  store i32 %45, i32* %35, align 4
  store float 0.000000e+00, float* %36, align 4
  store float 0.000000e+00, float* %37, align 4
  store float 0.000000e+00, float* %38, align 4
  store i32 0, i32* %41, align 4
  store i32 1, i32* %30, align 4
  br label %46

46:                                               ; preds = %51, %13
  %47 = load i32, i32* %30, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %30, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %30, align 4
  br label %46

54:                                               ; preds = %46
  store i32 1, i32* %31, align 4
  br label %55

55:                                               ; preds = %60, %54
  %56 = load i32, i32* %31, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %31, align 4
  %62 = shl i32 %61, 1
  store i32 %62, i32* %31, align 4
  br label %55

63:                                               ; preds = %55
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_roundImagesDown, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32, i32* %30, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %30, align 4
  %74 = ashr i32 %73, 1
  store i32 %74, i32* %30, align 4
  br label %75

75:                                               ; preds = %72, %68, %63
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_roundImagesDown, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i32, i32* %31, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp sgt i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* %31, align 4
  %86 = ashr i32 %85, 1
  store i32 %86, i32* %31, align 4
  br label %87

87:                                               ; preds = %84, %80, %75
  %88 = load i32, i32* %30, align 4
  %89 = load i32, i32* %15, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %31, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %91, %87
  %96 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 0), align 8
  %97 = load i32, i32* %30, align 4
  %98 = load i32, i32* %31, align 4
  %99 = mul nsw i32 %97, %98
  %100 = mul nsw i32 %99, 4
  %101 = call i32* %96(i32 %100)
  store i32* %101, i32** %29, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32, i32* %16, align 4
  %105 = load i32*, i32** %29, align 8
  %106 = load i32, i32* %30, align 4
  %107 = load i32, i32* %31, align 4
  %108 = call i32 @ResampleTexture(i32* %102, i32 %103, i32 %104, i32* %105, i32 %106, i32 %107)
  %109 = load i32*, i32** %29, align 8
  store i32* %109, i32** %14, align 8
  %110 = load i32, i32* %30, align 4
  store i32 %110, i32* %15, align 4
  %111 = load i32, i32* %31, align 4
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %95, %91
  %113 = load i64, i64* %22, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %112
  %116 = load i32, i32* @textureMaxSize, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* @textureMaxSize, align 4
  %120 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glConfig, i32 0, i32 0), align 8
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %118, %115
  %123 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glConfig, i32 0, i32 0), align 8
  br label %126

124:                                              ; preds = %118
  %125 = load i32, i32* @textureMaxSize, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  store i32 %127, i32* %39, align 4
  %128 = load i32, i32* %39, align 4
  store i32 %128, i32* %40, align 4
  br label %132

129:                                              ; preds = %112
  %130 = load i32, i32* %15, align 4
  store i32 %130, i32* %39, align 4
  %131 = load i32, i32* %16, align 4
  store i32 %131, i32* %40, align 4
  br label %132

132:                                              ; preds = %129, %126
  %133 = load i64, i64* %19, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %132
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_picmip, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %30, align 4
  %140 = ashr i32 %139, %138
  store i32 %140, i32* %30, align 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_picmip, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %31, align 4
  %145 = ashr i32 %144, %143
  store i32 %145, i32* %31, align 4
  br label %146

146:                                              ; preds = %135, %132
  %147 = load i32, i32* %30, align 4
  %148 = icmp slt i32 %147, 1
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 1, i32* %30, align 4
  br label %150

150:                                              ; preds = %149, %146
  %151 = load i32, i32* %31, align 4
  %152 = icmp slt i32 %151, 1
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 1, i32* %31, align 4
  br label %154

154:                                              ; preds = %153, %150
  br label %155

155:                                              ; preds = %165, %154
  %156 = load i32, i32* %30, align 4
  %157 = load i32, i32* %39, align 4
  %158 = icmp sgt i32 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %155
  %160 = load i32, i32* %31, align 4
  %161 = load i32, i32* %40, align 4
  %162 = icmp sgt i32 %160, %161
  br label %163

163:                                              ; preds = %159, %155
  %164 = phi i1 [ true, %155 ], [ %162, %159 ]
  br i1 %164, label %165, label %170

165:                                              ; preds = %163
  %166 = load i32, i32* %30, align 4
  %167 = ashr i32 %166, 1
  store i32 %167, i32* %30, align 4
  %168 = load i32, i32* %31, align 4
  %169 = ashr i32 %168, 1
  store i32 %169, i32* %31, align 4
  br label %155

170:                                              ; preds = %163
  %171 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 0), align 8
  %172 = load i32, i32* %30, align 4
  %173 = sext i32 %172 to i64
  %174 = mul i64 4, %173
  %175 = load i32, i32* %31, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %174, %176
  %178 = trunc i64 %177 to i32
  %179 = call i32* %171(i32 %178)
  store i32* %179, i32** %28, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i32, i32* %16, align 4
  %182 = mul nsw i32 %180, %181
  store i32 %182, i32* %33, align 4
  %183 = load i32*, i32** %14, align 8
  %184 = bitcast i32* %183 to float*
  store float* %184, float** %34, align 8
  store i32 3, i32* %27, align 4
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_greyscale, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %197, label %189

189:                                              ; preds = %170
  %190 = load i64, i64* %20, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %248

192:                                              ; preds = %189
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_monolightmaps, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %248

197:                                              ; preds = %192, %170
  store i32 0, i32* %32, align 4
  br label %198

198:                                              ; preds = %244, %197
  %199 = load i32, i32* %32, align 4
  %200 = load i32, i32* %33, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %247

202:                                              ; preds = %198
  %203 = load float*, float** %34, align 8
  %204 = load i32, i32* %32, align 4
  %205 = mul nsw i32 %204, 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds float, float* %203, i64 %206
  %208 = load float, float* %207, align 4
  %209 = load float*, float** %34, align 8
  %210 = load i32, i32* %32, align 4
  %211 = mul nsw i32 %210, 4
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds float, float* %209, i64 %213
  %215 = load float, float* %214, align 4
  %216 = load float*, float** %34, align 8
  %217 = load i32, i32* %32, align 4
  %218 = mul nsw i32 %217, 4
  %219 = add nsw i32 %218, 2
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds float, float* %216, i64 %220
  %222 = load float, float* %221, align 4
  %223 = call float @LUMA(float %208, float %215, float %222)
  store float %223, float* %42, align 4
  %224 = load float, float* %42, align 4
  %225 = load float*, float** %34, align 8
  %226 = load i32, i32* %32, align 4
  %227 = mul nsw i32 %226, 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float, float* %225, i64 %228
  store float %224, float* %229, align 4
  %230 = load float, float* %42, align 4
  %231 = load float*, float** %34, align 8
  %232 = load i32, i32* %32, align 4
  %233 = mul nsw i32 %232, 4
  %234 = add nsw i32 %233, 1
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %231, i64 %235
  store float %230, float* %236, align 4
  %237 = load float, float* %42, align 4
  %238 = load float*, float** %34, align 8
  %239 = load i32, i32* %32, align 4
  %240 = mul nsw i32 %239, 4
  %241 = add nsw i32 %240, 2
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds float, float* %238, i64 %242
  store float %237, float* %243, align 4
  br label %244

244:                                              ; preds = %202
  %245 = load i32, i32* %32, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %32, align 4
  br label %198

247:                                              ; preds = %198
  br label %353

248:                                              ; preds = %192, %189
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_greyscale, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 0
  %251 = load float, float* %250, align 8
  %252 = fcmp une float %251, 0.000000e+00
  br i1 %252, label %261, label %253

253:                                              ; preds = %248
  %254 = load i64, i64* %20, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %352

256:                                              ; preds = %253
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_monolightmaps, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 0
  %259 = load float, float* %258, align 8
  %260 = fcmp une float %259, 0.000000e+00
  br i1 %260, label %261, label %352

261:                                              ; preds = %256, %248
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_greyscale, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load float, float* %263, align 8
  %265 = fcmp une float %264, 0.000000e+00
  br i1 %265, label %266, label %270

266:                                              ; preds = %261
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_greyscale, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 0
  %269 = load float, float* %268, align 8
  br label %274

270:                                              ; preds = %261
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_monolightmaps, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load float, float* %272, align 8
  br label %274

274:                                              ; preds = %270, %266
  %275 = phi float [ %269, %266 ], [ %273, %270 ]
  store float %275, float* %43, align 4
  store i32 0, i32* %32, align 4
  br label %276

276:                                              ; preds = %348, %274
  %277 = load i32, i32* %32, align 4
  %278 = load i32, i32* %33, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %351

280:                                              ; preds = %276
  %281 = load float*, float** %34, align 8
  %282 = load i32, i32* %32, align 4
  %283 = mul nsw i32 %282, 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds float, float* %281, i64 %284
  %286 = load float, float* %285, align 4
  %287 = load float*, float** %34, align 8
  %288 = load i32, i32* %32, align 4
  %289 = mul nsw i32 %288, 4
  %290 = add nsw i32 %289, 1
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds float, float* %287, i64 %291
  %293 = load float, float* %292, align 4
  %294 = load float*, float** %34, align 8
  %295 = load i32, i32* %32, align 4
  %296 = mul nsw i32 %295, 4
  %297 = add nsw i32 %296, 2
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds float, float* %294, i64 %298
  %300 = load float, float* %299, align 4
  %301 = call float @LUMA(float %286, float %293, float %300)
  store float %301, float* %44, align 4
  %302 = load float*, float** %34, align 8
  %303 = load i32, i32* %32, align 4
  %304 = mul nsw i32 %303, 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds float, float* %302, i64 %305
  %307 = load float, float* %306, align 4
  %308 = load float, float* %44, align 4
  %309 = load float, float* %43, align 4
  %310 = call float @LERP(float %307, float %308, float %309)
  %311 = load float*, float** %34, align 8
  %312 = load i32, i32* %32, align 4
  %313 = mul nsw i32 %312, 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds float, float* %311, i64 %314
  store float %310, float* %315, align 4
  %316 = load float*, float** %34, align 8
  %317 = load i32, i32* %32, align 4
  %318 = mul nsw i32 %317, 4
  %319 = add nsw i32 %318, 1
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds float, float* %316, i64 %320
  %322 = load float, float* %321, align 4
  %323 = load float, float* %44, align 4
  %324 = load float, float* %43, align 4
  %325 = call float @LERP(float %322, float %323, float %324)
  %326 = load float*, float** %34, align 8
  %327 = load i32, i32* %32, align 4
  %328 = mul nsw i32 %327, 4
  %329 = add nsw i32 %328, 1
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds float, float* %326, i64 %330
  store float %325, float* %331, align 4
  %332 = load float*, float** %34, align 8
  %333 = load i32, i32* %32, align 4
  %334 = mul nsw i32 %333, 4
  %335 = add nsw i32 %334, 2
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds float, float* %332, i64 %336
  %338 = load float, float* %337, align 4
  %339 = load float, float* %44, align 4
  %340 = load float, float* %43, align 4
  %341 = call float @LERP(float %338, float %339, float %340)
  %342 = load float*, float** %34, align 8
  %343 = load i32, i32* %32, align 4
  %344 = mul nsw i32 %343, 4
  %345 = add nsw i32 %344, 2
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds float, float* %342, i64 %346
  store float %341, float* %347, align 4
  br label %348

348:                                              ; preds = %280
  %349 = load i32, i32* %32, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %32, align 4
  br label %276

351:                                              ; preds = %276
  br label %352

352:                                              ; preds = %351, %256, %253
  br label %353

353:                                              ; preds = %352, %247
  %354 = load i64, i64* %20, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %371

356:                                              ; preds = %353
  %357 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_greyscale, align 8
  %358 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %357, i32 0, i32 1
  %359 = load i64, i64* %358, align 8
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %366, label %361

361:                                              ; preds = %356
  %362 = load %struct.TYPE_14__*, %struct.TYPE_14__** @r_monolightmaps, align 8
  %363 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %361, %356
  %367 = load i32, i32* @GL_LUMINANCE, align 4
  store i32 %367, i32* %35, align 4
  br label %370

368:                                              ; preds = %361
  %369 = load i32, i32* @GL_RGB, align 4
  store i32 %369, i32* %35, align 4
  br label %370

370:                                              ; preds = %368, %366
  br label %550

371:                                              ; preds = %353
  store i32 0, i32* %32, align 4
  br label %372

372:                                              ; preds = %441, %371
  %373 = load i32, i32* %32, align 4
  %374 = load i32, i32* %33, align 4
  %375 = icmp slt i32 %373, %374
  br i1 %375, label %376, label %444

376:                                              ; preds = %372
  %377 = load float*, float** %34, align 8
  %378 = load i32, i32* %32, align 4
  %379 = mul nsw i32 %378, 4
  %380 = add nsw i32 %379, 0
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds float, float* %377, i64 %381
  %383 = load float, float* %382, align 4
  %384 = load float, float* %36, align 4
  %385 = fcmp ogt float %383, %384
  br i1 %385, label %386, label %394

386:                                              ; preds = %376
  %387 = load float*, float** %34, align 8
  %388 = load i32, i32* %32, align 4
  %389 = mul nsw i32 %388, 4
  %390 = add nsw i32 %389, 0
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds float, float* %387, i64 %391
  %393 = load float, float* %392, align 4
  store float %393, float* %36, align 4
  br label %394

394:                                              ; preds = %386, %376
  %395 = load float*, float** %34, align 8
  %396 = load i32, i32* %32, align 4
  %397 = mul nsw i32 %396, 4
  %398 = add nsw i32 %397, 1
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds float, float* %395, i64 %399
  %401 = load float, float* %400, align 4
  %402 = load float, float* %37, align 4
  %403 = fcmp ogt float %401, %402
  br i1 %403, label %404, label %412

404:                                              ; preds = %394
  %405 = load float*, float** %34, align 8
  %406 = load i32, i32* %32, align 4
  %407 = mul nsw i32 %406, 4
  %408 = add nsw i32 %407, 1
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds float, float* %405, i64 %409
  %411 = load float, float* %410, align 4
  store float %411, float* %37, align 4
  br label %412

412:                                              ; preds = %404, %394
  %413 = load float*, float** %34, align 8
  %414 = load i32, i32* %32, align 4
  %415 = mul nsw i32 %414, 4
  %416 = add nsw i32 %415, 2
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds float, float* %413, i64 %417
  %419 = load float, float* %418, align 4
  %420 = load float, float* %38, align 4
  %421 = fcmp ogt float %419, %420
  br i1 %421, label %422, label %430

422:                                              ; preds = %412
  %423 = load float*, float** %34, align 8
  %424 = load i32, i32* %32, align 4
  %425 = mul nsw i32 %424, 4
  %426 = add nsw i32 %425, 2
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds float, float* %423, i64 %427
  %429 = load float, float* %428, align 4
  store float %429, float* %38, align 4
  br label %430

430:                                              ; preds = %422, %412
  %431 = load float*, float** %34, align 8
  %432 = load i32, i32* %32, align 4
  %433 = mul nsw i32 %432, 4
  %434 = add nsw i32 %433, 3
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds float, float* %431, i64 %435
  %437 = load float, float* %436, align 4
  %438 = fcmp une float %437, 2.550000e+02
  br i1 %438, label %439, label %440

439:                                              ; preds = %430
  store i32 4, i32* %27, align 4
  br label %444

440:                                              ; preds = %430
  br label %441

441:                                              ; preds = %440
  %442 = load i32, i32* %32, align 4
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %32, align 4
  br label %372

444:                                              ; preds = %439, %372
  %445 = load i32, i32* %27, align 4
  %446 = icmp eq i32 %445, 3
  br i1 %446, label %447, label %506

447:                                              ; preds = %444
  %448 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_greyscale, align 8
  %449 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %448, i32 0, i32 1
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %467

452:                                              ; preds = %447
  %453 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_texturebits, align 8
  %454 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %453, i32 0, i32 0
  %455 = load i32, i32* %454, align 4
  %456 = icmp eq i32 %455, 16
  br i1 %456, label %462, label %457

457:                                              ; preds = %452
  %458 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_texturebits, align 8
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 4
  %461 = icmp eq i32 %460, 32
  br i1 %461, label %462, label %464

462:                                              ; preds = %457, %452
  %463 = load i32, i32* @GL_LUMINANCE8, align 4
  store i32 %463, i32* %35, align 4
  br label %466

464:                                              ; preds = %457
  %465 = load i32, i32* @GL_LUMINANCE, align 4
  store i32 %465, i32* %35, align 4
  br label %466

466:                                              ; preds = %464, %462
  br label %505

467:                                              ; preds = %447
  %468 = load i64, i64* %21, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %470, label %476

470:                                              ; preds = %467
  %471 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glConfig, i32 0, i32 1), align 8
  %472 = load i64, i64* @TC_S3TC_ARB, align 8
  %473 = icmp eq i64 %471, %472
  br i1 %473, label %474, label %476

474:                                              ; preds = %470
  %475 = load i32, i32* @GL_COMPRESSED_RGBA_S3TC_DXT1_EXT, align 4
  store i32 %475, i32* %35, align 4
  br label %504

476:                                              ; preds = %470, %467
  %477 = load i64, i64* %21, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %479, label %485

479:                                              ; preds = %476
  %480 = load i64, i64* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @glConfig, i32 0, i32 1), align 8
  %481 = load i64, i64* @TC_S3TC, align 8
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %483, label %485

483:                                              ; preds = %479
  %484 = load i32, i32* @GL_RGB4_S3TC, align 4
  store i32 %484, i32* %35, align 4
  br label %503

485:                                              ; preds = %479, %476
  %486 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_texturebits, align 8
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = icmp eq i32 %488, 16
  br i1 %489, label %490, label %492

490:                                              ; preds = %485
  %491 = load i32, i32* @GL_RGB5, align 4
  store i32 %491, i32* %35, align 4
  br label %502

492:                                              ; preds = %485
  %493 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_texturebits, align 8
  %494 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %493, i32 0, i32 0
  %495 = load i32, i32* %494, align 4
  %496 = icmp eq i32 %495, 32
  br i1 %496, label %497, label %499

497:                                              ; preds = %492
  %498 = load i32, i32* @GL_RGB8, align 4
  store i32 %498, i32* %35, align 4
  br label %501

499:                                              ; preds = %492
  %500 = load i32, i32* @GL_RGB, align 4
  store i32 %500, i32* %35, align 4
  br label %501

501:                                              ; preds = %499, %497
  br label %502

502:                                              ; preds = %501, %490
  br label %503

503:                                              ; preds = %502, %483
  br label %504

504:                                              ; preds = %503, %474
  br label %505

505:                                              ; preds = %504, %466
  br label %549

506:                                              ; preds = %444
  %507 = load i32, i32* %27, align 4
  %508 = icmp eq i32 %507, 4
  br i1 %508, label %509, label %548

509:                                              ; preds = %506
  %510 = load %struct.TYPE_15__*, %struct.TYPE_15__** @r_greyscale, align 8
  %511 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %510, i32 0, i32 1
  %512 = load i64, i64* %511, align 8
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %529

514:                                              ; preds = %509
  %515 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_texturebits, align 8
  %516 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 4
  %518 = icmp eq i32 %517, 16
  br i1 %518, label %524, label %519

519:                                              ; preds = %514
  %520 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_texturebits, align 8
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = icmp eq i32 %522, 32
  br i1 %523, label %524, label %526

524:                                              ; preds = %519, %514
  %525 = load i32, i32* @GL_LUMINANCE8_ALPHA8, align 4
  store i32 %525, i32* %35, align 4
  br label %528

526:                                              ; preds = %519
  %527 = load i32, i32* @GL_LUMINANCE_ALPHA, align 4
  store i32 %527, i32* %35, align 4
  br label %528

528:                                              ; preds = %526, %524
  br label %547

529:                                              ; preds = %509
  %530 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_texturebits, align 8
  %531 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 4
  %533 = icmp eq i32 %532, 16
  br i1 %533, label %534, label %536

534:                                              ; preds = %529
  %535 = load i32, i32* @GL_RGBA4, align 4
  store i32 %535, i32* %35, align 4
  br label %546

536:                                              ; preds = %529
  %537 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_texturebits, align 8
  %538 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 4
  %540 = icmp eq i32 %539, 32
  br i1 %540, label %541, label %543

541:                                              ; preds = %536
  %542 = load i32, i32* @GL_RGBA8, align 4
  store i32 %542, i32* %35, align 4
  br label %545

543:                                              ; preds = %536
  %544 = load i32, i32* @GL_RGBA, align 4
  store i32 %544, i32* %35, align 4
  br label %545

545:                                              ; preds = %543, %541
  br label %546

546:                                              ; preds = %545, %534
  br label %547

547:                                              ; preds = %546, %528
  br label %548

548:                                              ; preds = %547, %506
  br label %549

549:                                              ; preds = %548, %505
  br label %550

550:                                              ; preds = %549, %370
  %551 = load i32, i32* %30, align 4
  %552 = load i32*, i32** %24, align 8
  store i32 %551, i32* %552, align 4
  %553 = load i32, i32* %31, align 4
  %554 = load i32*, i32** %25, align 8
  store i32 %553, i32* %554, align 4
  %555 = load i32, i32* %35, align 4
  %556 = load i32*, i32** %23, align 8
  store i32 %555, i32* %556, align 4
  %557 = load i32*, i32** %26, align 8
  store i32 1, i32* %557, align 4
  %558 = load i32, i32* %30, align 4
  %559 = load i32, i32* %15, align 4
  %560 = icmp eq i32 %558, %559
  br i1 %560, label %561, label %631

561:                                              ; preds = %550
  %562 = load i32, i32* %31, align 4
  %563 = load i32, i32* %16, align 4
  %564 = icmp eq i32 %562, %563
  br i1 %564, label %565, label %631

565:                                              ; preds = %561
  %566 = load i64, i64* %18, align 8
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %577, label %568

568:                                              ; preds = %565
  %569 = load i32, i32* @GL_TEXTURE_2D, align 4
  %570 = load i32, i32* %35, align 4
  %571 = load i32, i32* %30, align 4
  %572 = load i32, i32* %31, align 4
  %573 = load i32, i32* @GL_RGBA, align 4
  %574 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %575 = load i32*, i32** %14, align 8
  %576 = call i32 @qglTexImage2D(i32 %569, i32 0, i32 %570, i32 %571, i32 %572, i32 0, i32 %573, i32 %574, i32* %575)
  br label %748

577:                                              ; preds = %565
  br label %578

578:                                              ; preds = %619, %577
  %579 = load i32, i32* %30, align 4
  %580 = icmp sgt i32 %579, 1
  br i1 %580, label %584, label %581

581:                                              ; preds = %578
  %582 = load i32, i32* %31, align 4
  %583 = icmp sgt i32 %582, 1
  br label %584

584:                                              ; preds = %581, %578
  %585 = phi i1 [ true, %578 ], [ %583, %581 ]
  br i1 %585, label %586, label %622

586:                                              ; preds = %584
  %587 = load i32, i32* %41, align 4
  %588 = add nsw i32 %587, 1
  %589 = load i32, i32* %17, align 4
  %590 = icmp sge i32 %588, %589
  br i1 %590, label %591, label %592

591:                                              ; preds = %586
  br label %622

592:                                              ; preds = %586
  %593 = load i32, i32* @GL_TEXTURE_2D, align 4
  %594 = load i32, i32* %41, align 4
  %595 = load i32, i32* %35, align 4
  %596 = load i32, i32* %30, align 4
  %597 = load i32, i32* %31, align 4
  %598 = load i32, i32* @GL_RGBA, align 4
  %599 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %600 = load i32*, i32** %14, align 8
  %601 = call i32 @qglTexImage2D(i32 %593, i32 %594, i32 %595, i32 %596, i32 %597, i32 0, i32 %598, i32 %599, i32* %600)
  %602 = load i32, i32* %30, align 4
  %603 = load i32, i32* %31, align 4
  %604 = mul nsw i32 %602, %603
  %605 = load i32*, i32** %14, align 8
  %606 = sext i32 %604 to i64
  %607 = getelementptr inbounds i32, i32* %605, i64 %606
  store i32* %607, i32** %14, align 8
  %608 = load i32, i32* %30, align 4
  %609 = sdiv i32 %608, 2
  store i32 %609, i32* %30, align 4
  %610 = load i32, i32* %31, align 4
  %611 = sdiv i32 %610, 2
  store i32 %611, i32* %31, align 4
  %612 = load i32, i32* %30, align 4
  %613 = icmp slt i32 %612, 1
  br i1 %613, label %614, label %615

614:                                              ; preds = %592
  store i32 1, i32* %30, align 4
  br label %615

615:                                              ; preds = %614, %592
  %616 = load i32, i32* %31, align 4
  %617 = icmp slt i32 %616, 1
  br i1 %617, label %618, label %619

618:                                              ; preds = %615
  store i32 1, i32* %31, align 4
  br label %619

619:                                              ; preds = %618, %615
  %620 = load i32, i32* %41, align 4
  %621 = add nsw i32 %620, 1
  store i32 %621, i32* %41, align 4
  br label %578

622:                                              ; preds = %591, %584
  br label %623

623:                                              ; preds = %622
  %624 = load i32*, i32** %28, align 8
  %625 = load i32*, i32** %14, align 8
  %626 = load i32, i32* %30, align 4
  %627 = load i32, i32* %31, align 4
  %628 = mul nsw i32 %626, %627
  %629 = mul nsw i32 %628, 4
  %630 = call i32 @Com_Memcpy(i32* %624, i32* %625, i32 %629)
  br label %668

631:                                              ; preds = %561, %550
  br label %632

632:                                              ; preds = %659, %631
  %633 = load i32, i32* %15, align 4
  %634 = load i32, i32* %30, align 4
  %635 = icmp sgt i32 %633, %634
  br i1 %635, label %640, label %636

636:                                              ; preds = %632
  %637 = load i32, i32* %16, align 4
  %638 = load i32, i32* %31, align 4
  %639 = icmp sgt i32 %637, %638
  br label %640

640:                                              ; preds = %636, %632
  %641 = phi i1 [ true, %632 ], [ %639, %636 ]
  br i1 %641, label %642, label %660

642:                                              ; preds = %640
  %643 = load i32*, i32** %14, align 8
  %644 = bitcast i32* %643 to float*
  %645 = load i32, i32* %15, align 4
  %646 = load i32, i32* %16, align 4
  %647 = call i32 @R_MipMap(float* %644, i32 %645, i32 %646)
  %648 = load i32, i32* %15, align 4
  %649 = ashr i32 %648, 1
  store i32 %649, i32* %15, align 4
  %650 = load i32, i32* %16, align 4
  %651 = ashr i32 %650, 1
  store i32 %651, i32* %16, align 4
  %652 = load i32, i32* %15, align 4
  %653 = icmp slt i32 %652, 1
  br i1 %653, label %654, label %655

654:                                              ; preds = %642
  store i32 1, i32* %15, align 4
  br label %655

655:                                              ; preds = %654, %642
  %656 = load i32, i32* %16, align 4
  %657 = icmp slt i32 %656, 1
  br i1 %657, label %658, label %659

658:                                              ; preds = %655
  store i32 1, i32* %16, align 4
  br label %659

659:                                              ; preds = %658, %655
  br label %632

660:                                              ; preds = %640
  %661 = load i32*, i32** %28, align 8
  %662 = load i32*, i32** %14, align 8
  %663 = load i32, i32* %15, align 4
  %664 = load i32, i32* %16, align 4
  %665 = mul nsw i32 %663, %664
  %666 = mul nsw i32 %665, 4
  %667 = call i32 @Com_Memcpy(i32* %661, i32* %662, i32 %666)
  br label %668

668:                                              ; preds = %660, %623
  %669 = load i32*, i32** %28, align 8
  %670 = load i32, i32* %30, align 4
  %671 = load i32, i32* %31, align 4
  %672 = load i64, i64* %18, align 8
  %673 = icmp ne i64 %672, 0
  %674 = xor i1 %673, true
  %675 = zext i1 %674 to i32
  %676 = call i32 @R_LightScaleTexture(i32* %669, i32 %670, i32 %671, i32 %675)
  %677 = load i32, i32* @GL_TEXTURE_2D, align 4
  %678 = load i32, i32* %41, align 4
  %679 = load i32, i32* %35, align 4
  %680 = load i32, i32* %30, align 4
  %681 = load i32, i32* %31, align 4
  %682 = load i32, i32* @GL_RGBA, align 4
  %683 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %684 = load i32*, i32** %28, align 8
  %685 = call i32 @qglTexImage2D(i32 %677, i32 %678, i32 %679, i32 %680, i32 %681, i32 0, i32 %682, i32 %683, i32* %684)
  %686 = load i64, i64* %18, align 8
  %687 = icmp ne i64 %686, 0
  br i1 %687, label %688, label %747

688:                                              ; preds = %668
  br label %689

689:                                              ; preds = %733, %688
  %690 = load i32, i32* %30, align 4
  %691 = icmp sgt i32 %690, 1
  br i1 %691, label %695, label %692

692:                                              ; preds = %689
  %693 = load i32, i32* %31, align 4
  %694 = icmp sgt i32 %693, 1
  br label %695

695:                                              ; preds = %692, %689
  %696 = phi i1 [ true, %689 ], [ %694, %692 ]
  br i1 %696, label %697, label %743

697:                                              ; preds = %695
  %698 = load i32*, i32** %28, align 8
  %699 = bitcast i32* %698 to float*
  %700 = load i32, i32* %30, align 4
  %701 = load i32, i32* %31, align 4
  %702 = call i32 @R_MipMap(float* %699, i32 %700, i32 %701)
  %703 = load i32, i32* %30, align 4
  %704 = ashr i32 %703, 1
  store i32 %704, i32* %30, align 4
  %705 = load i32, i32* %31, align 4
  %706 = ashr i32 %705, 1
  store i32 %706, i32* %31, align 4
  %707 = load i32, i32* %30, align 4
  %708 = icmp slt i32 %707, 1
  br i1 %708, label %709, label %710

709:                                              ; preds = %697
  store i32 1, i32* %30, align 4
  br label %710

710:                                              ; preds = %709, %697
  %711 = load i32, i32* %31, align 4
  %712 = icmp slt i32 %711, 1
  br i1 %712, label %713, label %714

713:                                              ; preds = %710
  store i32 1, i32* %31, align 4
  br label %714

714:                                              ; preds = %713, %710
  %715 = load i32, i32* %41, align 4
  %716 = add nsw i32 %715, 1
  store i32 %716, i32* %41, align 4
  %717 = load %struct.TYPE_17__*, %struct.TYPE_17__** @r_colorMipLevels, align 8
  %718 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %717, i32 0, i32 0
  %719 = load i64, i64* %718, align 8
  %720 = icmp ne i64 %719, 0
  br i1 %720, label %721, label %733

721:                                              ; preds = %714
  %722 = load i32*, i32** %28, align 8
  %723 = bitcast i32* %722 to float*
  %724 = load i32, i32* %30, align 4
  %725 = load i32, i32* %31, align 4
  %726 = mul nsw i32 %724, %725
  %727 = load i32*, i32** @mipBlendColors, align 8
  %728 = load i32, i32* %41, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds i32, i32* %727, i64 %729
  %731 = load i32, i32* %730, align 4
  %732 = call i32 @R_BlendOverTexture(float* %723, i32 %726, i32 %731)
  br label %733

733:                                              ; preds = %721, %714
  %734 = load i32, i32* @GL_TEXTURE_2D, align 4
  %735 = load i32, i32* %41, align 4
  %736 = load i32, i32* %35, align 4
  %737 = load i32, i32* %30, align 4
  %738 = load i32, i32* %31, align 4
  %739 = load i32, i32* @GL_RGBA, align 4
  %740 = load i32, i32* @GL_UNSIGNED_BYTE, align 4
  %741 = load i32*, i32** %28, align 8
  %742 = call i32 @qglTexImage2D(i32 %734, i32 %735, i32 %736, i32 %737, i32 %738, i32 0, i32 %739, i32 %740, i32* %741)
  br label %689

743:                                              ; preds = %695
  %744 = load i32, i32* %41, align 4
  %745 = add nsw i32 %744, 1
  %746 = load i32*, i32** %26, align 8
  store i32 %745, i32* %746, align 4
  br label %747

747:                                              ; preds = %743, %668
  br label %748

748:                                              ; preds = %747, %568
  %749 = load i64, i64* %18, align 8
  %750 = icmp ne i64 %749, 0
  br i1 %750, label %751, label %773

751:                                              ; preds = %748
  %752 = load i64, i64* @textureFilterAnisotropic, align 8
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %764

754:                                              ; preds = %751
  %755 = load i32, i32* @GL_TEXTURE_2D, align 4
  %756 = load i32, i32* @GL_TEXTURE_MAX_ANISOTROPY_EXT, align 4
  %757 = load i32, i32* @maxAnisotropy, align 4
  %758 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_ext_max_anisotropy, align 8
  %759 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %758, i32 0, i32 0
  %760 = load i32, i32* %759, align 4
  %761 = call i64 @Com_Clamp(i32 1, i32 %757, i32 %760)
  %762 = trunc i64 %761 to i32
  %763 = call i32 @qglTexParameteri(i32 %755, i32 %756, i32 %762)
  br label %764

764:                                              ; preds = %754, %751
  %765 = load i32, i32* @GL_TEXTURE_2D, align 4
  %766 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %767 = load i32, i32* @gl_filter_min, align 4
  %768 = call i32 @qglTexParameterf(i32 %765, i32 %766, i32 %767)
  %769 = load i32, i32* @GL_TEXTURE_2D, align 4
  %770 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %771 = load i32, i32* @gl_filter_max, align 4
  %772 = call i32 @qglTexParameterf(i32 %769, i32 %770, i32 %771)
  br label %789

773:                                              ; preds = %748
  %774 = load i64, i64* @textureFilterAnisotropic, align 8
  %775 = icmp ne i64 %774, 0
  br i1 %775, label %776, label %780

776:                                              ; preds = %773
  %777 = load i32, i32* @GL_TEXTURE_2D, align 4
  %778 = load i32, i32* @GL_TEXTURE_MAX_ANISOTROPY_EXT, align 4
  %779 = call i32 @qglTexParameteri(i32 %777, i32 %778, i32 1)
  br label %780

780:                                              ; preds = %776, %773
  %781 = load i32, i32* @GL_TEXTURE_2D, align 4
  %782 = load i32, i32* @GL_TEXTURE_MIN_FILTER, align 4
  %783 = load i32, i32* @GL_LINEAR, align 4
  %784 = call i32 @qglTexParameterf(i32 %781, i32 %782, i32 %783)
  %785 = load i32, i32* @GL_TEXTURE_2D, align 4
  %786 = load i32, i32* @GL_TEXTURE_MAG_FILTER, align 4
  %787 = load i32, i32* @GL_LINEAR, align 4
  %788 = call i32 @qglTexParameterf(i32 %785, i32 %786, i32 %787)
  br label %789

789:                                              ; preds = %780, %764
  %790 = call i32 (...) @GL_CheckErrors()
  %791 = load i32*, i32** %28, align 8
  %792 = icmp ne i32* %791, null
  br i1 %792, label %793, label %797

793:                                              ; preds = %789
  %794 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 1), align 8
  %795 = load i32*, i32** %28, align 8
  %796 = call i32 %794(i32* %795)
  br label %797

797:                                              ; preds = %793, %789
  %798 = load i32*, i32** %29, align 8
  %799 = icmp ne i32* %798, null
  br i1 %799, label %800, label %804

800:                                              ; preds = %797
  %801 = load i32 (i32*)*, i32 (i32*)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 1), align 8
  %802 = load i32*, i32** %29, align 8
  %803 = call i32 %801(i32* %802)
  br label %804

804:                                              ; preds = %800, %797
  ret void
}

declare dso_local i32 @ResampleTexture(i32*, i32, i32, i32*, i32, i32) #1

declare dso_local float @LUMA(float, float, float) #1

declare dso_local float @LERP(float, float, float) #1

declare dso_local i32 @qglTexImage2D(i32, i32, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @Com_Memcpy(i32*, i32*, i32) #1

declare dso_local i32 @R_MipMap(float*, i32, i32) #1

declare dso_local i32 @R_LightScaleTexture(i32*, i32, i32, i32) #1

declare dso_local i32 @R_BlendOverTexture(float*, i32, i32) #1

declare dso_local i32 @qglTexParameteri(i32, i32, i32) #1

declare dso_local i64 @Com_Clamp(i32, i32, i32) #1

declare dso_local i32 @qglTexParameterf(i32, i32, i32) #1

declare dso_local i32 @GL_CheckErrors(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
