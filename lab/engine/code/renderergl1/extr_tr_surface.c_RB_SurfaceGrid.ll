; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_surface.c_RB_SurfaceGrid.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_surface.c_RB_SurfaceGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, float**, float**, float***, i32*, i32*, %struct.TYPE_9__*, i32*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, float*, i32, float*, %struct.TYPE_7__*, i32, i32 }
%struct.TYPE_7__ = type { float*, float*, float*, float*, i64 }

@MAX_GRID_SIZE = common dso_local global i32 0, align 4
@tess = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@SHADER_MAX_VERTEXES = common dso_local global i32 0, align 4
@SHADER_MAX_INDEXES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @RB_SurfaceGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RB_SurfaceGrid(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %31 = load i32, i32* @MAX_GRID_SIZE, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %14, align 8
  %34 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %15, align 8
  %35 = load i32, i32* @MAX_GRID_SIZE, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %16, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %21, align 4
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %43 = or i32 %42, %41
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call float @LodErrorForVolume(i32 %46, i32 %49)
  store float %50, float* %17, align 4
  %51 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 0, i32* %51, align 16
  store i32 1, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %77, %1
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %56, 1
  %58 = icmp slt i32 %53, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %52
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load float*, float** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %62, i64 %64
  %66 = load float, float* %65, align 4
  %67 = load float, float* %17, align 4
  %68 = fcmp ole float %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* %18, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %34, i64 %72
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* %18, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %18, align 4
  br label %76

76:                                               ; preds = %69, %59
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %3, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %3, align 4
  br label %52

80:                                               ; preds = %52
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %83, 1
  %85 = load i32, i32* %18, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %34, i64 %86
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %18, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %18, align 4
  %90 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 0, i32* %90, align 16
  store i32 1, i32* %19, align 4
  store i32 1, i32* %3, align 4
  br label %91

91:                                               ; preds = %116, %80
  %92 = load i32, i32* %3, align 4
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = icmp slt i32 %92, %96
  br i1 %97, label %98, label %119

98:                                               ; preds = %91
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 4
  %101 = load float*, float** %100, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  %105 = load float, float* %104, align 4
  %106 = load float, float* %17, align 4
  %107 = fcmp ole float %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %98
  %109 = load i32, i32* %3, align 4
  %110 = load i32, i32* %19, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %37, i64 %111
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %19, align 4
  br label %115

115:                                              ; preds = %108, %98
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %3, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %3, align 4
  br label %91

119:                                              ; preds = %91
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %122, 1
  %124 = load i32, i32* %19, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %37, i64 %125
  store i32 %123, i32* %126, align 4
  %127 = load i32, i32* %19, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %19, align 4
  store i32 0, i32* %13, align 4
  br label %129

129:                                              ; preds = %415, %119
  %130 = load i32, i32* %13, align 4
  %131 = load i32, i32* %19, align 4
  %132 = sub nsw i32 %131, 1
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %426

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %159, %134
  %136 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 4
  %138 = sub nsw i32 %136, %137
  %139 = load i32, i32* %18, align 4
  %140 = sdiv i32 %138, %139
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %143 = sub nsw i32 %141, %142
  %144 = load i32, i32* %18, align 4
  %145 = mul nsw i32 %144, 6
  %146 = sdiv i32 %143, %145
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %12, align 4
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %152, label %149

149:                                              ; preds = %135
  %150 = load i32, i32* %11, align 4
  %151 = icmp slt i32 %150, 1
  br i1 %151, label %152, label %157

152:                                              ; preds = %149, %135
  %153 = call i32 (...) @RB_EndSurface()
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 8), align 8
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 10), align 8
  %156 = call i32 @RB_BeginSurface(%struct.TYPE_9__* %154, i32 %155)
  br label %158

157:                                              ; preds = %149
  br label %160

158:                                              ; preds = %152
  br label %159

159:                                              ; preds = %158
  br i1 true, label %135, label %160

160:                                              ; preds = %159, %157
  %161 = load i32, i32* %11, align 4
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %11, align 4
  %164 = add nsw i32 %163, 1
  %165 = icmp slt i32 %162, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %12, align 4
  %168 = sub nsw i32 %167, 1
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %166, %160
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %170, %171
  %173 = load i32, i32* %19, align 4
  %174 = icmp sgt i32 %172, %173
  br i1 %174, label %175, label %179

175:                                              ; preds = %169
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* %13, align 4
  %178 = sub nsw i32 %176, %177
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %175, %169
  %180 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 4
  store i32 %180, i32* %20, align 4
  %181 = load float**, float*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %182 = load i32, i32* %20, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds float*, float** %181, i64 %183
  %185 = load float*, float** %184, align 8
  store float* %185, float** %5, align 8
  %186 = load float**, float*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %187 = load i32, i32* %20, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float*, float** %186, i64 %188
  %190 = load float*, float** %189, align 8
  store float* %190, float** %7, align 8
  %191 = load float***, float**** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 5), align 8
  %192 = load i32, i32* %20, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float**, float*** %191, i64 %193
  %195 = load float**, float*** %194, align 8
  %196 = getelementptr inbounds float*, float** %195, i64 0
  %197 = load float*, float** %196, align 8
  store float* %197, float** %6, align 8
  %198 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 9), align 8
  %199 = load i32, i32* %20, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %198, i64 %200
  %202 = bitcast i32* %201 to i8*
  store i8* %202, i8** %8, align 8
  %203 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 6), align 8
  %204 = load i32, i32* %20, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32* %206, i32** %22, align 8
  %207 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 8), align 8
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  store i64 %209, i64* %23, align 8
  store i32 0, i32* %3, align 4
  br label %210

