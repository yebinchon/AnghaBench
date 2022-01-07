; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_RB_IQMSurfaceAnimVao.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_model_iqm.c_RB_IQMSurfaceAnimVao.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, float** }
%struct.TYPE_16__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, float }
%struct.TYPE_12__ = type { %struct.TYPE_13__*, i32, i32, i32, i64 }
%struct.TYPE_13__ = type { i32, i32 }

@tess = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@qfalse = common dso_local global i32 0, align 4
@glState = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@IQM_MAX_JOINTS = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_IQMSurfaceAnimVao(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %3, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 5), align 4
  %14 = call i64 @ShaderRequiresCPUDeforms(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = call i32 @RB_IQMSurfaceAnim(i32* %20)
  br label %281

22:                                               ; preds = %1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %281

28:                                               ; preds = %22
  %29 = call i32 (...) @RB_EndSurface()
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 5), align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 4), align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 3), align 4
  %33 = call i32 @RB_BeginSurface(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @R_BindVao(i32 %36)
  %38 = load i32, i32* @qfalse, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 2), align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 1), align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tess, i32 0, i32 0), align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 0), align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 0), align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %279

50:                                               ; preds = %28
  %51 = load i32, i32* @IQM_MAX_JOINTS, align 4
  %52 = mul nsw i32 %51, 12
  %53 = zext i32 %52 to i64
  %54 = call i8* @llvm.stacksave()
  store i8* %54, i8** %4, align 8
  %55 = alloca float, i64 %53, align 16
  store i64 %53, i64* %5, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %50
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @backEnd, i32 0, i32 0), align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = srem i32 %64, %67
  br label %70

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %60
  %71 = phi i32 [ %68, %60 ], [ 0, %69 ]
  store i32 %71, i32* %6, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %70
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @backEnd, i32 0, i32 0), align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = srem i32 %80, %83
  br label %86

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %76
  %87 = phi i32 [ %84, %76 ], [ 0, %85 ]
  store i32 %87, i32* %7, align 4
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @backEnd, i32 0, i32 0), align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 2
  %91 = load float, float* %90, align 4
  store float %91, float* %8, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load float, float* %8, align 4
  %98 = call i32 @ComputePoseMats(%struct.TYPE_13__* %94, i32 %95, i32 %96, float %97, float* %55)
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %274, %86
  %100 = load i32, i32* %9, align 4
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %277

