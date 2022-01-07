; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_SurfaceGrid.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_RB_SurfaceGrid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, float**, float**, float**, i32*, %struct.TYPE_10__*, i32**, i32**, i32**, i32**, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, float*, i32, float*, %struct.TYPE_7__*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }

@MAX_GRID_SIZE = common dso_local global i32 0, align 4
@tess = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@SHADER_MAX_VERTEXES = common dso_local global i32 0, align 4
@SHADER_MAX_INDEXES = common dso_local global i32 0, align 4
@ATTR_POSITION = common dso_local global i32 0, align 4
@ATTR_NORMAL = common dso_local global i32 0, align 4
@ATTR_TANGENT = common dso_local global i32 0, align 4
@ATTR_TEXCOORD = common dso_local global i32 0, align 4
@ATTR_LIGHTCOORD = common dso_local global i32 0, align 4
@ATTR_COLOR = common dso_local global i32 0, align 4
@ATTR_LIGHTDIRECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @RB_SurfaceGrid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RB_SurfaceGrid(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca float, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %34 = load i32, i32* @MAX_GRID_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %17, align 8
  %37 = alloca i32, i64 %35, align 16
  store i64 %35, i64* %18, align 8
  %38 = load i32, i32* @MAX_GRID_SIZE, align 4
  %39 = zext i32 %38 to i64
  %40 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %19, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 6
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 9
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @RB_SurfaceVaoCached(i32 %43, %struct.TYPE_7__* %46, i32 %49, i32 %52, i32 %55, i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %1
  store i32 1, i32* %26, align 4
  br label %480

62:                                               ; preds = %1
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 15), align 8
  %64 = call i32 @RB_CheckVao(i32 %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %24, align 4
  %68 = load i32, i32* %24, align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %70 = or i32 %69, %68
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 0), align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %25, align 4
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 1), align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 1), align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 8
  %83 = call float @LodErrorForVolume(i32 %79, i32 %82)
  store float %83, float* %20, align 4
  %84 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 0, i32* %84, align 16
  store i32 1, i32* %21, align 4
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %110, %62
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, 1
  %91 = icmp slt i32 %86, %90
  br i1 %91, label %92, label %113

92:                                               ; preds = %85
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load float*, float** %94, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds float, float* %95, i64 %97
  %99 = load float, float* %98, align 4
  %100 = load float, float* %20, align 4
  %101 = fcmp ole float %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %92
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %21, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %37, i64 %105
  store i32 %103, i32* %106, align 4
  %107 = load i32, i32* %21, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %21, align 4
  br label %109

109:                                              ; preds = %102, %92
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %3, align 4
  br label %85

113:                                              ; preds = %85
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* %21, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %37, i64 %119
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* %21, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %21, align 4
  %123 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 0, i32* %123, align 16
  store i32 1, i32* %22, align 4
  store i32 1, i32* %3, align 4
  br label %124

124:                                              ; preds = %149, %113
  %125 = load i32, i32* %3, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 1
  %130 = icmp slt i32 %125, %129
  br i1 %130, label %131, label %152

131:                                              ; preds = %124
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 5
  %134 = load float*, float** %133, align 8
  %135 = load i32, i32* %3, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float, float* %134, i64 %136
  %138 = load float, float* %137, align 4
  %139 = load float, float* %20, align 4
  %140 = fcmp ole float %138, %139
  br i1 %140, label %141, label %148

141:                                              ; preds = %131
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* %22, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %40, i64 %144
  store i32 %142, i32* %145, align 4
  %146 = load i32, i32* %22, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %22, align 4
  br label %148

148:                                              ; preds = %141, %131
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %124

152:                                              ; preds = %124
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = sub nsw i32 %155, 1
  %157 = load i32, i32* %22, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %40, i64 %158
  store i32 %156, i32* %159, align 4
  %160 = load i32, i32* %22, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %22, align 4
  store i32 0, i32* %16, align 4
  br label %162

