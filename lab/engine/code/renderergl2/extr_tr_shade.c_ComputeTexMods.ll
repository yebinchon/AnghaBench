; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_ComputeTexMods.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_ComputeTexMods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { i32 (i32, i8*, i32, i32)* }
%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }

@TR_MAX_TEXMODS = common dso_local global i32 0, align 4
@backEnd = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ERROR: unknown texmod '%d' in shader '%s'\00", align 1
@tess = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i32, float*, float*)* @ComputeTexMods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeTexMods(%struct.TYPE_15__* %0, i32 %1, float* %2, float* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [6 x float], align 16
  %11 = alloca [6 x float], align 16
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store float* %3, float** %8, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i64 %17
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %12, align 8
  %19 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 0
  store float 1.000000e+00, float* %19, align 16
  %20 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 2
  store float 0.000000e+00, float* %20, align 8
  %21 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 4
  store float 0.000000e+00, float* %21, align 16
  %22 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 1
  store float 0.000000e+00, float* %22, align 4
  %23 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 3
  store float 1.000000e+00, float* %23, align 4
  %24 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 5
  store float 0.000000e+00, float* %24, align 4
  %25 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  store float 1.000000e+00, float* %25, align 16
  %26 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 2
  store float 0.000000e+00, float* %26, align 8
  %27 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 4
  store float 0.000000e+00, float* %27, align 16
  %28 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 1
  store float 0.000000e+00, float* %28, align 4
  %29 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 3
  store float 1.000000e+00, float* %29, align 4
  %30 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 5
  store float 0.000000e+00, float* %30, align 4
  %31 = load float*, float** %7, align 8
  %32 = getelementptr inbounds float, float* %31, i64 0
  store float 1.000000e+00, float* %32, align 4
  %33 = load float*, float** %7, align 8
  %34 = getelementptr inbounds float, float* %33, i64 2
  store float 0.000000e+00, float* %34, align 4
  %35 = load float*, float** %7, align 8
  %36 = getelementptr inbounds float, float* %35, i64 1
  store float 0.000000e+00, float* %36, align 4
  %37 = load float*, float** %7, align 8
  %38 = getelementptr inbounds float, float* %37, i64 3
  store float 1.000000e+00, float* %38, align 4
  %39 = load float*, float** %8, align 8
  %40 = getelementptr inbounds float, float* %39, i64 0
  store float 0.000000e+00, float* %40, align 4
  %41 = load float*, float** %8, align 8
  %42 = getelementptr inbounds float, float* %41, i64 1
  store float 0.000000e+00, float* %42, align 4
  %43 = load float*, float** %8, align 8
  %44 = getelementptr inbounds float, float* %43, i64 2
  store float 0.000000e+00, float* %44, align 4
  %45 = load float*, float** %8, align 8
  %46 = getelementptr inbounds float, float* %45, i64 3
  store float 0.000000e+00, float* %46, align 4
  store i32 0, i32* %9, align 4
  br label %47

47:                                               ; preds = %272, %4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %275

53:                                               ; preds = %47
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  switch i32 %61, label %136 [
    i32 134, label %62
    i32 128, label %64
    i32 135, label %77
    i32 131, label %84
    i32 132, label %95
    i32 130, label %106
    i32 129, label %116
    i32 133, label %125
  ]

62:                                               ; preds = %53
  %63 = load i32, i32* @TR_MAX_TEXMODS, align 4
  store i32 %63, i32* %9, align 4
  br label %151

64:                                               ; preds = %53
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 2
  %72 = load float*, float** %8, align 8
  %73 = getelementptr inbounds float, float* %72, i64 2
  %74 = load float*, float** %8, align 8
  %75 = getelementptr inbounds float, float* %74, i64 3
  %76 = call i32 @RB_CalcTurbulentFactors(i32* %71, float* %73, float* %75)
  br label %151

77:                                               ; preds = %53
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @backEnd, i32 0, i32 0), align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 0
  %83 = call i32 @RB_CalcScrollTexMatrix(i32 %81, float* %82)
  br label %151

84:                                               ; preds = %53
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 0
  %94 = call i32 @RB_CalcScrollTexMatrix(i32 %92, float* %93)
  br label %151

95:                                               ; preds = %53
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 0
  %105 = call i32 @RB_CalcScaleTexMatrix(i32 %103, float* %104)
  br label %151

106:                                              ; preds = %53
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = load i32, i32* %9, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 2
  %114 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 0
  %115 = call i32 @RB_CalcStretchTexMatrix(i32* %113, float* %114)
  br label %151

116:                                              ; preds = %53
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %119, i64 %121
  %123 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 0
  %124 = call i32 @RB_CalcTransformTexMatrix(%struct.TYPE_19__* %122, float* %123)
  br label %151

125:                                              ; preds = %53
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_19__*, %struct.TYPE_19__** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 0
  %135 = call i32 @RB_CalcRotateTexMatrix(i32 %133, float* %134)
  br label %151

