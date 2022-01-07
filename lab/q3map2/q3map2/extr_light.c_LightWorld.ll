; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_LightWorld.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_LightWorld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@shade = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"--- SmoothNormals ---\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"--- SetupGrid ---\0A\00", align 1
@entities = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"_color\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"_ambient\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"ambient\00", align 1
@ambientColor = common dso_local global i32 0, align 4
@qfalse = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"_minvertexlight\00", align 1
@qtrue = common dso_local global i64 0, align 8
@minVertexLight = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"_mingridlight\00", align 1
@minGridLight = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"_minlight\00", align 1
@minLight = common dso_local global i32 0, align 4
@SYS_VRB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [22 x i8] c"--- CreateLights ---\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"%9d point lights\0A\00", align 1
@numPointLights = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [16 x i8] c"%9d spotlights\0A\00", align 1
@numSpotLights = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"%9d diffuse (area) lights\0A\00", align 1
@numDiffuseLights = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [20 x i8] c"%9d sun/sky lights\0A\00", align 1
@numSunLights = common dso_local global i32 0, align 4
@noGridLighting = common dso_local global i32 0, align 4
@fastgrid = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [19 x i8] c"--- TraceGrid ---\0A\00", align 1
@numRawGridPoints = common dso_local global i32 0, align 4
@TraceGrid = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"%d x %d x %d = %d grid\0A\00", align 1
@gridBounds = common dso_local global i32* null, align 8
@numBSPGridPoints = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [33 x i8] c"%9d grid points envelope culled\0A\00", align 1
@gridEnvelopeCulled = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [31 x i8] c"%9d grid points bounds culled\0A\00", align 1
@gridBoundsCulled = common dso_local global i64 0, align 8
@subdivideThreshold = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [24 x i8] c"--- MapRawLightmap ---\0A\00", align 1
@numRawLightmaps = common dso_local global i32 0, align 4
@MapRawLightmap = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"%9d luxels\0A\00", align 1
@numLuxels = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [19 x i8] c"%9d luxels mapped\0A\00", align 1
@numLuxelsMapped = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [21 x i8] c"%9d luxels occluded\0A\00", align 1
@numLuxelsOccluded = common dso_local global i32 0, align 4
@dirty = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [26 x i8] c"--- DirtyRawLightmap ---\0A\00", align 1
@DirtyRawLightmap = common dso_local global i32 0, align 4
@fast = common dso_local global i32 0, align 4
@lightsPlaneCulled = common dso_local global i64 0, align 8
@lightsEnvelopeCulled = common dso_local global i64 0, align 8
@lightsBoundsCulled = common dso_local global i64 0, align 8
@lightsClusterCulled = common dso_local global i64 0, align 8
@.str.22 = private unnamed_addr constant [31 x i8] c"--- IlluminateRawLightmap ---\0A\00", align 1
@IlluminateRawLightmap = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [24 x i8] c"%9d luxels illuminated\0A\00", align 1
@numLuxelsIlluminated = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [28 x i8] c"--- IlluminateVertexes ---\0A\00", align 1
@numBSPDrawSurfaces = common dso_local global i32 0, align 4
@IlluminateVertexes = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [26 x i8] c"%9d vertexes illuminated\0A\00", align 1
@numVertsIlluminated = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [25 x i8] c"%9d lights plane culled\0A\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"%9d lights envelope culled\0A\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"%9d lights bounds culled\0A\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"%9d lights cluster culled\0A\00", align 1
@bounce = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [12 x i8] c"Writing %s\0A\00", align 1
@source = common dso_local global i32 0, align 4
@.str.31 = private unnamed_addr constant [38 x i8] c"\0A--- Radiosity (bounce %d of %d) ---\0A\00", align 1
@bouncing = common dso_local global i64 0, align 8
@fastbounce = common dso_local global i32 0, align 4
@numLights = common dso_local global i64 0, align 8
@.str.32 = private unnamed_addr constant [50 x i8] c"No diffuse light to calculate, ending radiosity.\0A\00", align 1
@bouncegrid = common dso_local global i64 0, align 8
@.str.33 = private unnamed_addr constant [20 x i8] c"--- BounceGrid ---\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LightWorld() #0 {
  %1 = alloca i32, align 4
  %2 = alloca float, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = load i64, i64* @shade, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 (...) @SmoothNormals()
  br label %13