162:                                              ; preds = %468, %152
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %22, align 4
  %165 = sub nsw i32 %164, 1
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %479

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %193, %167
  %169 = load i32, i32* @SHADER_MAX_VERTEXES, align 4
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 2), align 8
  %171 = sub nsw i32 %169, %170
  %172 = load i32, i32* %21, align 4
  %173 = sdiv i32 %171, %172
  store i32 %173, i32* %15, align 4
  %174 = load i32, i32* @SHADER_MAX_INDEXES, align 4
  %175 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 3), align 4
  %176 = sub nsw i32 %174, %175
  %177 = load i32, i32* %21, align 4
  %178 = mul nsw i32 %177, 6
  %179 = sdiv i32 %176, %178
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %15, align 4
  %181 = icmp slt i32 %180, 2
  br i1 %181, label %185, label %182

182:                                              ; preds = %168
  %183 = load i32, i32* %14, align 4
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %185, label %191

185:                                              ; preds = %182, %168
  %186 = call i32 (...) @RB_EndSurface()
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 14), align 4
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 13), align 8
  %190 = call i32 @RB_BeginSurface(%struct.TYPE_10__* %187, i32 %188, i32 %189)
  br label %192

191:                                              ; preds = %182
  br label %194

192:                                              ; preds = %185
  br label %193

193:                                              ; preds = %192
  br i1 true, label %168, label %194

194:                                              ; preds = %193, %191
  %195 = load i32, i32* %14, align 4
  store i32 %195, i32* %13, align 4
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* %14, align 4
  %198 = add nsw i32 %197, 1
  %199 = icmp slt i32 %196, %198
  br i1 %199, label %200, label %203

200:                                              ; preds = %194
  %201 = load i32, i32* %15, align 4
  %202 = sub nsw i32 %201, 1
  store i32 %202, i32* %13, align 4
  br label %203

203:                                              ; preds = %200, %194
  %204 = load i32, i32* %16, align 4
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %204, %205
  %207 = load i32, i32* %22, align 4
  %208 = icmp sgt i32 %206, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load i32, i32* %22, align 4
  %211 = load i32, i32* %16, align 4
  %212 = sub nsw i32 %210, %211
  store i32 %212, i32* %13, align 4
  br label %213

213:                                              ; preds = %209, %203
  %214 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 2), align 8
  store i32 %214, i32* %23, align 4
  %215 = load float**, float*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 4), align 8
  %216 = load i32, i32* %23, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float*, float** %215, i64 %217
  %219 = load float*, float** %218, align 8
  store float* %219, float** %5, align 8
  %220 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 12), align 8
  %221 = load i32, i32* %23, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  store i32* %224, i32** %8, align 8
  %225 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 11), align 8
  %226 = load i32, i32* %23, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  store i32* %229, i32** %9, align 8
  %230 = load float**, float*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 5), align 8
  %231 = load i32, i32* %23, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds float*, float** %230, i64 %232
  %234 = load float*, float** %233, align 8
  store float* %234, float** %6, align 8
  %235 = load float**, float*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 6), align 8
  %236 = load i32, i32* %23, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds float*, float** %235, i64 %237
  %239 = load float*, float** %238, align 8
  store float* %239, float** %7, align 8
  %240 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 10), align 8
  %241 = load i32, i32* %23, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32*, i32** %240, i64 %242
  %244 = load i32*, i32** %243, align 8
  store i32* %244, i32** %10, align 8
  %245 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 9), align 8
  %246 = load i32, i32* %23, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32*, i32** %245, i64 %247
  %249 = load i32*, i32** %248, align 8
  store i32* %249, i32** %11, align 8
  store i32 0, i32* %3, align 4
  br label %250

250:                                              ; preds = %390, %213
  %251 = load i32, i32* %3, align 4
  %252 = load i32, i32* %13, align 4
  %253 = icmp slt i32 %251, %252
  br i1 %253, label %254, label %393

254:                                              ; preds = %250
  store i32 0, i32* %4, align 4
  br label %255

255:                                              ; preds = %386, %254
  %256 = load i32, i32* %4, align 4
  %257 = load i32, i32* %21, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %389

259:                                              ; preds = %255
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 6
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %261, align 8
  %263 = load i32, i32* %16, align 4
  %264 = load i32, i32* %3, align 4
  %265 = add nsw i32 %263, %264
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %40, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = mul nsw i32 %268, %271
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i64 %273
  %275 = load i32, i32* %4, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %37, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i64 %279
  store %struct.TYPE_7__* %280, %struct.TYPE_7__** %12, align 8
  %281 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @ATTR_POSITION, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %295

