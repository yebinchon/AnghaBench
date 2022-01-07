; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_world.c_R_PshadowSurface.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_world.c_R_PshadowSurface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { float*, float, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_17__ = type { float, i32 }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, float**, float*, float, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { float, i32 }
%struct.TYPE_13__ = type { i32 }

@CULLINFO_PLANE = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@CULLINFO_BOX = common dso_local global i32 0, align 4
@CULLINFO_SPHERE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @R_PshadowSurface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @R_PshadowSurface(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @CULLINFO_PLANE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %70

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %66, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0, i32 0), align 8
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %69

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %66

27:                                               ; preds = %20
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0, i32 1), align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i64 %30
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %7, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load float*, float** %33, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call float @DotProduct(float* %34, i32 %39)
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load float, float* %44, align 4
  %46 = fsub float %40, %45
  store float %46, float* %5, align 4
  %47 = load float, float* %5, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 1
  %50 = load float, float* %49, align 8
  %51 = fneg float %50
  %52 = fcmp olt float %47, %51
  br i1 %52, label %59, label %53

53:                                               ; preds = %27
  %54 = load float, float* %5, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load float, float* %56, align 8
  %58 = fcmp ogt float %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53, %27
  %60 = load i32, i32* %6, align 4
  %61 = shl i32 1, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %4, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %59, %53
  br label %66

66:                                               ; preds = %65, %26
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %16

69:                                               ; preds = %16
  br label %70

70:                                               ; preds = %69, %2
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @CULLINFO_BOX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %236

78:                                               ; preds = %70
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %232, %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0, i32 0), align 8
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %235

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %6, align 4
  %86 = shl i32 1, %85
  %87 = and i32 %84, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  br label %232

90:                                               ; preds = %83
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0, i32 1), align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i64 %93
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %7, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load float*, float** %96, align 8
  %98 = getelementptr inbounds float, float* %97, i64 0
  %99 = load float, float* %98, align 4
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load float, float* %101, align 8
  %103 = fsub float %99, %102
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load float**, float*** %106, align 8
  %108 = getelementptr inbounds float*, float** %107, i64 1
  %109 = load float*, float** %108, align 8
  %110 = getelementptr inbounds float, float* %109, i64 0
  %111 = load float, float* %110, align 4
  %112 = fcmp ogt float %103, %111
  br i1 %112, label %225, label %113

113:                                              ; preds = %90
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load float*, float** %115, align 8
  %117 = getelementptr inbounds float, float* %116, i64 0
  %118 = load float, float* %117, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load float, float* %120, align 8
  %122 = fadd float %118, %121
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load float**, float*** %125, align 8
  %127 = getelementptr inbounds float*, float** %126, i64 0
  %128 = load float*, float** %127, align 8
  %129 = getelementptr inbounds float, float* %128, i64 0
  %130 = load float, float* %129, align 4
  %131 = fcmp olt float %122, %130
  br i1 %131, label %225, label %132

132:                                              ; preds = %113
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load float*, float** %134, align 8
  %136 = getelementptr inbounds float, float* %135, i64 1
  %137 = load float, float* %136, align 4
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load float, float* %139, align 8
  %141 = fsub float %137, %140
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load float**, float*** %144, align 8
  %146 = getelementptr inbounds float*, float** %145, i64 1
  %147 = load float*, float** %146, align 8
  %148 = getelementptr inbounds float, float* %147, i64 1
  %149 = load float, float* %148, align 4
  %150 = fcmp ogt float %141, %149
  br i1 %150, label %225, label %151

151:                                              ; preds = %132
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = load float*, float** %153, align 8
  %155 = getelementptr inbounds float, float* %154, i64 1
  %156 = load float, float* %155, align 4
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 1
  %159 = load float, float* %158, align 8
  %160 = fadd float %156, %159
  %161 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 1
  %164 = load float**, float*** %163, align 8
  %165 = getelementptr inbounds float*, float** %164, i64 0
  %166 = load float*, float** %165, align 8
  %167 = getelementptr inbounds float, float* %166, i64 1
  %168 = load float, float* %167, align 4
  %169 = fcmp olt float %160, %168
  br i1 %169, label %225, label %170

170:                                              ; preds = %151
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 0
  %173 = load float*, float** %172, align 8
  %174 = getelementptr inbounds float, float* %173, i64 2
  %175 = load float, float* %174, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = load float, float* %177, align 8
  %179 = fsub float %175, %178
  %180 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load float**, float*** %182, align 8
  %184 = getelementptr inbounds float*, float** %183, i64 1
  %185 = load float*, float** %184, align 8
  %186 = getelementptr inbounds float, float* %185, i64 2
  %187 = load float, float* %186, align 4
  %188 = fcmp ogt float %179, %187
  br i1 %188, label %225, label %189

