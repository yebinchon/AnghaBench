; ModuleID = '/home/carl/AnghaBench/lab/engine/code/bspc/extr_textures.c_TexinfoForBrushTexture.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/bspc/extr_textures.c_TexinfoForBrushTexture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, i64, i64, i32, i64* }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_8__ = type { i32*, i32, float*, i64, i64, i64* }

@Q_PI = common dso_local global i32 0, align 4
@texinfo = common dso_local global %struct.TYPE_7__* null, align 8
@numtexinfo = common dso_local global i32 0, align 4
@textureref = common dso_local global %struct.TYPE_9__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TexinfoForBrushTexture(i32* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__, align 8
  %17 = alloca %struct.TYPE_7__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [2 x float], align 4
  %22 = alloca %struct.TYPE_8__, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 5
  %26 = load i64*, i64** %25, align 8
  %27 = getelementptr inbounds i64, i64* %26, i64 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %412

31:                                               ; preds = %3
  %32 = call i32 @memset(%struct.TYPE_7__* %16, i32 0, i32 40)
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  %37 = load i64*, i64** %36, align 8
  %38 = call i32 @strcpy(i64* %34, i64* %37)
  %39 = load i32*, i32** %5, align 8
  %40 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %41 = load i32*, i32** %40, align 16
  %42 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @TextureAxisFromPlane(i32* %39, i32* %41, i32* %43)
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %47 = load i32*, i32** %46, align 16
  %48 = call float @DotProduct(i32* %45, i32* %47)
  %49 = getelementptr inbounds [2 x float], [2 x float]* %21, i64 0, i64 0
  store float %48, float* %49, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  %52 = load i32*, i32** %51, align 8
  %53 = call float @DotProduct(i32* %50, i32* %52)
  %54 = getelementptr inbounds [2 x float], [2 x float]* %21, i64 0, i64 1
  store float %53, float* %54, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %31
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %31
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 1, i32* %77, align 4
  br label %78

78:                                               ; preds = %73, %66
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  br label %116

84:                                               ; preds = %78
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 90
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %115

90:                                               ; preds = %84
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 180
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  br label %114

96:                                               ; preds = %90
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 270
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %113

102:                                              ; preds = %96
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %105, 180
  %107 = load i32, i32* @Q_PI, align 4
  %108 = mul nsw i32 %106, %107
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @sin(i32 %109)
  store i32 %110, i32* %12, align 4
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @cos(i32 %111)
  store i32 %112, i32* %13, align 4
  br label %113

113:                                              ; preds = %102, %101
  br label %114

114:                                              ; preds = %113, %95
  br label %115

115:                                              ; preds = %114, %89
  br label %116

116:                                              ; preds = %115, %83
  %117 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %118 = load i32*, i32** %117, align 16
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 0, i32* %9, align 4
  br label %132

123:                                              ; preds = %116
  %124 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 0
  %125 = load i32*, i32** %124, align 16
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  store i32 1, i32* %9, align 4
  br label %131

130:                                              ; preds = %123
  store i32 2, i32* %9, align 4
  br label %131

131:                                              ; preds = %130, %129
  br label %132

132:                                              ; preds = %131, %122
  %133 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 0, i32* %10, align 4
  br label %148

139:                                              ; preds = %132
  %140 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 1
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  store i32 1, i32* %10, align 4
  br label %147

146:                                              ; preds = %139
  store i32 2, i32* %10, align 4
  br label %147

147:                                              ; preds = %146, %145
  br label %148

148:                                              ; preds = %147, %138
  store i32 0, i32* %18, align 4
  br label %149

149:                                              ; preds = %211, %148
  %150 = load i32, i32* %18, align 4
  %151 = icmp slt i32 %150, 2
  br i1 %151, label %152, label %214

152:                                              ; preds = %149
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 %155
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = mul nsw i32 %153, %161
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %10, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = mul nsw i32 %163, %171
  %173 = sub nsw i32 %162, %172
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %12, align 4
  %175 = load i32, i32* %18, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = mul nsw i32 %174, %182
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %18, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = mul nsw i32 %184, %192
  %194 = add nsw i32 %183, %193
  store i32 %194, i32* %15, align 4
  %195 = load i32, i32* %14, align 4
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  store i32 %195, i32* %202, align 4
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %18, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  store i32 %203, i32* %210, align 4
  br label %211

211:                                              ; preds = %152
  %212 = load i32, i32* %18, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %18, align 4
  br label %149

214:                                              ; preds = %149
  store i32 0, i32* %18, align 4
  br label %215

215:                                              ; preds = %252, %214
  %216 = load i32, i32* %18, align 4
  %217 = icmp slt i32 %216, 2
  br i1 %217, label %218, label %255

218:                                              ; preds = %215
  store i32 0, i32* %19, align 4
  br label %219

219:                                              ; preds = %248, %218
  %220 = load i32, i32* %19, align 4
  %221 = icmp slt i32 %220, 3
  br i1 %221, label %222, label %251

222:                                              ; preds = %219
  %223 = load i32, i32* %18, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [2 x i32*], [2 x i32*]* %8, i64 0, i64 %224
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %19, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %18, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = sdiv i32 %230, %237
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %240 = load i32**, i32*** %239, align 8
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %240, i64 %242
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %19, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  store i32 %238, i32* %247, align 4
  br label %248

248:                                              ; preds = %222
  %249 = load i32, i32* %19, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %19, align 4
  br label %219

251:                                              ; preds = %219
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %18, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %18, align 4
  br label %215

255:                                              ; preds = %215
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  %258 = load float*, float** %257, align 8
  %259 = getelementptr inbounds float, float* %258, i64 0
  %260 = load float, float* %259, align 4
  %261 = getelementptr inbounds [2 x float], [2 x float]* %21, i64 0, i64 0
  %262 = load float, float* %261, align 4
  %263 = fadd float %260, %262
  %264 = fptosi float %263 to i32
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %266 = load i32**, i32*** %265, align 8
  %267 = getelementptr inbounds i32*, i32** %266, i64 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 3
  store i32 %264, i32* %269, align 4
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %270, i32 0, i32 2
  %272 = load float*, float** %271, align 8
  %273 = getelementptr inbounds float, float* %272, i64 1
  %274 = load float, float* %273, align 4
  %275 = getelementptr inbounds [2 x float], [2 x float]* %21, i64 0, i64 1
  %276 = load float, float* %275, align 4
  %277 = fadd float %274, %276
  %278 = fptosi float %277 to i32
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %280 = load i32**, i32*** %279, align 8
  %281 = getelementptr inbounds i32*, i32** %280, i64 1
  %282 = load i32*, i32** %281, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 3
  store i32 %278, i32* %283, align 4
  %284 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %285 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %284, i32 0, i32 3
  %286 = load i64, i64* %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  store i64 %286, i64* %287, align 8
  %288 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %288, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  store i64 %290, i64* %291, align 8
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** @texinfo, align 8
  store %struct.TYPE_7__* %292, %struct.TYPE_7__** %17, align 8
  store i32 0, i32* %18, align 4
  br label %293

293:                                              ; preds = %365, %255
  %294 = load i32, i32* %18, align 4
  %295 = load i32, i32* @numtexinfo, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %370

297:                                              ; preds = %293
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %300, %302
  br i1 %303, label %304, label %305

304:                                              ; preds = %297
  br label %365

305:                                              ; preds = %297
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 2
  %308 = load i64, i64* %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %308, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %305
  br label %365

313:                                              ; preds = %305
  store i32 0, i32* %19, align 4
  br label %314

314:                                              ; preds = %359, %313
  %315 = load i32, i32* %19, align 4
  %316 = icmp slt i32 %315, 2
  br i1 %316, label %317, label %362

317:                                              ; preds = %314
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 4
  %320 = load i64*, i64** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 4
  %322 = load i64*, i64** %321, align 8
  %323 = call i64 @strcmp(i64* %320, i64* %322)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %317
  br label %364

326:                                              ; preds = %317
  store i32 0, i32* %20, align 4
  br label %327

327:                                              ; preds = %355, %326
  %328 = load i32, i32* %20, align 4
  %329 = icmp slt i32 %328, 4
  br i1 %329, label %330, label %358

330:                                              ; preds = %327
  %331 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %332 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %331, i32 0, i32 0
  %333 = load i32**, i32*** %332, align 8
  %334 = load i32, i32* %19, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32*, i32** %333, i64 %335
  %337 = load i32*, i32** %336, align 8
  %338 = load i32, i32* %20, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32, i32* %337, i64 %339
  %341 = load i32, i32* %340, align 4
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %343 = load i32**, i32*** %342, align 8
  %344 = load i32, i32* %19, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32*, i32** %343, i64 %345
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %20, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %341, %351
  br i1 %352, label %353, label %354

353:                                              ; preds = %330
  br label %364

354:                                              ; preds = %330
  br label %355

355:                                              ; preds = %354
  %356 = load i32, i32* %20, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %20, align 4
  br label %327

358:                                              ; preds = %327
  br label %359

359:                                              ; preds = %358
  %360 = load i32, i32* %19, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %19, align 4
  br label %314

362:                                              ; preds = %314
  %363 = load i32, i32* %18, align 4
  store i32 %363, i32* %4, align 4
  br label %412

364:                                              ; preds = %353, %325
  br label %365

365:                                              ; preds = %364, %312, %304
  %366 = load i32, i32* %18, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %18, align 4
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %369 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i32 1
  store %struct.TYPE_7__* %369, %struct.TYPE_7__** %17, align 8
  br label %293

370:                                              ; preds = %293
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %372 = bitcast %struct.TYPE_7__* %371 to i8*
  %373 = bitcast %struct.TYPE_7__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %372, i8* align 8 %373, i64 40, i1 false)
  %374 = load i32, i32* @numtexinfo, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* @numtexinfo, align 4
  %376 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 5
  %378 = load i64*, i64** %377, align 8
  %379 = call i32 @FindMiptex(i64* %378)
  store i32 %379, i32* %23, align 4
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** @textureref, align 8
  %381 = load i32, i32* %23, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %383, i32 0, i32 0
  %385 = load i64*, i64** %384, align 8
  %386 = getelementptr inbounds i64, i64* %385, i64 0
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %407