210:                                              ; preds = %337, %179
  %211 = load i32, i32* %3, align 4
  %212 = load i32, i32* %10, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %340

214:                                              ; preds = %210
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %333, %214
  %216 = load i32, i32* %4, align 4
  %217 = load i32, i32* %18, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %336

219:                                              ; preds = %215
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 5
  %222 = load %struct.TYPE_7__*, %struct.TYPE_7__** %221, align 8
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* %3, align 4
  %225 = add nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %37, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = mul nsw i32 %228, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i64 %233
  %235 = load i32, i32* %4, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %34, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 %239
  store %struct.TYPE_7__* %240, %struct.TYPE_7__** %9, align 8
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 0
  %243 = load float*, float** %242, align 8
  %244 = getelementptr inbounds float, float* %243, i64 0
  %245 = load float, float* %244, align 4
  %246 = load float*, float** %5, align 8
  %247 = getelementptr inbounds float, float* %246, i64 0
  store float %245, float* %247, align 4
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load float*, float** %249, align 8
  %251 = getelementptr inbounds float, float* %250, i64 1
  %252 = load float, float* %251, align 4
  %253 = load float*, float** %5, align 8
  %254 = getelementptr inbounds float, float* %253, i64 1
  store float %252, float* %254, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %255, i32 0, i32 0
  %257 = load float*, float** %256, align 8
  %258 = getelementptr inbounds float, float* %257, i64 2
  %259 = load float, float* %258, align 4
  %260 = load float*, float** %5, align 8
  %261 = getelementptr inbounds float, float* %260, i64 2
  store float %259, float* %261, align 4
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i32 0, i32 1
  %264 = load float*, float** %263, align 8
  %265 = getelementptr inbounds float, float* %264, i64 0
  %266 = load float, float* %265, align 4
  %267 = load float*, float** %6, align 8
  %268 = getelementptr inbounds float, float* %267, i64 0
  store float %266, float* %268, align 4
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 1
  %271 = load float*, float** %270, align 8
  %272 = getelementptr inbounds float, float* %271, i64 1
  %273 = load float, float* %272, align 4
  %274 = load float*, float** %6, align 8
  %275 = getelementptr inbounds float, float* %274, i64 1
  store float %273, float* %275, align 4
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 2
  %278 = load float*, float** %277, align 8
  %279 = getelementptr inbounds float, float* %278, i64 0
  %280 = load float, float* %279, align 4
  %281 = load float*, float** %6, align 8
  %282 = getelementptr inbounds float, float* %281, i64 2
  store float %280, float* %282, align 4
  %283 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 2
  %285 = load float*, float** %284, align 8
  %286 = getelementptr inbounds float, float* %285, i64 1
  %287 = load float, float* %286, align 4
  %288 = load float*, float** %6, align 8
  %289 = getelementptr inbounds float, float* %288, i64 3
  store float %287, float* %289, align 4
  %290 = load i64, i64* %23, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %314

292:                                              ; preds = %219
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 3
  %295 = load float*, float** %294, align 8
  %296 = getelementptr inbounds float, float* %295, i64 0
  %297 = load float, float* %296, align 4
  %298 = load float*, float** %7, align 8
  %299 = getelementptr inbounds float, float* %298, i64 0
  store float %297, float* %299, align 4
  %300 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 3
  %302 = load float*, float** %301, align 8
  %303 = getelementptr inbounds float, float* %302, i64 1
  %304 = load float, float* %303, align 4
  %305 = load float*, float** %7, align 8
  %306 = getelementptr inbounds float, float* %305, i64 1
  store float %304, float* %306, align 4
  %307 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %307, i32 0, i32 3
  %309 = load float*, float** %308, align 8
  %310 = getelementptr inbounds float, float* %309, i64 2
  %311 = load float, float* %310, align 4
  %312 = load float*, float** %7, align 8
  %313 = getelementptr inbounds float, float* %312, i64 2
  store float %311, float* %313, align 4
  br label %314