287:                                              ; preds = %259
  %288 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = load float*, float** %5, align 8
  %292 = call i32 @VectorCopy(i32 %290, float* %291)
  %293 = load float*, float** %5, align 8
  %294 = getelementptr inbounds float, float* %293, i64 4
  store float* %294, float** %5, align 8
  br label %295

295:                                              ; preds = %287, %259
  %296 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @ATTR_NORMAL, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %295
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %8, align 8
  %307 = call i32 @VectorCopy4(i32 %305, i32* %306)
  %308 = load i32*, i32** %8, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 4
  store i32* %309, i32** %8, align 8
  br label %310

310:                                              ; preds = %302, %295
  %311 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @ATTR_TANGENT, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %310
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %9, align 8
  %322 = call i32 @VectorCopy4(i32 %320, i32* %321)
  %323 = load i32*, i32** %9, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 4
  store i32* %324, i32** %9, align 8
  br label %325

325:                                              ; preds = %317, %310
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @ATTR_TEXCOORD, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %340

332:                                              ; preds = %325
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = load float*, float** %6, align 8
  %337 = call i32 @VectorCopy2(i32 %335, float* %336)
  %338 = load float*, float** %6, align 8
  %339 = getelementptr inbounds float, float* %338, i64 2
  store float* %339, float** %6, align 8
  br label %340

340:                                              ; preds = %332, %325
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = load i32, i32* @ATTR_LIGHTCOORD, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %340
  %348 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 4
  %351 = load float*, float** %7, align 8
  %352 = call i32 @VectorCopy2(i32 %350, float* %351)
  %353 = load float*, float** %7, align 8
  %354 = getelementptr inbounds float, float* %353, i64 2
  store float* %354, float** %7, align 8
  br label %355

355:                                              ; preds = %347, %340
  %356 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %357 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* @ATTR_COLOR, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %370

362:                                              ; preds = %355
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load i32*, i32** %10, align 8
  %367 = call i32 @VectorCopy4(i32 %365, i32* %366)
  %368 = load i32*, i32** %10, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 4
  store i32* %369, i32** %10, align 8
  br label %370

370:                                              ; preds = %362, %355
  %371 = load %struct.TYPE_10__*, %struct.TYPE_10__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 8), align 8
  %372 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @ATTR_LIGHTDIRECTION, align 4
  %375 = and i32 %373, %374
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %385

377:                                              ; preds = %370
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = load i32*, i32** %11, align 8
  %382 = call i32 @VectorCopy4(i32 %380, i32* %381)
  %383 = load i32*, i32** %11, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 4
  store i32* %384, i32** %11, align 8
  br label %385

385:                                              ; preds = %377, %370
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %4, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %4, align 4
  br label %255

389:                                              ; preds = %255
  br label %390

390:                                              ; preds = %389
  %391 = load i32, i32* %3, align 4
  %392 = add nsw i32 %391, 1
  store i32 %392, i32* %3, align 4
  br label %250

393:                                              ; preds = %250
  %394 = load i32, i32* %13, align 4
  %395 = sub nsw i32 %394, 1
  store i32 %395, i32* %29, align 4
  %396 = load i32, i32* %21, align 4
  %397 = sub nsw i32 %396, 1
  store i32 %397, i32* %28, align 4
  %398 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 3), align 4
  store i32 %398, i32* %27, align 4
  store i32 0, i32* %3, align 4
  br label %399

399:                                              ; preds = %465, %393
  %400 = load i32, i32* %3, align 4
  %401 = load i32, i32* %29, align 4
  %402 = icmp slt i32 %400, %401
  br i1 %402, label %403, label %468

403:                                              ; preds = %399
  store i32 0, i32* %4, align 4
  br label %404

404:                                              ; preds = %461, %403
  %405 = load i32, i32* %4, align 4
  %406 = load i32, i32* %28, align 4
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %408, label %464