13:                                               ; preds = %10, %0
  %14 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 (...) @SetupGrid()
  %16 = load i32*, i32** @entities, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @GetVectorForKey(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = call float @VectorLength(i32 %20)
  %22 = fcmp oeq float %21, 0.000000e+00
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @VectorSet(i32 %24, double 1.000000e+00, double 1.000000e+00, double 1.000000e+00)
  br label %26

26:                                               ; preds = %23, %13
  %27 = load i32*, i32** @entities, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = call float @FloatForKey(i32* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store float %29, float* %2, align 4
  %30 = load float, float* %2, align 4
  %31 = fcmp oeq float %30, 0.000000e+00
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32*, i32** @entities, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = call float @FloatForKey(i32* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store float %35, float* %2, align 4
  br label %36

36:                                               ; preds = %32, %26
  %37 = load i32, i32* %1, align 4
  %38 = load float, float* %2, align 4
  %39 = load i32, i32* @ambientColor, align 4
  %40 = call i32 @VectorScale(i32 %37, float %38, i32 %39)
  %41 = load i64, i64* @qfalse, align 8
  store i64 %41, i64* %5, align 8
  %42 = load i32*, i32** @entities, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = call i8* @ValueForKey(i32* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  store i8* %44, i8** %7, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %36
  %51 = load i64, i64* @qtrue, align 8
  store i64 %51, i64* %5, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call float @atof(i8* %52)
  store float %53, float* %2, align 4
  %54 = load i32, i32* %1, align 4
  %55 = load float, float* %2, align 4
  %56 = load i32, i32* @minVertexLight, align 4
  %57 = call i32 @VectorScale(i32 %54, float %55, i32 %56)
  br label %58

58:                                               ; preds = %50, %36
  %59 = load i64, i64* @qfalse, align 8
  store i64 %59, i64* %6, align 8
  %60 = load i32*, i32** @entities, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = call i8* @ValueForKey(i32* %61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i8* %62, i8** %7, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 0
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %58
  %69 = load i64, i64* @qtrue, align 8
  store i64 %69, i64* %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call float @atof(i8* %70)
  store float %71, float* %2, align 4
  %72 = load i32, i32* %1, align 4
  %73 = load float, float* %2, align 4
  %74 = load i32, i32* @minGridLight, align 4
  %75 = call i32 @VectorScale(i32 %72, float %73, i32 %74)
  br label %76

76:                                               ; preds = %68, %58
  %77 = load i32*, i32** @entities, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = call i8* @ValueForKey(i32* %78, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  store i8* %79, i8** %7, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 0
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %110

85:                                               ; preds = %76
  %86 = load i8*, i8** %7, align 8
  %87 = call float @atof(i8* %86)
  store float %87, float* %2, align 4
  %88 = load i32, i32* %1, align 4
  %89 = load float, float* %2, align 4
  %90 = load i32, i32* @minLight, align 4
  %91 = call i32 @VectorScale(i32 %88, float %89, i32 %90)
  %92 = load i64, i64* %5, align 8
  %93 = load i64, i64* @qfalse, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %85
  %96 = load i32, i32* %1, align 4
  %97 = load float, float* %2, align 4
  %98 = load i32, i32* @minVertexLight, align 4
  %99 = call i32 @VectorScale(i32 %96, float %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %85
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @qfalse, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* %1, align 4
  %106 = load float, float* %2, align 4
  %107 = load i32, i32* @minGridLight, align 4
  %108 = call i32 @VectorScale(i32 %105, float %106, i32 %107)
  br label %109

109:                                              ; preds = %104, %100
  br label %110

110:                                              ; preds = %109, %76
  %111 = load i32, i32* @SYS_VRB, align 4
  %112 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  %113 = call i32 (...) @CreateEntityLights()
  %114 = call i32 (...) @CreateSurfaceLights()
  %115 = load i32, i32* @numPointLights, align 4
  %116 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* @numSpotLights, align 4
  %118 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @numDiffuseLights, align 4
  %120 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @numSunLights, align 4
  %122 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @noGridLighting, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %151, label %125

125:                                              ; preds = %110
  %126 = load i64, i64* @qtrue, align 8
  %127 = load i32, i32* @fastgrid, align 4
  %128 = call i32 @SetupEnvelopes(i64 %126, i32 %127)
  %129 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  %130 = load i32, i32* @numRawGridPoints, align 4
  %131 = load i64, i64* @qtrue, align 8
  %132 = load i32, i32* @TraceGrid, align 4
  %133 = call i32 @RunThreadsOnIndividual(i32 %130, i64 %131, i32 %132)
  %134 = load i32*, i32** @gridBounds, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32*, i32** @gridBounds, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** @gridBounds, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @numBSPGridPoints, align 4
  %144 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i32 %136, i32 %139, i32 %142, i32 %143)
  %145 = load i32, i32* @SYS_VRB, align 4
  %146 = load i64, i64* @gridEnvelopeCulled, align 8
  %147 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %145, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i64 %146)
  %148 = load i32, i32* @SYS_VRB, align 4
  %149 = load i64, i64* @gridBoundsCulled, align 8
  %150 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %148, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i64 %149)
  br label %151

151:                                              ; preds = %125, %110
  %152 = load i32, i32* @subdivideThreshold, align 4
  %153 = load i32, i32* @subdivideThreshold, align 4
  %154 = mul nsw i32 %153, %152
  store i32 %154, i32* @subdivideThreshold, align 4
  %155 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %156 = load i32, i32* @numRawLightmaps, align 4
  %157 = load i64, i64* @qtrue, align 8
  %158 = load i32, i32* @MapRawLightmap, align 4
  %159 = call i32 @RunThreadsOnIndividual(i32 %156, i64 %157, i32 %158)
  %160 = load i32, i32* @numLuxels, align 4
  %161 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0), i32 %160)
  %162 = load i32, i32* @numLuxelsMapped, align 4
  %163 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0), i32 %162)
  %164 = load i32, i32* @numLuxelsOccluded, align 4
  %165 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i32 %164)
  %166 = load i64, i64* @dirty, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %151
  %169 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  %170 = load i32, i32* @numRawLightmaps, align 4
  %171 = load i64, i64* @qtrue, align 8
  %172 = load i32, i32* @DirtyRawLightmap, align 4
  %173 = call i32 @RunThreadsOnIndividual(i32 %170, i64 %171, i32 %172)
  br label %174