389:                                              ; preds = %370
  %390 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %391 = bitcast %struct.TYPE_8__* %22 to i8*
  %392 = bitcast %struct.TYPE_8__* %390 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %391, i8* align 8 %392, i64 48, i1 false)
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 5
  %394 = load i64*, i64** %393, align 8
  %395 = load %struct.TYPE_9__*, %struct.TYPE_9__** @textureref, align 8
  %396 = load i32, i32* %23, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %398, i32 0, i32 0
  %400 = load i64*, i64** %399, align 8
  %401 = call i32 @strcpy(i64* %394, i64* %400)
  %402 = load i32*, i32** %5, align 8
  %403 = load i32*, i32** %7, align 8
  %404 = call i32 @TexinfoForBrushTexture(i32* %402, %struct.TYPE_8__* %22, i32* %403)
  %405 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %406 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %405, i32 0, i32 3
  store i32 %404, i32* %406, align 8
  br label %410

407:                                              ; preds = %370
  %408 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %409 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %408, i32 0, i32 3
  store i32 -1, i32* %409, align 8
  br label %410

410:                                              ; preds = %407, %389
  %411 = load i32, i32* %18, align 4
  store i32 %411, i32* %4, align 4
  br label %412

412:                                              ; preds = %410, %362, %30
  %413 = load i32, i32* %4, align 4
  ret i32 %413
}

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @strcpy(i64*, i64*) #1

declare dso_local i32 @TextureAxisFromPlane(i32*, i32*, i32*) #1

declare dso_local float @DotProduct(i32*, i32*) #1

declare dso_local i32 @sin(i32) #1

declare dso_local i32 @cos(i32) #1

declare dso_local i64 @strcmp(i64*, i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FindMiptex(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