408:                                              ; preds = %404
  %409 = load i32, i32* %23, align 4
  %410 = load i32, i32* %3, align 4
  %411 = load i32, i32* %21, align 4
  %412 = mul nsw i32 %410, %411
  %413 = add nsw i32 %409, %412
  %414 = load i32, i32* %4, align 4
  %415 = add nsw i32 %413, %414
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %30, align 4
  %417 = load i32, i32* %30, align 4
  %418 = sub nsw i32 %417, 1
  store i32 %418, i32* %31, align 4
  %419 = load i32, i32* %31, align 4
  %420 = load i32, i32* %21, align 4
  %421 = add nsw i32 %419, %420
  store i32 %421, i32* %32, align 4
  %422 = load i32, i32* %32, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %33, align 4
  %424 = load i32, i32* %31, align 4
  %425 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %426 = load i32, i32* %27, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32, i32* %425, i64 %427
  store i32 %424, i32* %428, align 4
  %429 = load i32, i32* %32, align 4
  %430 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %431 = load i32, i32* %27, align 4
  %432 = add nsw i32 %431, 1
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %430, i64 %433
  store i32 %429, i32* %434, align 4
  %435 = load i32, i32* %30, align 4
  %436 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %437 = load i32, i32* %27, align 4
  %438 = add nsw i32 %437, 2
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %436, i64 %439
  store i32 %435, i32* %440, align 4
  %441 = load i32, i32* %30, align 4
  %442 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %443 = load i32, i32* %27, align 4
  %444 = add nsw i32 %443, 3
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32, i32* %442, i64 %445
  store i32 %441, i32* %446, align 4
  %447 = load i32, i32* %32, align 4
  %448 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %449 = load i32, i32* %27, align 4
  %450 = add nsw i32 %449, 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %448, i64 %451
  store i32 %447, i32* %452, align 4
  %453 = load i32, i32* %33, align 4
  %454 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 7), align 8
  %455 = load i32, i32* %27, align 4
  %456 = add nsw i32 %455, 5
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32, i32* %454, i64 %457
  store i32 %453, i32* %458, align 4
  %459 = load i32, i32* %27, align 4
  %460 = add nsw i32 %459, 6
  store i32 %460, i32* %27, align 4
  br label %461

461:                                              ; preds = %408
  %462 = load i32, i32* %4, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %4, align 4
  br label %404

464:                                              ; preds = %404
  br label %465

465:                                              ; preds = %464
  %466 = load i32, i32* %3, align 4
  %467 = add nsw i32 %466, 1
  store i32 %467, i32* %3, align 4
  br label %399

468:                                              ; preds = %399
  %469 = load i32, i32* %27, align 4
  store i32 %469, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 3), align 4
  %470 = load i32, i32* %13, align 4
  %471 = load i32, i32* %21, align 4
  %472 = mul nsw i32 %470, %471
  %473 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 2), align 8
  %474 = add nsw i32 %473, %472
  store i32 %474, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tess, i32 0, i32 2), align 8
  %475 = load i32, i32* %13, align 4
  %476 = sub nsw i32 %475, 1
  %477 = load i32, i32* %16, align 4
  %478 = add nsw i32 %477, %476
  store i32 %478, i32* %16, align 4
  br label %162

479:                                              ; preds = %162
  store i32 0, i32* %26, align 4
  br label %480

480:                                              ; preds = %479, %61
  %481 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %481)
  %482 = load i32, i32* %26, align 4
  switch i32 %482, label %484 [
    i32 0, label %483
    i32 1, label %483
  ]

483:                                              ; preds = %480, %480
  ret void

484:                                              ; preds = %480
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @RB_SurfaceVaoCached(i32, %struct.TYPE_7__*, i32, i32, i32, i32) #2

declare dso_local i32 @RB_CheckVao(i32) #2

declare dso_local float @LodErrorForVolume(i32, i32) #2

declare dso_local i32 @RB_EndSurface(...) #2

declare dso_local i32 @RB_BeginSurface(%struct.TYPE_10__*, i32, i32) #2

declare dso_local i32 @VectorCopy(i32, float*) #2

declare dso_local i32 @VectorCopy4(i32, i32*) #2

declare dso_local i32 @VectorCopy2(i32, float*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