105:                                              ; preds = %99
  %106 = load i32, i32* %9, align 4
  %107 = mul nsw i32 %106, 12
  %108 = add nsw i32 %107, 0
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds float, float* %55, i64 %109
  %111 = load float, float* %110, align 4
  %112 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds float*, float** %112, i64 %114
  %116 = load float*, float** %115, align 8
  %117 = getelementptr inbounds float, float* %116, i64 0
  store float %111, float* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 %118, 12
  %120 = add nsw i32 %119, 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds float, float* %55, i64 %121
  %123 = load float, float* %122, align 4
  %124 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %125 = load i32, i32* %9, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float*, float** %124, i64 %126
  %128 = load float*, float** %127, align 8
  %129 = getelementptr inbounds float, float* %128, i64 1
  store float %123, float* %129, align 4
  %130 = load i32, i32* %9, align 4
  %131 = mul nsw i32 %130, 12
  %132 = add nsw i32 %131, 8
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds float, float* %55, i64 %133
  %135 = load float, float* %134, align 4
  %136 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds float*, float** %136, i64 %138
  %140 = load float*, float** %139, align 8
  %141 = getelementptr inbounds float, float* %140, i64 2
  store float %135, float* %141, align 4
  %142 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %143 = load i32, i32* %9, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float*, float** %142, i64 %144
  %146 = load float*, float** %145, align 8
  %147 = getelementptr inbounds float, float* %146, i64 3
  store float 0.000000e+00, float* %147, align 4
  %148 = load i32, i32* %9, align 4
  %149 = mul nsw i32 %148, 12
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds float, float* %55, i64 %151
  %153 = load float, float* %152, align 4
  %154 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds float*, float** %154, i64 %156
  %158 = load float*, float** %157, align 8
  %159 = getelementptr inbounds float, float* %158, i64 4
  store float %153, float* %159, align 4
  %160 = load i32, i32* %9, align 4
  %161 = mul nsw i32 %160, 12
  %162 = add nsw i32 %161, 5
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds float, float* %55, i64 %163
  %165 = load float, float* %164, align 4
  %166 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds float*, float** %166, i64 %168
  %170 = load float*, float** %169, align 8
  %171 = getelementptr inbounds float, float* %170, i64 5
  store float %165, float* %171, align 4
  %172 = load i32, i32* %9, align 4
  %173 = mul nsw i32 %172, 12
  %174 = add nsw i32 %173, 9
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds float, float* %55, i64 %175
  %177 = load float, float* %176, align 4
  %178 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds float*, float** %178, i64 %180
  %182 = load float*, float** %181, align 8
  %183 = getelementptr inbounds float, float* %182, i64 6
  store float %177, float* %183, align 4
  %184 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds float*, float** %184, i64 %186
  %188 = load float*, float** %187, align 8
  %189 = getelementptr inbounds float, float* %188, i64 7
  store float 0.000000e+00, float* %189, align 4
  %190 = load i32, i32* %9, align 4
  %191 = mul nsw i32 %190, 12
  %192 = add nsw i32 %191, 2
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds float, float* %55, i64 %193
  %195 = load float, float* %194, align 4
  %196 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float*, float** %196, i64 %198
  %200 = load float*, float** %199, align 8
  %201 = getelementptr inbounds float, float* %200, i64 8
  store float %195, float* %201, align 4
  %202 = load i32, i32* %9, align 4
  %203 = mul nsw i32 %202, 12
  %204 = add nsw i32 %203, 6
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds float, float* %55, i64 %205
  %207 = load float, float* %206, align 4
  %208 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds float*, float** %208, i64 %210
  %212 = load float*, float** %211, align 8
  %213 = getelementptr inbounds float, float* %212, i64 9
  store float %207, float* %213, align 4
  %214 = load i32, i32* %9, align 4
  %215 = mul nsw i32 %214, 12
  %216 = add nsw i32 %215, 10
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds float, float* %55, i64 %217
  %219 = load float, float* %218, align 4
  %220 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %221 = load i32, i32* %9, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds float*, float** %220, i64 %222
  %224 = load float*, float** %223, align 8
  %225 = getelementptr inbounds float, float* %224, i64 10
  store float %219, float* %225, align 4
  %226 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds float*, float** %226, i64 %228
  %230 = load float*, float** %229, align 8
  %231 = getelementptr inbounds float, float* %230, i64 11
  store float 0.000000e+00, float* %231, align 4
  %232 = load i32, i32* %9, align 4
  %233 = mul nsw i32 %232, 12
  %234 = add nsw i32 %233, 3
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds float, float* %55, i64 %235
  %237 = load float, float* %236, align 4
  %238 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds float*, float** %238, i64 %240
  %242 = load float*, float** %241, align 8
  %243 = getelementptr inbounds float, float* %242, i64 12
  store float %237, float* %243, align 4
  %244 = load i32, i32* %9, align 4
  %245 = mul nsw i32 %244, 12
  %246 = add nsw i32 %245, 7
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds float, float* %55, i64 %247
  %249 = load float, float* %248, align 4
  %250 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds float*, float** %250, i64 %252
  %254 = load float*, float** %253, align 8
  %255 = getelementptr inbounds float, float* %254, i64 13
  store float %249, float* %255, align 4
  %256 = load i32, i32* %9, align 4
  %257 = mul nsw i32 %256, 12
  %258 = add nsw i32 %257, 11
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds float, float* %55, i64 %259
  %261 = load float, float* %260, align 4
  %262 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds float*, float** %262, i64 %264
  %266 = load float*, float** %265, align 8
  %267 = getelementptr inbounds float, float* %266, i64 14
  store float %261, float* %267, align 4
  %268 = load float**, float*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 1), align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds float*, float** %268, i64 %270
  %272 = load float*, float** %271, align 8
  %273 = getelementptr inbounds float, float* %272, i64 15
  store float 1.000000e+00, float* %273, align 4
  br label %274

274:                                              ; preds = %105
  %275 = load i32, i32* %9, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %9, align 4
  br label %99

277:                                              ; preds = %99
  %278 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %278)
  br label %279

279:                                              ; preds = %277, %28
  %280 = call i32 (...) @RB_EndSurface()
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @glState, i32 0, i32 0), align 8
  br label %281

281:                                              ; preds = %279, %27, %16
  ret void
}

declare dso_local i64 @ShaderRequiresCPUDeforms(i32) #1

declare dso_local i32 @RB_IQMSurfaceAnim(i32*) #1

declare dso_local i32 @RB_EndSurface(...) #1

declare dso_local i32 @RB_BeginSurface(i32, i32, i32) #1

declare dso_local i32 @R_BindVao(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @ComputePoseMats(%struct.TYPE_13__*, i32, i32, float, float*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
