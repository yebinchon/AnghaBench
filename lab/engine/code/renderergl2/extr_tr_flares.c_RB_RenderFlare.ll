; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_flares.c_RB_RenderFlare.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_flares.c_RB_RenderFlare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { float }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { float }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, i32**, i32**, i32*, i32, i64** }
%struct.TYPE_13__ = type { float, float, i64, i64, i64, i32, i32 }

@__const.RB_RenderFlare.fogFactors = private unnamed_addr constant [3 x i32] [i32 255, i32 255, i32 255], align 4
@backEnd = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@r_flareSize = common dso_local global %struct.TYPE_16__* null, align 8
@flareCoeff = common dso_local global float 0.000000e+00, align 4
@tr = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@tess = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_RenderFlare(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca float, align 4
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca [3 x i32], align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %10 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast ([3 x i32]* @__const.RB_RenderFlare.fogFactors to i8*), i64 12, i1 false)
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 1, i32 0), align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 1, i32 0), align 4
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load float, float* %14, align 8
  %16 = fcmp ogt float %15, -1.000000e+00
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store float 1.000000e+00, float* %6, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load float, float* %20, align 8
  %22 = fneg float %21
  store float %22, float* %6, align 4
  br label %23

23:                                               ; preds = %18, %17
  %24 = load float, float* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @backEnd, i32 0, i32 0, i32 0), align 4
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** @r_flareSize, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load float, float* %26, align 4
  %28 = fdiv float %27, 6.400000e+02
  %29 = load float, float* %6, align 4
  %30 = fdiv float 8.000000e+00, %29
  %31 = fadd float %28, %30
  %32 = fmul float %24, %31
  store float %32, float* %3, align 4
  %33 = load float, float* %6, align 4
  %34 = load float, float* %3, align 4
  %35 = load float, float* @flareCoeff, align 4
  %36 = call float @sqrt(float %35)
  %37 = fmul float %34, %36
  %38 = fadd float %33, %37
  store float %38, float* %8, align 4
  %39 = load float, float* @flareCoeff, align 4
  %40 = load float, float* %3, align 4
  %41 = fmul float %39, %40
  %42 = load float, float* %3, align 4
  %43 = fmul float %41, %42
  %44 = load float, float* %8, align 4
  %45 = load float, float* %8, align 4
  %46 = fmul float %44, %45
  %47 = fdiv float %43, %46
  store float %47, float* %7, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 1
  %53 = load float, float* %52, align 4
  %54 = load float, float* %7, align 4
  %55 = fmul float %53, %54
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @VectorScale(i32 %50, float %55, i32* %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 1), align 8
  %59 = icmp ne %struct.TYPE_12__* %58, null
  br i1 %59, label %60, label %99

60:                                               ; preds = %23
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %63, 0
  br i1 %64, label %65, label %99

65:                                               ; preds = %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 1), align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp slt i64 %68, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %65
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %78 = getelementptr inbounds i64*, i64** %77, i64 0
  %79 = load i64*, i64** %78, align 8
  %80 = call i32 @VectorCopy(i32 %76, i64* %79)
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 1), align 8
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %85 = call i32 @RB_CalcModulateColorsByFog(i32* %84)
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %98, label %89

89:                                               ; preds = %73
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  br label %440

98:                                               ; preds = %93, %89, %73
  br label %99