136:                                              ; preds = %53
  %137 = load i32 (i32, i8*, i32, i32)*, i32 (i32, i8*, i32, i32)** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @ri, i32 0, i32 0), align 8
  %138 = load i32, i32* @ERR_DROP, align 4
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tess, i32 0, i32 0), align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 %137(i32 %138, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %136, %125, %116, %106, %95, %84, %77, %64, %62
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  switch i32 %159, label %161 [
    i32 134, label %160
    i32 128, label %160
    i32 135, label %162
    i32 131, label %162
    i32 132, label %162
    i32 130, label %162
    i32 129, label %162
    i32 133, label %162
  ]

160:                                              ; preds = %151, %151
  br label %161

161:                                              ; preds = %151, %160
  br label %271

162:                                              ; preds = %151, %151, %151, %151, %151, %151
  %163 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 0
  %164 = load float, float* %163, align 16
  %165 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  %166 = load float, float* %165, align 16
  %167 = fmul float %164, %166
  %168 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 2
  %169 = load float, float* %168, align 8
  %170 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 1
  %171 = load float, float* %170, align 4
  %172 = fmul float %169, %171
  %173 = fadd float %167, %172
  %174 = load float*, float** %7, align 8
  %175 = getelementptr inbounds float, float* %174, i64 0
  store float %173, float* %175, align 4
  %176 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 1
  %177 = load float, float* %176, align 4
  %178 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  %179 = load float, float* %178, align 16
  %180 = fmul float %177, %179
  %181 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 3
  %182 = load float, float* %181, align 4
  %183 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 1
  %184 = load float, float* %183, align 4
  %185 = fmul float %182, %184
  %186 = fadd float %180, %185
  %187 = load float*, float** %7, align 8
  %188 = getelementptr inbounds float, float* %187, i64 1
  store float %186, float* %188, align 4
  %189 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 0
  %190 = load float, float* %189, align 16
  %191 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 2
  %192 = load float, float* %191, align 8
  %193 = fmul float %190, %192
  %194 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 2
  %195 = load float, float* %194, align 8
  %196 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 3
  %197 = load float, float* %196, align 4
  %198 = fmul float %195, %197
  %199 = fadd float %193, %198
  %200 = load float*, float** %7, align 8
  %201 = getelementptr inbounds float, float* %200, i64 2
  store float %199, float* %201, align 4
  %202 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 1
  %203 = load float, float* %202, align 4
  %204 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 2
  %205 = load float, float* %204, align 8
  %206 = fmul float %203, %205
  %207 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 3
  %208 = load float, float* %207, align 4
  %209 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 3
  %210 = load float, float* %209, align 4
  %211 = fmul float %208, %210
  %212 = fadd float %206, %211
  %213 = load float*, float** %7, align 8
  %214 = getelementptr inbounds float, float* %213, i64 3
  store float %212, float* %214, align 4
  %215 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 0
  %216 = load float, float* %215, align 16
  %217 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 4
  %218 = load float, float* %217, align 16
  %219 = fmul float %216, %218
  %220 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 2
  %221 = load float, float* %220, align 8
  %222 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 5
  %223 = load float, float* %222, align 4
  %224 = fmul float %221, %223
  %225 = fadd float %219, %224
  %226 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 4
  %227 = load float, float* %226, align 16
  %228 = fadd float %225, %227
  %229 = load float*, float** %8, align 8
  %230 = getelementptr inbounds float, float* %229, i64 0
  store float %228, float* %230, align 4
  %231 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 1
  %232 = load float, float* %231, align 4
  %233 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 4
  %234 = load float, float* %233, align 16
  %235 = fmul float %232, %234
  %236 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 3
  %237 = load float, float* %236, align 4
  %238 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 5
  %239 = load float, float* %238, align 4
  %240 = fmul float %237, %239
  %241 = fadd float %235, %240
  %242 = getelementptr inbounds [6 x float], [6 x float]* %10, i64 0, i64 5
  %243 = load float, float* %242, align 4
  %244 = fadd float %241, %243
  %245 = load float*, float** %8, align 8
  %246 = getelementptr inbounds float, float* %245, i64 1
  store float %244, float* %246, align 4
  %247 = load float*, float** %7, align 8
  %248 = getelementptr inbounds float, float* %247, i64 0
  %249 = load float, float* %248, align 4
  %250 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 0
  store float %249, float* %250, align 16
  %251 = load float*, float** %7, align 8
  %252 = getelementptr inbounds float, float* %251, i64 1
  %253 = load float, float* %252, align 4
  %254 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 1
  store float %253, float* %254, align 4
  %255 = load float*, float** %7, align 8
  %256 = getelementptr inbounds float, float* %255, i64 2
  %257 = load float, float* %256, align 4
  %258 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 2
  store float %257, float* %258, align 8
  %259 = load float*, float** %7, align 8
  %260 = getelementptr inbounds float, float* %259, i64 3
  %261 = load float, float* %260, align 4
  %262 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 3
  store float %261, float* %262, align 4
  %263 = load float*, float** %8, align 8
  %264 = getelementptr inbounds float, float* %263, i64 0
  %265 = load float, float* %264, align 4
  %266 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 4
  store float %265, float* %266, align 16
  %267 = load float*, float** %8, align 8
  %268 = getelementptr inbounds float, float* %267, i64 1
  %269 = load float, float* %268, align 4
  %270 = getelementptr inbounds [6 x float], [6 x float]* %11, i64 0, i64 5
  store float %269, float* %270, align 4
  br label %271

271:                                              ; preds = %162, %161
  br label %272

272:                                              ; preds = %271
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %9, align 4
  br label %47

275:                                              ; preds = %47
  ret void
}

declare dso_local i32 @RB_CalcTurbulentFactors(i32*, float*, float*) #1

declare dso_local i32 @RB_CalcScrollTexMatrix(i32, float*) #1

declare dso_local i32 @RB_CalcScaleTexMatrix(i32, float*) #1

declare dso_local i32 @RB_CalcStretchTexMatrix(i32*, float*) #1

declare dso_local i32 @RB_CalcTransformTexMatrix(%struct.TYPE_19__*, float*) #1

declare dso_local i32 @RB_CalcRotateTexMatrix(i32, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
