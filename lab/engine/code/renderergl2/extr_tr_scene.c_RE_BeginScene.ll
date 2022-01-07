; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_scene.c_RE_BeginScene.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_scene.c_RE_BeginScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { float, i32, i32, %struct.TYPE_33__, i32*, i32*, i32, i32 }
%struct.TYPE_33__ = type { float*, float**, double, i32, float*, float*, float*, float, double, i64, i32*, i64, i32*, i64, i32*, i32*, i64, i32, i32, i8**, i32*, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { float }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_26__ = type { float }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_42__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_35__ = type { i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_37__ = type { double, i32, i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_36__ = type { float, i32, i32, i32 }

@tr = common dso_local global %struct.TYPE_38__ zeroinitializer, align 8
@qfalse = common dso_local global i32 0, align 4
@RDF_NOWORLDMODEL = common dso_local global i32 0, align 4
@MAX_MAP_AREA_BYTES = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@r_depthPrepass = common dso_local global %struct.TYPE_32__* null, align 8
@r_mapOverBrightBits = common dso_local global %struct.TYPE_41__* null, align 8
@r_forceSun = common dso_local global %struct.TYPE_27__* null, align 8
@r_forceSunLightScale = common dso_local global %struct.TYPE_25__* null, align 8
@r_sunlightMode = common dso_local global %struct.TYPE_40__* null, align 8
@r_forceSunAmbientScale = common dso_local global %struct.TYPE_26__* null, align 8
@r_forceAutoExposure = common dso_local global %struct.TYPE_30__* null, align 8
@r_forceAutoExposureMin = common dso_local global %struct.TYPE_28__* null, align 8
@r_forceAutoExposureMax = common dso_local global %struct.TYPE_29__* null, align 8
@r_forceToneMap = common dso_local global %struct.TYPE_24__* null, align 8
@r_forceToneMapMin = common dso_local global %struct.TYPE_42__* null, align 8
@r_forceToneMapAvg = common dso_local global %struct.TYPE_23__* null, align 8
@r_forceToneMapMax = common dso_local global %struct.TYPE_43__* null, align 8
@RDF_EXTRA = common dso_local global i32 0, align 4
@RDF_SUNLIGHT = common dso_local global i32 0, align 4
@r_firstSceneDrawSurf = common dso_local global i32 0, align 4
@backEndData = common dso_local global %struct.TYPE_35__* null, align 8
@r_numentities = common dso_local global i64 0, align 8
@r_firstSceneEntity = common dso_local global i64 0, align 8
@r_numdlights = common dso_local global i64 0, align 8
@r_firstSceneDlight = common dso_local global i64 0, align 8
@r_numpolys = common dso_local global i64 0, align 8
@r_firstScenePoly = common dso_local global i64 0, align 8
@r_dynamiclight = common dso_local global %struct.TYPE_31__* null, align 8
@r_vertexLight = common dso_local global %struct.TYPE_39__* null, align 8
@glConfig = common dso_local global %struct.TYPE_34__ zeroinitializer, align 8
@GLHW_PERMEDIA2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_BeginScene(%struct.TYPE_37__* %0) #0 {
  %2 = alloca %struct.TYPE_37__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca float, align 4
  %6 = alloca %struct.TYPE_36__*, align 8
  store %struct.TYPE_37__* %0, %struct.TYPE_37__** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 29), align 8
  %8 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %8, i32 0, i32 11
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @Com_Memcpy(i32 %7, i32 %10, i32 4)
  %12 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 28), align 4
  %15 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 27), align 8
  %18 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 26), align 4
  %21 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 25), align 8
  %24 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 24), align 4
  %27 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 23), align 8
  %30 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 0), align 8
  %34 = call i32 @VectorCopy(i32 %32, float* %33)
  %35 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = load float**, float*** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 1), align 8
  %41 = getelementptr inbounds float*, float** %40, i64 0
  %42 = load float*, float** %41, align 8
  %43 = call i32 @VectorCopy(i32 %39, float* %42)
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = load float**, float*** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 1), align 8
  %50 = getelementptr inbounds float*, float** %49, i64 1
  %51 = load float*, float** %50, align 8
  %52 = call i32 @VectorCopy(i32 %48, float* %51)
  %53 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load float**, float*** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 1), align 8
  %59 = getelementptr inbounds float*, float** %58, i64 2
  %60 = load float*, float** %59, align 8
  %61 = call i32 @VectorCopy(i32 %57, float* %60)
  %62 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %62, i32 0, i32 0
  %64 = load double, double* %63, align 8
  store double %64, double* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 2), align 8
  %65 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 3), align 8
  %68 = load i32, i32* @qfalse, align 4
  store i32 %68, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 21), align 8
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 3), align 8
  %70 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %119, label %73

73:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %74

74:                                               ; preds = %110, %73
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @MAX_MAP_AREA_BYTES, align 4
  %77 = sdiv i32 %76, 4
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %74
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 22), align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = inttoptr i64 %88 to i32*
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %85, %93
  %95 = load i32, i32* %3, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %3, align 4
  %97 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32*
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 22), align 8
  %106 = inttoptr i64 %105 to i32*
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  store i32 %104, i32* %109, align 4
  br label %110

110:                                              ; preds = %79
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %74

113:                                              ; preds = %74
  %114 = load i32, i32* %3, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i32, i32* @qtrue, align 4
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 21), align 8
  br label %118

118:                                              ; preds = %116, %113
  br label %119

119:                                              ; preds = %118, %1
  %120 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 4), align 8
  %121 = getelementptr inbounds float, float* %120, i64 3
  store float 0.000000e+00, float* %121, align 4
  %122 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 5), align 8
  %123 = getelementptr inbounds float, float* %122, i64 3
  store float 1.000000e+00, float* %123, align 4
  %124 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 6), align 8
  %125 = getelementptr inbounds float, float* %124, i64 3
  store float 1.000000e+00, float* %125, align 4
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 7), align 4
  %127 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 4), align 8
  %128 = call i32 @VectorCopy(i32 %126, float* %127)
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 3), align 8
  %130 = load i32, i32* @RDF_NOWORLDMODEL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %119
  %134 = load %struct.TYPE_32__*, %struct.TYPE_32__** @r_depthPrepass, align 8
  %135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133, %119
  %139 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 5), align 8
  %140 = call i32 @VectorSet(float* %139, i32 0, i32 0, i32 0)
  %141 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 6), align 8
  %142 = call i32 @VectorSet(float* %141, i32 0, i32 0, i32 0)
  br label %215

143:                                              ; preds = %133
  %144 = load %struct.TYPE_41__*, %struct.TYPE_41__** @r_mapOverBrightBits, align 8
  %145 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 1, %146
  %148 = sitofp i32 %147 to float
  %149 = fdiv float %148, 2.550000e+02
  store float %149, float* %5, align 4
  %150 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_forceSun, align 8
  %151 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %143
  %155 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 6), align 8
  %156 = load float, float* %5, align 4
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** @r_forceSunLightScale, align 8
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %157, i32 0, i32 0
  %159 = load float, float* %158, align 4
  %160 = fmul float %156, %159
  %161 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 5), align 8
  %162 = call i32 @VectorScale(i32 %155, float %160, float* %161)
  br label %168

163:                                              ; preds = %143
  %164 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 6), align 8
  %165 = load float, float* %5, align 4
  %166 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 5), align 8
  %167 = call i32 @VectorScale(i32 %164, float %165, float* %166)
  br label %168

168:                                              ; preds = %163, %154
  %169 = load %struct.TYPE_40__*, %struct.TYPE_40__** @r_sunlightMode, align 8
  %170 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %192

173:                                              ; preds = %168
  %174 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_forceSun, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** @r_forceSunAmbientScale, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 0
  %181 = load float, float* %180, align 4
  br label %184

182:                                              ; preds = %173
  %183 = load float, float* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 0), align 8
  br label %184

184:                                              ; preds = %182, %178
  %185 = phi float [ %181, %178 ], [ %183, %182 ]
  %186 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 6), align 8
  %187 = getelementptr inbounds float, float* %186, i64 2
  store float %185, float* %187, align 4
  %188 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 6), align 8
  %189 = getelementptr inbounds float, float* %188, i64 1
  store float %185, float* %189, align 4
  %190 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 6), align 8
  %191 = getelementptr inbounds float, float* %190, i64 0
  store float %185, float* %191, align 4
  br label %214

192:                                              ; preds = %168
  %193 = load %struct.TYPE_27__*, %struct.TYPE_27__** @r_forceSun, align 8
  %194 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %206