99:                                               ; preds = %98, %65, %60, %23
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %102, %104
  %106 = mul nsw i32 %105, 257
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 %110, %112
  %114 = mul nsw i32 %113, 257
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %114, i32* %115, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 %118, %120
  %122 = mul nsw i32 %121, 257
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i32 @RB_BeginSurface(i32 %124, i64 %127, i32 0)
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 4
  %131 = load i64, i64* %130, align 8
  %132 = sitofp i64 %131 to float
  %133 = load float, float* %3, align 4
  %134 = fsub float %132, %133
  %135 = fptosi float %134 to i64
  %136 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64*, i64** %136, i64 %138
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 0
  store i64 %135, i64* %141, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = sitofp i64 %144 to float
  %146 = load float, float* %3, align 4
  %147 = fsub float %145, %146
  %148 = fptosi float %147 to i64
  %149 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64*, i64** %149, i64 %151
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 1
  store i64 %148, i64* %154, align 8
  %155 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 0, i32* %160, align 4
  %161 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32*, i32** %161, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 0, i32* %166, align 4
  %167 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %170 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32*, i32** %169, i64 %171
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %168, i32* %174, align 4
  %175 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %178 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 1
  store i32 %176, i32* %182, align 4
  %183 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %184 = load i32, i32* %183, align 4
  %185 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32*, i32** %185, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 2
  store i32 %184, i32* %190, align 4
  %191 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %192 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 3
  store i32 65535, i32* %196, align 4
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = sitofp i64 %201 to float
  %203 = load float, float* %3, align 4
  %204 = fsub float %202, %203
  %205 = fptosi float %204 to i64
  %206 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64*, i64** %206, i64 %208
  %210 = load i64*, i64** %209, align 8
  %211 = getelementptr inbounds i64, i64* %210, i64 0
  store i64 %205, i64* %211, align 8
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = sitofp i64 %214 to float
  %216 = load float, float* %3, align 4
  %217 = fadd float %215, %216
  %218 = fptosi float %217 to i64
  %219 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i64*, i64** %219, i64 %221
  %223 = load i64*, i64** %222, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 1
  store i64 %218, i64* %224, align 8
  %225 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %226 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32*, i32** %225, i64 %227
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 0
  store i32 0, i32* %230, align 4
  %231 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %232 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32*, i32** %231, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 1
  store i32 1, i32* %236, align 4
  %237 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %240 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32*, i32** %239, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  store i32 %238, i32* %244, align 4
  %245 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %248 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32*, i32** %247, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  store i32 %246, i32* %252, align 4
  %253 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %254 = load i32, i32* %253, align 4
  %255 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %256 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32*, i32** %255, i64 %257
  %259 = load i32*, i32** %258, align 8
  %260 = getelementptr inbounds i32, i32* %259, i64 2
  store i32 %254, i32* %260, align 4
  %261 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %262 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32*, i32** %261, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = getelementptr inbounds i32, i32* %265, i64 3
  store i32 65535, i32* %266, align 4
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 4
  %271 = load i64, i64* %270, align 8
  %272 = sitofp i64 %271 to float
  %273 = load float, float* %3, align 4
  %274 = fadd float %272, %273
  %275 = fptosi float %274 to i64
  %276 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %277 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64*, i64** %276, i64 %278
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 0
  store i64 %275, i64* %281, align 8
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = sitofp i64 %284 to float
  %286 = load float, float* %3, align 4
  %287 = fadd float %285, %286
  %288 = fptosi float %287 to i64
  %289 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %290 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i64*, i64** %289, i64 %291
  %293 = load i64*, i64** %292, align 8
  %294 = getelementptr inbounds i64, i64* %293, i64 1
  store i64 %288, i64* %294, align 8
  %295 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %296 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32*, i32** %295, i64 %297
  %299 = load i32*, i32** %298, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  store i32 1, i32* %300, align 4
  %301 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %302 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32*, i32** %301, i64 %303
  %305 = load i32*, i32** %304, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 1
  store i32 1, i32* %306, align 4
  %307 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %308 = load i32, i32* %307, align 4
  %309 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %310 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %309, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  store i32 %308, i32* %314, align 4
  %315 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %318 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32*, i32** %317, i64 %319
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 1
  store i32 %316, i32* %322, align 4
  %323 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %324 = load i32, i32* %323, align 4
  %325 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %326 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 2
  store i32 %324, i32* %330, align 4
  %331 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %332 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i32*, i32** %331, i64 %333
  %335 = load i32*, i32** %334, align 8
  %336 = getelementptr inbounds i32, i32* %335, i64 3
  store i32 65535, i32* %336, align 4
  %337 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = sitofp i64 %341 to float
  %343 = load float, float* %3, align 4
  %344 = fadd float %342, %343
  %345 = fptosi float %344 to i64
  %346 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %347 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i64*, i64** %346, i64 %348
  %350 = load i64*, i64** %349, align 8
  %351 = getelementptr inbounds i64, i64* %350, i64 0
  store i64 %345, i64* %351, align 8
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 3
  %354 = load i64, i64* %353, align 8
  %355 = sitofp i64 %354 to float
  %356 = load float, float* %3, align 4
  %357 = fsub float %355, %356
  %358 = fptosi float %357 to i64
  %359 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %360 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i64*, i64** %359, i64 %361
  %363 = load i64*, i64** %362, align 8
  %364 = getelementptr inbounds i64, i64* %363, i64 1
  store i64 %358, i64* %364, align 8
  %365 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %366 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32*, i32** %365, i64 %367
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  store i32 1, i32* %370, align 4
  %371 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %372 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32*, i32** %371, i64 %373
  %375 = load i32*, i32** %374, align 8
  %376 = getelementptr inbounds i32, i32* %375, i64 1
  store i32 0, i32* %376, align 4
  %377 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %378 = load i32, i32* %377, align 4
  %379 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %380 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32*, i32** %379, i64 %381
  %383 = load i32*, i32** %382, align 8
  %384 = getelementptr inbounds i32, i32* %383, i64 0
  store i32 %378, i32* %384, align 4
  %385 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %386 = load i32, i32* %385, align 4
  %387 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %388 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds i32*, i32** %387, i64 %389
  %391 = load i32*, i32** %390, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 1
  store i32 %386, i32* %392, align 4
  %393 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %394 = load i32, i32* %393, align 4
  %395 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %396 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i32*, i32** %395, i64 %397
  %399 = load i32*, i32** %398, align 8
  %400 = getelementptr inbounds i32, i32* %399, i64 2
  store i32 %394, i32* %400, align 4
  %401 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %402 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds i32*, i32** %401, i64 %403
  %405 = load i32*, i32** %404, align 8
  %406 = getelementptr inbounds i32, i32* %405, i64 3
  store i32 65535, i32* %406, align 4
  %407 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %409 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %410 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %412 = sext i32 %410 to i64
  %413 = getelementptr inbounds i32, i32* %409, i64 %412
  store i32 0, i32* %413, align 4
  %414 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %415 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  store i32 1, i32* %418, align 4
  %419 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %420 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %422 = sext i32 %420 to i64
  %423 = getelementptr inbounds i32, i32* %419, i64 %422
  store i32 2, i32* %423, align 4
  %424 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %425 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %427 = sext i32 %425 to i64
  %428 = getelementptr inbounds i32, i32* %424, i64 %427
  store i32 0, i32* %428, align 4
  %429 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %430 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %432 = sext i32 %430 to i64
  %433 = getelementptr inbounds i32, i32* %429, i64 %432
  store i32 2, i32* %433, align 4
  %434 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %435 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %437 = sext i32 %435 to i64
  %438 = getelementptr inbounds i32, i32* %434, i64 %437
  store i32 3, i32* %438, align 4
  %439 = call i32 (...) @RB_EndSurface()
  br label %440

440:                                              ; preds = %99, %97
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @sqrt(float) #2

declare dso_local i32 @VectorScale(i32, float, i32*) #2

declare dso_local i32 @VectorCopy(i32, i64*) #2

declare dso_local i32 @RB_CalcModulateColorsByFog(i32*) #2

declare dso_local i32 @RB_BeginSurface(i32, i64, i32) #2

declare dso_local i32 @RB_EndSurface(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