174:                                              ; preds = %168, %151
  %175 = load i64, i64* @qfalse, align 8
  %176 = load i32, i32* @fast, align 4
  %177 = call i32 @SetupEnvelopes(i64 %175, i32 %176)
  store i64 0, i64* @lightsPlaneCulled, align 8
  store i64 0, i64* @lightsEnvelopeCulled, align 8
  store i64 0, i64* @lightsBoundsCulled, align 8
  store i64 0, i64* @lightsClusterCulled, align 8
  %178 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %179 = load i32, i32* @numRawLightmaps, align 4
  %180 = load i64, i64* @qtrue, align 8
  %181 = load i32, i32* @IlluminateRawLightmap, align 4
  %182 = call i32 @RunThreadsOnIndividual(i32 %179, i64 %180, i32 %181)
  %183 = load i32, i32* @numLuxelsIlluminated, align 4
  %184 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 %183)
  %185 = call i32 (...) @StitchSurfaceLightmaps()
  %186 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0))
  %187 = load i32, i32* @numBSPDrawSurfaces, align 4
  %188 = load i64, i64* @qtrue, align 8
  %189 = load i32, i32* @IlluminateVertexes, align 4
  %190 = call i32 @RunThreadsOnIndividual(i32 %187, i64 %188, i32 %189)
  %191 = load i32, i32* @numVertsIlluminated, align 4
  %192 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @SYS_VRB, align 4
  %194 = load i64, i64* @lightsPlaneCulled, align 8
  %195 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %193, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i64 %194)
  %196 = load i32, i32* @SYS_VRB, align 4
  %197 = load i64, i64* @lightsEnvelopeCulled, align 8
  %198 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %196, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i64 %197)
  %199 = load i32, i32* @SYS_VRB, align 4
  %200 = load i64, i64* @lightsBoundsCulled, align 8
  %201 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %199, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i64 %200)
  %202 = load i32, i32* @SYS_VRB, align 4
  %203 = load i64, i64* @lightsClusterCulled, align 8
  %204 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %202, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i64 %203)
  store i32 1, i32* %3, align 4
  %205 = load i32, i32* @bounce, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %245, %174
  %207 = load i32, i32* @bounce, align 4
  %208 = icmp sgt i32 %207, 0
  br i1 %208, label %209, label %279

209:                                              ; preds = %206
  %210 = call i32 (...) @StoreSurfaceLightmaps()
  %211 = load i32, i32* @source, align 4
  %212 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* @source, align 4
  %214 = call i32 @WriteBSPFile(i32 %213)
  %215 = load i32, i32* %3, align 4
  %216 = load i32, i32* %4, align 4
  %217 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i64 0, i64 0), i32 %215, i32 %216)
  %218 = load i64, i64* @qtrue, align 8
  store i64 %218, i64* @bouncing, align 8
  %219 = load i32, i32* @ambientColor, align 4
  %220 = call i32 @VectorClear(i32 %219)
  %221 = call i32 (...) @RadFreeLights()
  %222 = call i32 (...) @RadCreateDiffuseLights()
  %223 = load i64, i64* @qfalse, align 8
  %224 = load i32, i32* @fastbounce, align 4
  %225 = call i32 @SetupEnvelopes(i64 %223, i32 %224)
  %226 = load i64, i64* @numLights, align 8
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %209
  %229 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.32, i64 0, i64 0))
  br label %281