197:                                              ; preds = %192
  %198 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 6), align 8
  %199 = load float, float* %5, align 4
  %200 = load %struct.TYPE_26__*, %struct.TYPE_26__** @r_forceSunAmbientScale, align 8
  %201 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %200, i32 0, i32 0
  %202 = load float, float* %201, align 4
  %203 = fmul float %199, %202
  %204 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 6), align 8
  %205 = call i32 @VectorScale(i32 %198, float %203, float* %204)
  br label %213

206:                                              ; preds = %192
  %207 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 6), align 8
  %208 = load float, float* %5, align 4
  %209 = load float, float* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 0), align 8
  %210 = fmul float %208, %209
  %211 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 6), align 8
  %212 = call i32 @VectorScale(i32 %207, float %210, float* %211)
  br label %213

213:                                              ; preds = %206, %197
  br label %214

214:                                              ; preds = %213, %184
  br label %215

215:                                              ; preds = %214, %138
  %216 = load %struct.TYPE_30__*, %struct.TYPE_30__** @r_forceAutoExposure, align 8
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %231

220:                                              ; preds = %215
  %221 = load %struct.TYPE_28__*, %struct.TYPE_28__** @r_forceAutoExposureMin, align 8
  %222 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 20), align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  store i32 %223, i32* %225, align 4
  %226 = load %struct.TYPE_29__*, %struct.TYPE_29__** @r_forceAutoExposureMax, align 8
  %227 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 20), align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  store i32 %228, i32* %230, align 4
  br label %242

231:                                              ; preds = %215
  %232 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 5), align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 20), align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  store i32 %234, i32* %236, align 4
  %237 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 5), align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 20), align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 1
  store i32 %239, i32* %241, align 4
  br label %242

242:                                              ; preds = %231, %220
  %243 = load %struct.TYPE_24__*, %struct.TYPE_24__** @r_forceToneMap, align 8
  %244 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %266

247:                                              ; preds = %242
  %248 = load %struct.TYPE_42__*, %struct.TYPE_42__** @r_forceToneMapMin, align 8
  %249 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = call i8* @pow(i32 2, i32 %250)
  %252 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 19), align 8
  %253 = getelementptr inbounds i8*, i8** %252, i64 0
  store i8* %251, i8** %253, align 8
  %254 = load %struct.TYPE_23__*, %struct.TYPE_23__** @r_forceToneMapAvg, align 8
  %255 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i8* @pow(i32 2, i32 %256)
  %258 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 19), align 8
  %259 = getelementptr inbounds i8*, i8** %258, i64 1
  store i8* %257, i8** %259, align 8
  %260 = load %struct.TYPE_43__*, %struct.TYPE_43__** @r_forceToneMapMax, align 8
  %261 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i8* @pow(i32 2, i32 %262)
  %264 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 19), align 8
  %265 = getelementptr inbounds i8*, i8** %264, i64 2
  store i8* %263, i8** %265, align 8
  br label %285

266:                                              ; preds = %242
  %267 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 4), align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = call i8* @pow(i32 2, i32 %269)
  %271 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 19), align 8
  %272 = getelementptr inbounds i8*, i8** %271, i64 0
  store i8* %270, i8** %272, align 8
  %273 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 4), align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = call i8* @pow(i32 2, i32 %275)
  %277 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 19), align 8
  %278 = getelementptr inbounds i8*, i8** %277, i64 1
  store i8* %276, i8** %278, align 8
  %279 = load i32*, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 4), align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %280, align 4
  %282 = call i8* @pow(i32 2, i32 %281)
  %283 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 19), align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 2
  store i8* %282, i8** %284, align 8
  br label %285

285:                                              ; preds = %266, %247
  %286 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = load i32, i32* @RDF_EXTRA, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %322

292:                                              ; preds = %285
  %293 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %293, i64 1
  %295 = bitcast %struct.TYPE_37__* %294 to %struct.TYPE_36__*
  store %struct.TYPE_36__* %295, %struct.TYPE_36__** %6, align 8
  %296 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %296, i32 0, i32 0
  %298 = load float, float* %297, align 4
  store float %298, float* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 7), align 8
  %299 = load %struct.TYPE_37__*, %struct.TYPE_37__** %2, align 8
  %300 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i32, i32* @RDF_SUNLIGHT, align 4
  %303 = and i32 %301, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %321