189:                                              ; preds = %170
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load float*, float** %191, align 8
  %193 = getelementptr inbounds float, float* %192, i64 2
  %194 = load float, float* %193, align 4
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 1
  %197 = load float, float* %196, align 8
  %198 = fadd float %194, %197
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  %202 = load float**, float*** %201, align 8
  %203 = getelementptr inbounds float*, float** %202, i64 0
  %204 = load float*, float** %203, align 8
  %205 = getelementptr inbounds float, float* %204, i64 2
  %206 = load float, float* %205, align 4
  %207 = fcmp olt float %198, %206
  br i1 %207, label %225, label %208

208:                                              ; preds = %189
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 1
  %212 = load float**, float*** %211, align 8
  %213 = getelementptr inbounds float*, float** %212, i64 0
  %214 = load float*, float** %213, align 8
  %215 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 1
  %218 = load float**, float*** %217, align 8
  %219 = getelementptr inbounds float*, float** %218, i64 1
  %220 = load float*, float** %219, align 8
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 2
  %223 = call i32 @BoxOnPlaneSide(float* %214, float* %220, %struct.TYPE_17__* %222)
  %224 = icmp eq i32 %223, 2
  br i1 %224, label %225, label %231

225:                                              ; preds = %208, %189, %170, %151, %132, %113, %90
  %226 = load i32, i32* %6, align 4
  %227 = shl i32 1, %226
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %4, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %4, align 4
  br label %231

231:                                              ; preds = %225, %208
  br label %232

232:                                              ; preds = %231, %89
  %233 = load i32, i32* %6, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %6, align 4
  br label %79

235:                                              ; preds = %79
  br label %236

236:                                              ; preds = %235, %70
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @CULLINFO_SPHERE, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %309

244:                                              ; preds = %236
  store i32 0, i32* %6, align 4
  br label %245

245:                                              ; preds = %305, %244
  %246 = load i32, i32* %6, align 4
  %247 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0, i32 0), align 8
  %248 = icmp slt i32 %246, %247
  br i1 %248, label %249, label %308

249:                                              ; preds = %245
  %250 = load i32, i32* %4, align 4
  %251 = load i32, i32* %6, align 4
  %252 = shl i32 1, %251
  %253 = and i32 %250, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %256, label %255

255:                                              ; preds = %249
  br label %305

256:                                              ; preds = %249
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tr, i32 0, i32 0, i32 1), align 8
  %258 = load i32, i32* %6, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i64 %259
  store %struct.TYPE_14__* %260, %struct.TYPE_14__** %7, align 8
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 4
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 2
  %270 = load float*, float** %269, align 8
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 3
  %274 = load float, float* %273, align 8
  %275 = call i32 @SpheresIntersect(i32 %263, i32 %266, float* %270, float %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %298

277:                                              ; preds = %256
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 2
  %281 = load float*, float** %280, align 8
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call float @DotProduct(float* %281, i32 %285)
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 0
  %290 = load float, float* %289, align 4
  %291 = fsub float %286, %290
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %293, i32 0, i32 3
  %295 = load float, float* %294, align 8
  %296 = fneg float %295
  %297 = fcmp olt float %291, %296
  br i1 %297, label %298, label %304

298:                                              ; preds = %277, %256
  %299 = load i32, i32* %6, align 4
  %300 = shl i32 1, %299
  %301 = xor i32 %300, -1
  %302 = load i32, i32* %4, align 4
  %303 = and i32 %302, %301
  store i32 %303, i32* %4, align 4
  br label %304

304:                                              ; preds = %298, %277
  br label %305

305:                                              ; preds = %304, %255
  %306 = load i32, i32* %6, align 4
  %307 = add nsw i32 %306, 1
  store i32 %307, i32* %6, align 4
  br label %245

308:                                              ; preds = %245
  br label %309

309:                                              ; preds = %308, %236
  %310 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %311 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %310, i32 0, i32 0
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %312, align 4
  switch i32 %313, label %321 [
    i32 130, label %314
    i32 129, label %314
    i32 128, label %314
  ]

314:                                              ; preds = %309, %309, %309
  %315 = load i32, i32* %4, align 4
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = load i32*, i32** %317, align 8
  %319 = bitcast i32* %318 to %struct.TYPE_13__*
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 0
  store i32 %315, i32* %320, align 4
  br label %322

321:                                              ; preds = %309
  store i32 0, i32* %4, align 4
  br label %322

322:                                              ; preds = %321, %314
  %323 = load i32, i32* %4, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %322
  br label %326

326:                                              ; preds = %325, %322
  %327 = load i32, i32* %4, align 4
  ret i32 %327
}

declare dso_local float @DotProduct(float*, i32) #1

declare dso_local i32 @BoxOnPlaneSide(float*, float*, %struct.TYPE_17__*) #1

declare dso_local i32 @SpheresIntersect(i32, i32, float*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