314:                                              ; preds = %292, %219
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 4
  %317 = load i64, i64* %316, align 8
  %318 = inttoptr i64 %317 to i32*
  %319 = load i32, i32* %318, align 4
  %320 = load i8*, i8** %8, align 8
  %321 = bitcast i8* %320 to i32*
  store i32 %319, i32* %321, align 4
  %322 = load i32, i32* %21, align 4
  %323 = load i32*, i32** %22, align 8
  %324 = getelementptr inbounds i32, i32* %323, i32 1
  store i32* %324, i32** %22, align 8
  store i32 %322, i32* %323, align 4
  %325 = load float*, float** %5, align 8
  %326 = getelementptr inbounds float, float* %325, i64 4
  store float* %326, float** %5, align 8
  %327 = load float*, float** %7, align 8
  %328 = getelementptr inbounds float, float* %327, i64 4
  store float* %328, float** %7, align 8
  %329 = load float*, float** %6, align 8
  %330 = getelementptr inbounds float, float* %329, i64 4
  store float* %330, float** %6, align 8
  %331 = load i8*, i8** %8, align 8
  %332 = getelementptr inbounds i8, i8* %331, i64 4
  store i8* %332, i8** %8, align 8
  br label %333

333:                                              ; preds = %314
  %334 = load i32, i32* %4, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %4, align 4
  br label %215

336:                                              ; preds = %215
  br label %337

337:                                              ; preds = %336
  %338 = load i32, i32* %3, align 4
  %339 = add nsw i32 %338, 1
  store i32 %339, i32* %3, align 4
  br label %210

340:                                              ; preds = %210
  %341 = load i32, i32* %10, align 4
  %342 = sub nsw i32 %341, 1
  store i32 %342, i32* %26, align 4
  %343 = load i32, i32* %18, align 4
  %344 = sub nsw i32 %343, 1
  store i32 %344, i32* %25, align 4
  %345 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  store i32 %345, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %346

346:                                              ; preds = %412, %340
  %347 = load i32, i32* %3, align 4
  %348 = load i32, i32* %26, align 4
  %349 = icmp slt i32 %347, %348
  br i1 %349, label %350, label %415

350:                                              ; preds = %346
  store i32 0, i32* %4, align 4
  br label %351

351:                                              ; preds = %408, %350
  %352 = load i32, i32* %4, align 4
  %353 = load i32, i32* %25, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %411

355:                                              ; preds = %351
  %356 = load i32, i32* %20, align 4
  %357 = load i32, i32* %3, align 4
  %358 = load i32, i32* %18, align 4
  %359 = mul nsw i32 %357, %358
  %360 = add nsw i32 %356, %359
  %361 = load i32, i32* %4, align 4
  %362 = add nsw i32 %360, %361
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %27, align 4
  %364 = load i32, i32* %27, align 4
  %365 = sub nsw i32 %364, 1
  store i32 %365, i32* %28, align 4
  %366 = load i32, i32* %28, align 4
  %367 = load i32, i32* %18, align 4
  %368 = add nsw i32 %366, %367
  store i32 %368, i32* %29, align 4
  %369 = load i32, i32* %29, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %30, align 4
  %371 = load i32, i32* %28, align 4
  %372 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 7), align 8
  %373 = load i32, i32* %24, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  store i32 %371, i32* %375, align 4
  %376 = load i32, i32* %29, align 4
  %377 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 7), align 8
  %378 = load i32, i32* %24, align 4
  %379 = add nsw i32 %378, 1
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  store i32 %376, i32* %381, align 4
  %382 = load i32, i32* %27, align 4
  %383 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 7), align 8
  %384 = load i32, i32* %24, align 4
  %385 = add nsw i32 %384, 2
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  store i32 %382, i32* %387, align 4
  %388 = load i32, i32* %27, align 4
  %389 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 7), align 8
  %390 = load i32, i32* %24, align 4
  %391 = add nsw i32 %390, 3
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  store i32 %388, i32* %393, align 4
  %394 = load i32, i32* %29, align 4
  %395 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 7), align 8
  %396 = load i32, i32* %24, align 4
  %397 = add nsw i32 %396, 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds i32, i32* %395, i64 %398
  store i32 %394, i32* %399, align 4
  %400 = load i32, i32* %30, align 4
  %401 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 7), align 8
  %402 = load i32, i32* %24, align 4
  %403 = add nsw i32 %402, 5
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %401, i64 %404
  store i32 %400, i32* %405, align 4
  %406 = load i32, i32* %24, align 4
  %407 = add nsw i32 %406, 6
  store i32 %407, i32* %24, align 4
  br label %408

408:                                              ; preds = %355
  %409 = load i32, i32* %4, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %4, align 4
  br label %351

411:                                              ; preds = %351
  br label %412

412:                                              ; preds = %411
  %413 = load i32, i32* %3, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %3, align 4
  br label %346

415:                                              ; preds = %346
  %416 = load i32, i32* %24, align 4
  store i32 %416, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %417 = load i32, i32* %10, align 4
  %418 = load i32, i32* %18, align 4
  %419 = mul nsw i32 %417, %418
  %420 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 4
  %421 = add nsw i32 %420, %419
  store i32 %421, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 4
  %422 = load i32, i32* %10, align 4
  %423 = sub nsw i32 %422, 1
  %424 = load i32, i32* %13, align 4
  %425 = add nsw i32 %424, %423
  store i32 %425, i32* %13, align 4
  br label %129

426:                                              ; preds = %129
  %427 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %427)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local float @LodErrorForVolume(i32, i32) #2

declare dso_local i32 @RB_EndSurface(...) #2

declare dso_local i32 @RB_BeginSurface(%struct.TYPE_9__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