305:                                              ; preds = %292
  %306 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 4), align 8
  %310 = call i32 @VectorCopy(i32 %308, float* %309)
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 5), align 8
  %315 = call i32 @VectorCopy(i32 %313, float* %314)
  %316 = load %struct.TYPE_36__*, %struct.TYPE_36__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load float*, float** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 6), align 8
  %320 = call i32 @VectorCopy(i32 %318, float* %319)
  br label %321

321:                                              ; preds = %305, %292
  br label %323

322:                                              ; preds = %285
  store float 0.000000e+00, float* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 7), align 8
  br label %323

323:                                              ; preds = %322, %321
  %324 = load double, double* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 2), align 8
  %325 = fmul double %324, 1.000000e-03
  store double %325, double* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 8), align 8
  %326 = load i32, i32* @r_firstSceneDrawSurf, align 4
  store i32 %326, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 18), align 4
  %327 = load %struct.TYPE_35__*, %struct.TYPE_35__** @backEndData, align 8
  %328 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %327, i32 0, i32 4
  %329 = load i32, i32* %328, align 8
  store i32 %329, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 17), align 8
  %330 = load i64, i64* @r_numentities, align 8
  %331 = load i64, i64* @r_firstSceneEntity, align 8
  %332 = sub i64 %330, %331
  store i64 %332, i64* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 16), align 8
  %333 = load %struct.TYPE_35__*, %struct.TYPE_35__** @backEndData, align 8
  %334 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %333, i32 0, i32 3
  %335 = load i32*, i32** %334, align 8
  %336 = load i64, i64* @r_firstSceneEntity, align 8
  %337 = getelementptr inbounds i32, i32* %335, i64 %336
  store i32* %337, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 15), align 8
  %338 = load i64, i64* @r_numdlights, align 8
  %339 = load i64, i64* @r_firstSceneDlight, align 8
  %340 = sub i64 %338, %339
  store i64 %340, i64* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 9), align 8
  %341 = load %struct.TYPE_35__*, %struct.TYPE_35__** @backEndData, align 8
  %342 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %341, i32 0, i32 2
  %343 = load i32*, i32** %342, align 8
  %344 = load i64, i64* @r_firstSceneDlight, align 8
  %345 = getelementptr inbounds i32, i32* %343, i64 %344
  store i32* %345, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 14), align 8
  %346 = load i64, i64* @r_numpolys, align 8
  %347 = load i64, i64* @r_firstScenePoly, align 8
  %348 = sub i64 %346, %347
  store i64 %348, i64* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 13), align 8
  %349 = load %struct.TYPE_35__*, %struct.TYPE_35__** @backEndData, align 8
  %350 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %349, i32 0, i32 1
  %351 = load i32*, i32** %350, align 8
  %352 = load i64, i64* @r_firstScenePoly, align 8
  %353 = getelementptr inbounds i32, i32* %351, i64 %352
  store i32* %353, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 12), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 11), align 8
  %354 = load %struct.TYPE_35__*, %struct.TYPE_35__** @backEndData, align 8
  %355 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  store i32* %357, i32** getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 10), align 8
  %358 = load %struct.TYPE_31__*, %struct.TYPE_31__** @r_dynamiclight, align 8
  %359 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %371, label %362

362:                                              ; preds = %323
  %363 = load %struct.TYPE_39__*, %struct.TYPE_39__** @r_vertexLight, align 8
  %364 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = icmp eq i32 %365, 1
  br i1 %366, label %371, label %367

367:                                              ; preds = %362
  %368 = load i64, i64* getelementptr inbounds (%struct.TYPE_34__, %struct.TYPE_34__* @glConfig, i32 0, i32 0), align 8
  %369 = load i64, i64* @GLHW_PERMEDIA2, align 8
  %370 = icmp eq i64 %368, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %367, %362, %323
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 3, i32 9), align 8
  br label %372

372:                                              ; preds = %371, %367
  %373 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 2), align 8
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 2), align 8
  %375 = load i32, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 1), align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* getelementptr inbounds (%struct.TYPE_38__, %struct.TYPE_38__* @tr, i32 0, i32 1), align 4
  ret void
}

declare dso_local i32 @Com_Memcpy(i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, float*) #1

declare dso_local i32 @VectorSet(float*, i32, i32, i32) #1

declare dso_local i32 @VectorScale(i32, float, float*) #1

declare dso_local i8* @pow(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
