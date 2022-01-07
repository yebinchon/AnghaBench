; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_flares.c_RB_RenderFlare.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_flares.c_RB_RenderFlare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { float }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { float }
%struct.TYPE_14__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, i64, i32***, i32**, i32*, i32, i64** }
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
  br label %453

98:                                               ; preds = %93, %89, %73
  br label %99

99:                                               ; preds = %98, %65, %60, %23
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 %102, %104
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %109, %111
  %113 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 %112, i32* %113, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %116, %118
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @tr, i32 0, i32 0), align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @RB_BeginSurface(i32 %121, i64 %124)
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 4
  %128 = load i64, i64* %127, align 8
  %129 = sitofp i64 %128 to float
  %130 = load float, float* %3, align 4
  %131 = fsub float %129, %130
  %132 = fptosi float %131 to i64
  %133 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64*, i64** %133, i64 %135
  %137 = load i64*, i64** %136, align 8
  %138 = getelementptr inbounds i64, i64* %137, i64 0
  store i64 %132, i64* %138, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = sitofp i64 %141 to float
  %143 = load float, float* %3, align 4
  %144 = fsub float %142, %143
  %145 = fptosi float %144 to i64
  %146 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %147 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64*, i64** %146, i64 %148
  %150 = load i64*, i64** %149, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 1
  store i64 %145, i64* %151, align 8
  %152 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %153 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32**, i32*** %152, i64 %154
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 0
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 0, i32* %159, align 4
  %160 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32**, i32*** %160, i64 %162
  %164 = load i32**, i32*** %163, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  store i32 0, i32* %167, align 4
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %171 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  store i32 %169, i32* %175, align 4
  %176 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  store i32 %177, i32* %183, align 4
  %184 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32*, i32** %186, i64 %188
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  store i32 %185, i32* %191, align 4
  %192 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %193 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32*, i32** %192, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 3
  store i32 255, i32* %197, align 4
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 4
  %202 = load i64, i64* %201, align 8
  %203 = sitofp i64 %202 to float
  %204 = load float, float* %3, align 4
  %205 = fsub float %203, %204
  %206 = fptosi float %205 to i64
  %207 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i64*, i64** %207, i64 %209
  %211 = load i64*, i64** %210, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 0
  store i64 %206, i64* %212, align 8
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 3
  %215 = load i64, i64* %214, align 8
  %216 = sitofp i64 %215 to float
  %217 = load float, float* %3, align 4
  %218 = fadd float %216, %217
  %219 = fptosi float %218 to i64
  %220 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %221 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64*, i64** %220, i64 %222
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 1
  store i64 %219, i64* %225, align 8
  %226 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32**, i32*** %226, i64 %228
  %230 = load i32**, i32*** %229, align 8
  %231 = getelementptr inbounds i32*, i32** %230, i64 0
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  store i32 0, i32* %233, align 4
  %234 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32**, i32*** %234, i64 %236
  %238 = load i32**, i32*** %237, align 8
  %239 = getelementptr inbounds i32*, i32** %238, i64 0
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  store i32 1, i32* %241, align 4
  %242 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %245 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  store i32 %243, i32* %249, align 4
  %250 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %251 = load i32, i32* %250, align 4
  %252 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 1
  store i32 %251, i32* %257, align 4
  %258 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %259 = load i32, i32* %258, align 4
  %260 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %261 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32*, i32** %260, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 2
  store i32 %259, i32* %265, align 4
  %266 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %267 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 3
  store i32 255, i32* %271, align 4
  %272 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %275 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %274, i32 0, i32 4
  %276 = load i64, i64* %275, align 8
  %277 = sitofp i64 %276 to float
  %278 = load float, float* %3, align 4
  %279 = fadd float %277, %278
  %280 = fptosi float %279 to i64
  %281 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %282 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i64*, i64** %281, i64 %283
  %285 = load i64*, i64** %284, align 8
  %286 = getelementptr inbounds i64, i64* %285, i64 0
  store i64 %280, i64* %286, align 8
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = sitofp i64 %289 to float
  %291 = load float, float* %3, align 4
  %292 = fadd float %290, %291
  %293 = fptosi float %292 to i64
  %294 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %295 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i64*, i64** %294, i64 %296
  %298 = load i64*, i64** %297, align 8
  %299 = getelementptr inbounds i64, i64* %298, i64 1
  store i64 %293, i64* %299, align 8
  %300 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %301 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32**, i32*** %300, i64 %302
  %304 = load i32**, i32*** %303, align 8
  %305 = getelementptr inbounds i32*, i32** %304, i64 0
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  store i32 1, i32* %307, align 4
  %308 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %309 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32**, i32*** %308, i64 %310
  %312 = load i32**, i32*** %311, align 8
  %313 = getelementptr inbounds i32*, i32** %312, i64 0
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 1
  store i32 1, i32* %315, align 4
  %316 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %317 = load i32, i32* %316, align 4
  %318 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %319 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32*, i32** %318, i64 %320
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 0
  store i32 %317, i32* %323, align 4
  %324 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %327 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32*, i32** %326, i64 %328
  %330 = load i32*, i32** %329, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 1
  store i32 %325, i32* %331, align 4
  %332 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %333 = load i32, i32* %332, align 4
  %334 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %335 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32*, i32** %334, i64 %336
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 2
  store i32 %333, i32* %339, align 4
  %340 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %341 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32*, i32** %340, i64 %342
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 3
  store i32 255, i32* %345, align 4
  %346 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %348 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 4
  %350 = load i64, i64* %349, align 8
  %351 = sitofp i64 %350 to float
  %352 = load float, float* %3, align 4
  %353 = fadd float %351, %352
  %354 = fptosi float %353 to i64
  %355 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %356 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i64*, i64** %355, i64 %357
  %359 = load i64*, i64** %358, align 8
  %360 = getelementptr inbounds i64, i64* %359, i64 0
  store i64 %354, i64* %360, align 8
  %361 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 3
  %363 = load i64, i64* %362, align 8
  %364 = sitofp i64 %363 to float
  %365 = load float, float* %3, align 4
  %366 = fsub float %364, %365
  %367 = fptosi float %366 to i64
  %368 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 6), align 8
  %369 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i64*, i64** %368, i64 %370
  %372 = load i64*, i64** %371, align 8
  %373 = getelementptr inbounds i64, i64* %372, i64 1
  store i64 %367, i64* %373, align 8
  %374 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %375 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32**, i32*** %374, i64 %376
  %378 = load i32**, i32*** %377, align 8
  %379 = getelementptr inbounds i32*, i32** %378, i64 0
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 0
  store i32 1, i32* %381, align 4
  %382 = load i32***, i32**** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 2), align 8
  %383 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32**, i32*** %382, i64 %384
  %386 = load i32**, i32*** %385, align 8
  %387 = getelementptr inbounds i32*, i32** %386, i64 0
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 1
  store i32 0, i32* %389, align 4
  %390 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %393 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32*, i32** %392, i64 %394
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 0
  store i32 %391, i32* %397, align 4
  %398 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %399 = load i32, i32* %398, align 4
  %400 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %401 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32*, i32** %400, i64 %402
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 1
  store i32 %399, i32* %405, align 4
  %406 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %407 = load i32, i32* %406, align 4
  %408 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %409 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32*, i32** %408, i64 %410
  %412 = load i32*, i32** %411, align 8
  %413 = getelementptr inbounds i32, i32* %412, i64 2
  store i32 %407, i32* %413, align 4
  %414 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 3), align 8
  %415 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32*, i32** %414, i64 %416
  %418 = load i32*, i32** %417, align 8
  %419 = getelementptr inbounds i32, i32* %418, i64 3
  store i32 255, i32* %419, align 4
  %420 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %421 = add nsw i32 %420, 1
  store i32 %421, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 0), align 8
  %422 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %423 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %425 = sext i32 %423 to i64
  %426 = getelementptr inbounds i32, i32* %422, i64 %425
  store i32 0, i32* %426, align 4
  %427 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %428 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %430 = sext i32 %428 to i64
  %431 = getelementptr inbounds i32, i32* %427, i64 %430
  store i32 1, i32* %431, align 4
  %432 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %433 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %435 = sext i32 %433 to i64
  %436 = getelementptr inbounds i32, i32* %432, i64 %435
  store i32 2, i32* %436, align 4
  %437 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %438 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  store i32 0, i32* %441, align 4
  %442 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %443 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %444 = add nsw i32 %443, 1
  store i32 %444, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %445 = sext i32 %443 to i64
  %446 = getelementptr inbounds i32, i32* %442, i64 %445
  store i32 2, i32* %446, align 4
  %447 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 4), align 8
  %448 = load i32, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %449 = add nsw i32 %448, 1
  store i32 %449, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @tess, i32 0, i32 5), align 8
  %450 = sext i32 %448 to i64
  %451 = getelementptr inbounds i32, i32* %447, i64 %450
  store i32 3, i32* %451, align 4
  %452 = call i32 (...) @RB_EndSurface()
  br label %453

453:                                              ; preds = %99, %97
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local float @sqrt(float) #2

declare dso_local i32 @VectorScale(i32, float, i32*) #2

declare dso_local i32 @VectorCopy(i32, i64*) #2

declare dso_local i32 @RB_CalcModulateColorsByFog(i32*) #2

declare dso_local i32 @RB_BeginSurface(i32, i64) #2

declare dso_local i32 @RB_EndSurface(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