230:                                              ; preds = %209
  %231 = load i64, i64* @bouncegrid, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %245

233:                                              ; preds = %230
  store i64 0, i64* @gridEnvelopeCulled, align 8
  store i64 0, i64* @gridBoundsCulled, align 8
  %234 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i64 0, i64 0))
  %235 = load i32, i32* @numRawGridPoints, align 4
  %236 = load i64, i64* @qtrue, align 8
  %237 = load i32, i32* @TraceGrid, align 4
  %238 = call i32 @RunThreadsOnIndividual(i32 %235, i64 %236, i32 %237)
  %239 = load i32, i32* @SYS_VRB, align 4
  %240 = load i64, i64* @gridEnvelopeCulled, align 8
  %241 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %239, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0), i64 %240)
  %242 = load i32, i32* @SYS_VRB, align 4
  %243 = load i64, i64* @gridBoundsCulled, align 8
  %244 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %242, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i64 0, i64 0), i64 %243)
  br label %245

245:                                              ; preds = %233, %230
  store i64 0, i64* @lightsPlaneCulled, align 8
  store i64 0, i64* @lightsEnvelopeCulled, align 8
  store i64 0, i64* @lightsBoundsCulled, align 8
  store i64 0, i64* @lightsClusterCulled, align 8
  %246 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %247 = load i32, i32* @numRawLightmaps, align 4
  %248 = load i64, i64* @qtrue, align 8
  %249 = load i32, i32* @IlluminateRawLightmap, align 4
  %250 = call i32 @RunThreadsOnIndividual(i32 %247, i64 %248, i32 %249)
  %251 = load i32, i32* @numLuxelsIlluminated, align 4
  %252 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i64 0, i64 0), i32 %251)
  %253 = load i32, i32* @numVertsIlluminated, align 4
  %254 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i32 %253)
  %255 = call i32 (...) @StitchSurfaceLightmaps()
  %256 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.24, i64 0, i64 0))
  %257 = load i32, i32* @numBSPDrawSurfaces, align 4
  %258 = load i64, i64* @qtrue, align 8
  %259 = load i32, i32* @IlluminateVertexes, align 4
  %260 = call i32 @RunThreadsOnIndividual(i32 %257, i64 %258, i32 %259)
  %261 = load i32, i32* @numVertsIlluminated, align 4
  %262 = call i32 (i8*, ...) @Sys_Printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.25, i64 0, i64 0), i32 %261)
  %263 = load i32, i32* @SYS_VRB, align 4
  %264 = load i64, i64* @lightsPlaneCulled, align 8
  %265 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %263, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0), i64 %264)
  %266 = load i32, i32* @SYS_VRB, align 4
  %267 = load i64, i64* @lightsEnvelopeCulled, align 8
  %268 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %266, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.27, i64 0, i64 0), i64 %267)
  %269 = load i32, i32* @SYS_VRB, align 4
  %270 = load i64, i64* @lightsBoundsCulled, align 8
  %271 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %269, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i64 0, i64 0), i64 %270)
  %272 = load i32, i32* @SYS_VRB, align 4
  %273 = load i64, i64* @lightsClusterCulled, align 8
  %274 = call i32 (i32, i8*, ...) @Sys_FPrintf(i32 %272, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0), i64 %273)
  %275 = load i32, i32* @bounce, align 4
  %276 = add nsw i32 %275, -1
  store i32 %276, i32* @bounce, align 4
  %277 = load i32, i32* %3, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %3, align 4
  br label %206

279:                                              ; preds = %206
  %280 = call i32 (...) @StoreSurfaceLightmaps()
  br label %281

281:                                              ; preds = %279, %228
  ret void
}

declare dso_local i32 @Sys_Printf(i8*, ...) #1

declare dso_local i32 @SmoothNormals(...) #1

declare dso_local i32 @SetupGrid(...) #1

declare dso_local i32 @GetVectorForKey(i32*, i8*, i32) #1

declare dso_local float @VectorLength(i32) #1

declare dso_local i32 @VectorSet(i32, double, double, double) #1

declare dso_local float @FloatForKey(i32*, i8*) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local float @atof(i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, ...) #1

declare dso_local i32 @CreateEntityLights(...) #1

declare dso_local i32 @CreateSurfaceLights(...) #1

declare dso_local i32 @SetupEnvelopes(i64, i32) #1

declare dso_local i32 @RunThreadsOnIndividual(i32, i64, i32) #1

declare dso_local i32 @StitchSurfaceLightmaps(...) #1

declare dso_local i32 @StoreSurfaceLightmaps(...) #1

declare dso_local i32 @WriteBSPFile(i32) #1

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32 @RadFreeLights(...) #1

declare dso_local i32 @RadCreateDiffuseLights(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
