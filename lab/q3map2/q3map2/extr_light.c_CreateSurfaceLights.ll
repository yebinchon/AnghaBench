; ModuleID = '/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_CreateSurfaceLights.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/q3map2/extr_light.c_CreateSurfaceLights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { float, i32, float, i32, i32, i64, i32, i32, i32, i32* }
%struct.TYPE_14__ = type { i32, float, i32, i32, i32, i32, %struct.TYPE_13__*, i32, i32, %struct.TYPE_14__* }

@entities = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"_noshadersun\00", align 1
@numBSPDrawSurfaces = common dso_local global i32 0, align 4
@bspDrawSurfaces = common dso_local global %struct.TYPE_15__* null, align 8
@surfaceInfos = common dso_local global %struct.TYPE_12__* null, align 8
@SYS_VRB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Sun: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"Sky: %s\0A\00", align 1
@lights = common dso_local global %struct.TYPE_14__* null, align 8
@LIGHT_Q3A_DEFAULT = common dso_local global i32 0, align 4
@EMIT_POINT = common dso_local global i32 0, align 4
@pointScale = common dso_local global i32 0, align 4
@falloffTolerance = common dso_local global i32 0, align 4
@numPointLights = common dso_local global i32 0, align 4
@defaultLightSubdivide = common dso_local global float 0.000000e+00, align 4
@APPROX_BOUNCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CreateSurfaceLights() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca float, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = load i32*, i32** @entities, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = call i8* @ValueForKey(i32* %11, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i8* %12, i8** %9, align 8
  store i32 0, i32* %1, align 4
  br label %13

13:                                               ; preds = %185, %0
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @numBSPDrawSurfaces, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %188

17:                                               ; preds = %13
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** @bspDrawSurfaces, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i64 %20
  store %struct.TYPE_15__* %21, %struct.TYPE_15__** %2, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** @surfaceInfos, align 8
  %23 = load i32, i32* %1, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i64 %24
  store %struct.TYPE_12__* %25, %struct.TYPE_12__** %3, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  store %struct.TYPE_13__* %28, %struct.TYPE_13__** %4, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 9
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %51

33:                                               ; preds = %17
  %34 = load i8*, i8** %9, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 49
  br i1 %38, label %39, label %51

39:                                               ; preds = %33
  %40 = load i32, i32* @SYS_VRB, align 4
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @Sys_FPrintf(i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 9
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @CreateSunLight(i32* %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 9
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %39, %33, %17
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load float, float* %53, align 8
  %55 = fcmp ogt float %54, 0.000000e+00
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  %57 = load i32, i32* @SYS_VRB, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 8
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @Sys_FPrintf(i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load float, float* %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @CreateSkyLights(i32 %64, float %67, i32 %70, i32 %73, i32 %76)
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store float 0.000000e+00, float* %79, align 8
  br label %80

80:                                               ; preds = %56, %51
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %185

86:                                               ; preds = %80
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 5
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %150

91:                                               ; preds = %86
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @VectorAdd(i32 %94, i32 %97, i32 %98)
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @VectorScale(i32 %100, float 5.000000e-01, i32 %101)
  %103 = call %struct.TYPE_14__* @safe_malloc(i32 48)
  store %struct.TYPE_14__* %103, %struct.TYPE_14__** %5, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = call i32 @memset(%struct.TYPE_14__* %104, i32 0, i32 48)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** @lights, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 9
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %108, align 8
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %109, %struct.TYPE_14__** @lights, align 8
  %110 = load i32, i32* @LIGHT_Q3A_DEFAULT, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 8
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @EMIT_POINT, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @pointScale, align 4
  %120 = mul nsw i32 %118, %119
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  store float 1.000000e+00, float* %124, align 4
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 6
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %127, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @VectorCopy(i32 %128, i32 %131)
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @VectorCopy(i32 %135, i32 %138)
  %140 = load i32, i32* @falloffTolerance, align 4
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 4
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 2
  store i32 %145, i32* %147, align 8
  %148 = load i32, i32* @numPointLights, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* @numPointLights, align 4
  br label %185

150:                                              ; preds = %86
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 2
  %153 = load float, float* %152, align 8
  %154 = fcmp ogt float %153, 0.000000e+00
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 2
  %158 = load float, float* %157, align 8
  store float %158, float* %6, align 4
  br label %161

159:                                              ; preds = %150
  %160 = load float, float* @defaultLightSubdivide, align 4
  store float %160, float* %6, align 4
  br label %161

161:                                              ; preds = %159, %155
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  switch i32 %164, label %183 [
    i32 129, label %165
    i32 128, label %165
    i32 130, label %174
  ]

165:                                              ; preds = %161, %161
  %166 = load i32, i32* %1, align 4
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %171 = load i32, i32* @APPROX_BOUNCE, align 4
  %172 = load float, float* %6, align 4
  %173 = call i32 @RadLightForTriangles(i32 %166, i32 0, i32 %169, %struct.TYPE_13__* %170, i32 %171, float %172, i32* %8)
  br label %184

174:                                              ; preds = %161
  %175 = load i32, i32* %1, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %180 = load i32, i32* @APPROX_BOUNCE, align 4
  %181 = load float, float* %6, align 4
  %182 = call i32 @RadLightForPatch(i32 %175, i32 0, i32 %178, %struct.TYPE_13__* %179, i32 %180, float %181, i32* %8)
  br label %184

183:                                              ; preds = %161
  br label %184

184:                                              ; preds = %183, %174, %165
  br label %185

185:                                              ; preds = %184, %91, %85
  %186 = load i32, i32* %1, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %1, align 4
  br label %13

188:                                              ; preds = %13
  ret void
}

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local i32 @Sys_FPrintf(i32, i8*, i32) #1

declare dso_local i32 @CreateSunLight(i32*) #1

declare dso_local i32 @CreateSkyLights(i32, float, i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorScale(i32, float, i32) #1

declare dso_local %struct.TYPE_14__* @safe_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @RadLightForTriangles(i32, i32, i32, %struct.TYPE_13__*, i32, float, i32*) #1

declare dso_local i32 @RadLightForPatch(i32, i32, i32, %struct.TYPE_13__*, i32, float, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
